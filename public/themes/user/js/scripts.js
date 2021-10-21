const rootDir = 'http://localhost/mabro';
const baseUrl = rootDir;


$(document).ready(function($) {

	const bvnButton = $('#btn-verify-bvn');
	const bvnInput = $('#bvn');
	const accountNameInput = $('#account_name');
	// let isOnline = window.navigator.onLine;
	isOnline();
	bvnButton.on('click',function () {
		let inputVal = bvnInput.val();
		$(this).html('<i class="ft-settings font-medium-1 spinner white align-middle"></i> Verify BVN');
		$(this).prop('disabled', true);
		$.post(baseUrl + '/settings/verify-bvn',
			{
				bvn: inputVal
			},
			function(data, status){
				bvnButton.prop('disabled', false);
				bvnButton.html('Verify BVN');

				if(status === 'success' && data.status === true){
					accountNameInput.val(data.data.first_name + ' ' + data.data.last_name);
					displaySuccess('bvn', 'Your BVN has been verified')
				}else{
					displayErrorInput('bvn', data.message);
				}
			});

		return false;
	});



	const accountButton = $('#btn-add-account');
	const accountInput = $('#account_number');
	const bankCode = $('#bank_code');
	const bankName = $('#bank_name');

	accountButton.on('click',function () {
		let inputVal = accountInput.val();
		$(this).prop('disabled', true);
		$(this).html('<i class="ft-settings font-medium-1 spinner white align-middle"></i> Save Changes');
		$.post(baseUrl + '/settings/add-account-number',
			{
				account_number: inputVal,
				bank_code: bankCode.val(),
				account_name: $('#account_name').val(),
				bvn: $('#bvn').val(),
			},
			function(data, status){
				accountButton.prop('disabled', false);
				if(status === 'success' && data.status === true){
					accountButton.html('Save Changes');

					displaySuccess('account_number', 'Account details updated successfully')
				}else{
					displayErrorInput('account_number', data.message);
				}
			});

		return false;
	});
});

function displayErrorInput(input, error) {
	let inputField = $('#' + input);
	let inputFieldError = $('#' + input + '-e');

	inputField.css('border', '1px solid red');
	inputFieldError.css('color', 'red');
	inputFieldError.html(error);
	toastr.warning(error);
}

function displaySuccess(input, success) {
	let inputField = $('#' + input);
	inputField.css('border', '1px solid green');
	if(success != null || success !== '') {
		toastr.success(success);
	}
}



let lastId = 'glo';

function displayDataPlan(dataPlans) {
	let htmlDataPlans = '<option value="">---Select data plan---</option>';
	for (let i = 0; i < dataPlans.length; i++) {
		let planObj = dataPlans[i];
		htmlDataPlans += "<option value='"+planObj.network+"-"+i+"-"+planObj.id+"'>";
		htmlDataPlans += planObj.name;
		htmlDataPlans += "</option>";
	}
	mainDataPlans.html(htmlDataPlans);
}

function getNetworkProvider(id) {
		document.getElementById('Change-Image').src = document.getElementById(id).src;
		let imageText = document.getElementById(id).alt;
		document.getElementById('Change-Text').innerHTML = imageText + " Recharge (E-Top up)";

		$('.p-1red').removeClass('selected-border');
		$('#'+id).parent().addClass('selected-border');

		let mobileNetwork  = imageText.toLowerCase().replace(' ', '');
		network.val(mobileNetwork);

		let mobileNetworkBig = mobileNetwork.toUpperCase();
		let dataPlans = data[mobileNetworkBig];
		displayDataPlan(dataPlans);
		lastId = id;
	}







$(document).ready(function(){

	network = $('#network');
	let deviceWidth = $(window).width();
	const mainInputSection = $('#main-input-section');
	const reflectionSection = $('#reflection-section');
	const closeReflection = $('#close-reflection');
	if (deviceWidth < 768) {
		reflectionSection.hide();
	}
		$('#switch-section').click(function () {
		mainInputSection.addClass('overlay-3');
		reflectionSection.removeClass('overlay-3');
		closeReflection.show();
		if (deviceWidth < 768) {
			mainInputSection.hide();
			reflectionSection.show();
		}
	});
	closeReflection.click(function () {
		mainInputSection.removeClass('overlay-3');
		reflectionSection.addClass('overlay-3');
		closeReflection.hide();
		if (deviceWidth < 768) {
			mainInputSection.show();
			reflectionSection.hide();
		}
	});

	const mainAmount = $('#main-amount');
	const reflectionAmount = $('#reflection-amount');
	const reflectionButtonAmount = $('#reflection-button-amount');
	const amount = $('#amount');

	const mainPhoneNumber = $('#main-phone-number');
	const reflectionPhoneNumber = $('#reflection-phone-number');
	const phoneNumber = $('#phone_number');

	const mainSaveBeneficiary = $('#main-save-beneficiary');
	const beneficiary = $('#beneficiary');


	mainAmount.keyup(function () {
		let value = parseInt($(this).val());
		if (Number.isInteger(value)) {
			amount.val(value);
			let n = new Number(value) ;

			let price = n.toLocaleString("en-GB", n);
			reflectionAmount.text(price);
			reflectionButtonAmount.text(price);
		}
	});
	mainPhoneNumber.keyup(function () {
		let value = $(this).val();
		if (isValidPhoneNumber(value)) {
			phoneNumber.val(value);
			reflectionPhoneNumber.text(value);
		} else  {
			reflectionPhoneNumber.text('0xxxxxxxxxx');
			phoneNumber.val('');
		}

	});
	mainSaveBeneficiary.click(function () {
		if ($(this).is(":checked")) {
			beneficiary.val('1');
		}else{
			beneficiary.val('0');
		}
	});

	mainDataPlans = $('#main-data-plans');
	let reflectionDataPlans = $('#reflection-data-plans');
	let dataId = $('#data_id');

	mainDataPlans.change(function () {
		let value = $(this).val();
		if (value !== '') {
			let splitValue = value.split('-');
			let dataObj = data[splitValue[0]][splitValue[1]];
			reflectionDataPlans.html(dataObj.name);
			let n = new Number(dataObj.price) ;

			let price = n.toLocaleString("en-GB", n);
			reflectionAmount.html(price);

			amount.val(dataObj.price);
			dataId.val(dataObj.data_id);
			reflectionButtonAmount.text(price);
		}
	});

	const borderDiv = $('.border-div');
	const mainSelectCompany = $('#main-select-company');
	const reflectionLogo = $('#reflection-logo');
	const reflectionLogoText = $('#reflection-logo-text');
	const mainMeterNumber = $('#main-meter-number');
	const reflectionMeterNumber = $('#reflection-meter-number');
	const reflectionAccountName = $('#reflection-account-name');
	const meterNumber = $('#meter_number');
	const service = $('#service');
	const type = $('#type');
	mainPackage = $('#main-package');
	const reflectionPackage = $('#reflection-package');
	const errorMeterNumber = $('#error-meter-number');

	borderDiv.click(function () {
		borderDiv.removeClass('selected-border');
		$(this).addClass('selected-border');
		let image = $(this).find('img');
		let imageAlt = image.attr('alt');
		let imageSrc = image.attr('src');
		let imageId = image.attr('id');

		service.val(imageId);
		mainSelectCompany.val(imageId);
		reflectionLogo.attr('src', imageSrc);
		reflectionLogoText.text(imageAlt);


		if (tv) {
			displayTvPackages(tvJson[imageId.toUpperCase()]);
		}

	});


	mainSelectCompany.change(function () {
			let value = $(this).val();
			$('#'+value).parent().click();
	});
	mainPackage.change(function () {
		let value = $(this).val();
		reflectionPackage.text(value)
		if (tv) {
			let index = $(this)[0].selectedIndex - 1;
			if (index !== -1) {
				let amount = tvJson[mainSelectCompany.val().toUpperCase()][index].price;
				mainAmount.prop('disabled', true);

				let n = new Number(amount) ;

				let price = n.toLocaleString("en-GB", n);
				mainAmount.val('₦ ' + price)
				reflectionAmount.text(price);
				reflectionButtonAmount.text(price);
			}

			$('#bill_code').val(value);
		} else {
			type.val(value);
		}
	});
	mainMeterNumber.keyup(function () {
		let value = parseInt($(this).val());
		if (Number.isInteger(value)) {
			meterNumber.val(value);
			$('#smart_card_number').val(value)
			reflectionMeterNumber.text(value);
		} else {
			reflectionMeterNumber.text('xxxxxxxxx');
		}
	});
	let verifyCustomer = false;
	mainMeterNumber.focusout(function () {
		if (tv) {
			$.post(rootDir + "/bill-services/verify-customer",
				{
					meter_number: $(this).val(),
					service: service.val(),
					type: type.val()
				},
				function (data, status) {
					verifyFunction(data, status);
				});
		} else {

			$.post(rootDir + "/bill-services/verify-customer",
				{
					smart_card_number: $(this).val(),
					service: service.val(),
					type: type.val()
				},
				function (data, status) {

					verifyFunction(data, status);
				});
		}
		function verifyFunction(data, status) {
			if(status === 'success' && data.status === true){
				reflectionAccountName.text(data.data.customer_name);
				verifyCustomer = true;
				errorMeterNumber.text('');
				mainMeterNumber.attr('style', 'border: 1px solid green');
			}else if (status === 'success'){
				verifyCustomer = false;
				errorMeterNumber.text(data.message);
				toastr.warning(data.message, "Error!");
				mainMeterNumber.attr('style', 'border: 1px solid red');
			} else {
				toastr.warning('No Internet connection detected', "Error!");
				mainMeterNumber.attr('style', 'border: 1px solid red');
			}
		}
	});
});
function isValidPhoneNumber(str) {
	var patt = new RegExp(/^\+?([2][3][4])\)?[789][01][-. ]?([1-9]{1})[-. ]?([0-9]{7})$/);
	var patt2 = new RegExp(/^\+?([0])\)?[789][01][-. ]?([1-9]{1})[-. ]?([0-9]{7})$/);
	return patt2.test(str) || patt.test(str);
}
function displayTvPackages(tv) {

	let html = '<option value="">---Select '+tv[0].name+' Package---</option>';
	for (let i = 0; i < tv.length; i++) {
		// let planObj = dataPlans[i];
		html += "<option value='"+tv[i].bill_code+"'>";
		html += tv[i].package;
		html += "</option>";
	}
	mainPackage.html(html);
}
function dnd(data) {
	console.log(data)
}

function isOnline() {
	// $.getScript("http://maps.google.com/maps/api/js?v=3.2&sensor=false", function() {
	// 	alert("Script loaded but not necessarily executed.");
	// });
// 	var online;
// // check whether this function works (online only)
// 	try {
// 		var x = google.maps.MapTypeId.TERRAIN;
// 		online = true;
// 	} catch (e) {
// 		online = false;
// 	}
// 	console.log(online);
	// $.ajax({
	// 	url: "http://www.google.com",
	// 	context: document.body,
	// 	error: function(jqXHR, exception) {
	// 		alert('Offline')
	// 	},
	// 	success: function() {
	// 		alert('Online')
	// 	}
	// });
	// $.get(rootDir + '/account/internet',
	// 	{
	//
	// 	},
	// 	function(data, status){
	// 		toastr.warning('No internet connection')
	// 		if(status === 'success' ){
	// 			toastr.success('Internet connection is availible')
	// 		}else{
	// 			toastr.warning('No internet connection')
	// 		}
	// 	});
}

$(document).ready(function () {
	const monnifyFundImage = $('#monnify-fund-image');
	const paystackFundImage = $('#paystack-fund-image');
	const fundAccountForm = $('#fund-account-form');
	const responseMessage = $('.response-message');

	monnifyFundImage.click(function () {
		$(this).addClass('selected-border');
		paystackFundImage.removeClass('selected-border');
		fundAccountForm.attr('action', rootDir + '/fund-account/monnify')
	});
	paystackFundImage.click(function () {
		$(this).addClass('selected-border');
		monnifyFundImage.removeClass('selected-border');
		fundAccountForm.attr('action', rootDir + '/fund-account/paystack')
	});
	$('#close-response-message').click(function () {
		responseMessage.addClass('invisible')
	});
});
$(document).ready(function () {
	$('#ft-menu').click(function () {
		$('#app-sidebar').show();
	});
})


