<?php

    

  ?>

<form action="processUpload" method="POST" enctype="multipart/form-data">

<input type="text" name="musician" placeholder="Artist"/><br><br>
<input type="text" name="genre" placeholder="Genre"/><br><br>
<input type="file" name="audio" accept=".mp3" required = "required"/><br><br>
<button type="submit"> upload </button>

</form>