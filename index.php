<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "ajaxpractice";

// Create connection
 $conn = new mysqli($servername, $username, $password,$dbname);
?>

<?php
if(isset($_POST['submit'])){
	$files="";
    if(count($_FILES['upload']['name']) > 0){
        //Loop through each file
        for($i=0; $i<count($_FILES['upload']['name']); $i++) {
          //Get the temp file path
            $tmpFilePath = $_FILES['upload']['tmp_name'][$i];

            //Make sure we have a filepath
            if($tmpFilePath != ""){
            
                //save the filename
                $shortname = $_FILES['upload']['name'][$i];

                //save the url and the file
                $filePath = "uploaded/" . date('d-m-Y-H-i-s').'-'.$_FILES['upload']['name'][$i];

                //Upload the file into the temp dir
                if(move_uploaded_file($tmpFilePath, $filePath)) {

                    // $files[] = $filePath;
                    $files .="$filePath;";
                    //insert into db 
                    //use $shortname for the filename
                    //use $filePath for the relative url to the file

                }
              }
        }


    }
   
     // $value=json_encode($files);
    // $value=serialize($files);
     // echo '<pre>';
     // var_dump($file);
     // echo '<br>';

     // $images = explode(";", $file);
     // echo '<pre>';
     // print_r($images);

     // print_r($value);
     // exit();
     $sql="INSERT INTO image_uploads (image)
			VALUES ('$files')";
	if ($conn->query($sql) === TRUE) {
	    // echo $value;
	} else {
	    echo "Error: " . $sql . "<br>" . $conn->error;
	}

    //show success message
    // echo "<h1>Uploaded:</h1>";    
    // if(is_array($files)){
    //     echo "<ul>";
    //     foreach($files as $file){
    //         echo "<li>$file</li>";
    //     }
    //     echo "</ul>";
    // }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Daynamic Feild add And Operation </title>
	<link rel="stylesheet" href="css/bootstrap.min.css">
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-4"></div>
			<div class="col-md-6">
				<form action="" enctype="multipart/form-data" method="post">
					<div class="form-group">
					    <label for="exampleInputEmail1">Email address</label>
					    <input id='upload' name="upload[]" type="file" multiple class="form-control" >
					    <input id='upload' name="upload[]" type="file" multiple class="form-control" >
					    <input id='upload' name="upload[]" type="file" multiple class="form-control" >
					</div>
					<button type="submit" name="submit" class="btn btn-primary">Submit</button>
				</form>
			</div>
			<div class="col-md-4 "></div>
		</div>
	</div>
	<div class="container">
		<div class="row">
			<?php
				$sql="SELECT image FROM image_uploads WHERE id=7";
				$result = $conn->query($sql);
				$row = $result->fetch_assoc();
				// $row=json_decode($row);
				// print_r($row)
				// $data=(string)$row;
				$allimages=explode(";",$row['image']);
				// print_r(unserialize($row));
				// print_r($allimages);
			?>
			<?php
			for ($i = 0; $i <count($allimages)-1; $i++) {
			?>
			<div class="col-md-4">
				<img height="200px" width="300px" src="<?php echo $allimages[$i]?>" alt="">
			</div>
			<?php
				}
			?>
		</div>
	</div>
	<script src="js/jquery.min.js" type="text/javascript" ></script>
	
</body>
</html>