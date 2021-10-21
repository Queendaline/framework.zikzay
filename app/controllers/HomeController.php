<?php
namespace Zikzay\Controller;


use Zikzay\Core\Controller;
use Zikzay\Lib\Util;
use Zikzay\Model\Home;
use Zikzay\Model\Admin;
use Zikzay\Model\Music;
use Zikzay\Core\Session;

class HomeController extends Controller
{

    public function __construct()
    {
    }

    public function index () 
    {
        $this->render("test_page");
    }


    public function hello(){

        $this->render("test_page", null, false, false, false);
        echo "Hello World this is the new framework";

    }

    public function loadClass(){

        $this->render("class");
    }

    public function login(){
    

        $this->render("musix_site.login");
    }

    public function register(){

        $this->render("musix_site.registration");
    }

    public function upload(){
        $this->render("musix_site.upload");
    }

    public function home(){
        $data = Music::all();

        $this->render("musix_site.home", ["data"=>$data]);
    }

    public function registration(){
        $admin = new Admin();

        $admin->name = $_POST['name'];
        $admin->email = $_POST['email'];
        $admin->phone_no = $_POST['phone'];
        $admin->password = "password";

        // dnd($admin);
        $id = $admin->save();
          
         
        if(is_numeric($id)){
            Session::set("id", $id);
            Util::redirect("home.home");
        }
        else{

        }

    }

    public function login_verify(){
        $user = Admin::search("email", $_POST['email'], null);
        if($user == null){
            Util::redirect("home.login");
        }else{
            if($user->password == $_POST['password']){
                 Session::set("id", $user->id);
                Util::redirect("home.upload");
            }
        }
    }

    public function upload_audio(){

        $target_dir = UPLOAD_PATH;
        $target_file = $target_dir . basename($_FILES["audio"]["name"]);
        $uploadOk = 1;
        $fileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));

        // Check if file already exists
        if (file_exists($target_file)) {
            echo "Sorry, file already exists.";
            $uploadOk = 0;
        }

        // Check file size
        if ($_FILES["audio"]["size"] > 500000000000000000) {
            echo "Sorry, your file is too large.";
            $uploadOk = 0;
        }

        // Allow certain file formats
        if($fileType != "mp3" ) {
            echo "Sorry, only mp3 is allowed";
            $uploadOk = 0;
        }

        // Check if $uploadOk is set to 0 by an error
        if ($uploadOk == 0) {
            echo "Sorry, your file was not uploaded.";
            } else {
            if (move_uploaded_file($_FILES["audio"]["tmp_name"], $target_file)) {
                echo "The file ". basename( $_FILES["audio"]["name"]). " has been uploaded.";
            } else {
                echo "Sorry, there was an error uploading your file.";
            }
        }
        
    }


    public function processUpload(){

        // dnd(Session::get("id"));

        if(Session::get("id") != null){
        $music = new Music();

        $music->musician = $_POST['musician'];
        $music->genre = $_POST['genre'];
        $music->name = UPLOAD_PATH. basename($_FILES["audio"]["name"]);
        $music->uploaded = Session::get("id");
        $this->upload_audio();
        $music->save();
            $this->upload()   ;
        }else{
            Util.redirect("home.login");
        }
    }

   

}