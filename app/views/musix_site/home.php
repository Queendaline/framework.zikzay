<?php

    echo "This is the homePage";

    for($i = 0; $i < count($data); $i++){

?>

<p>
    <?php
    
        $NameArray = explode("/",$data[$i]->name);
        echo $NameArray[count($NameArray)-1]." by ". $data[$i]->musician;

    ?>
</p>
<audio controls>
  <source src="<?php echo SR."/public/assets/upload/".$NameArray[count($NameArray)-1]?>" type="audio/mpeg">
</audio>

<a href="<?=SR."/public/assets/upload/".$NameArray[count($NameArray)-1]?>"><button >Download</button></a>


<?php

    }
    ?>