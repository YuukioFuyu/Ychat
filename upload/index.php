<?php include "../lib/custom.php"; ?>
<!DOCTYPE html>
<html>
<head>
	<title>Yuuki0 Chat</title>
	<link rel="icon" href="../favicon.png" />
	<link rel="apple-touch-icon" href="../favicon.png" />
	<style>
		body {
			background-color:#000;
			color:#fff;
			display: flex;
			justify-content: center;
			align-items: center;
			flex-direction: column;
		}
	</style>
</head>
<body style="padding-top:20%;">
	<?php if (isset($_GET['error'])): ?>
		<p><?php echo $_GET['error']; ?></p>
	<?php endif ?>
     <form action="upload.php"
           method="post"
           enctype="multipart/form-data">

           <input type="file" 
                  name="my_image">

           <input type="submit" 
                  name="submit"
                  value="Upload">
     	
	 </form>
	 <p align="center" style="padding-left:50px;padding-right:50px;">Arahkan Kursor diatas Gambar kemudian Klik Kanan pada Tombol di Mouse lalu pilih <i>Copy Image Location</i> dan Pastekan di Forum Chat dengan tambahan Format seperti berikut :<br>
		<b>[img]http://urlgambarmu.jpg[/img]</b></p>

     <?php 
          $sql = "SELECT * FROM ychat_images ORDER BY id DESC";
		  $res = mysqli_query($dbimg, $sql);

          if (mysqli_num_rows($res) > 0) {
          	while ($images = mysqli_fetch_assoc($res)) {  ?>
             
             <div class="alb">
             	<img height="500px" src="Images/<?=$images['image_url']?>">
             </div>
          		
    <?php } }?>
</body>
</html>