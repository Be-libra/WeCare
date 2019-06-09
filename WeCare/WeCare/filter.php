<?php 
 	$pet1='cat';
 	$pet2='';
 	$con=mysqli_connect('localhost','root','','petsitter');
 	if($con){
 		if($pet2!=''){
 		$str="SELECT * FROM caretaker where (expertise_pet1='$pet1' or expertise_pet2='$pet1') and (expertise_pet1='$pet2' or expertise_pet2='$pet2') order by experience;";?>
 			<h1><?php echo $pet1.'&'.$pet2 ; ?></h1>
 	<?php
 	}
 		else{
 			$str="SELECT * FROM caretaker where (expertise_pet1='$pet1' or expertise_pet2='$pet1') or (expertise_pet1='$pet1' or expertise_pet2='$pet1') order by experience ;";?>
 			<h1><?php echo $pet1; ?></h1>
 		<?php
 		}

 		$z=mysqli_query($con,$str);
 		{
 			if($z){
 				//echo "hello guys";
 					?>
 					<!DOCTYPE html>
 					<html>
 					<head>
 						<title></title>
 						<link rel="stylesheet" type="text/css" href="filter.css">
 					</head>
 					<body>
 						<div class="view">
 						<?php	while($r=mysqli_fetch_array($z)){
 					?>
		 					<div>
							 	
							 		<img src="old_women1.jpg" width="100%">
							 	
							 	<div class="text_info">
							 		<h2><?php echo $r['Name']; ?></h2>
							 		<h5><?php echo $r['emailid']; ?></h5>
							 		<h5><?php echo 'Year of Experience :'.$r['experience'] ?></h5>
							 	</div>
					 		</div>
					
					 		<?php
 							} ?>
 			 			</div>

			 			
 					</body>
 					</html>
 					
<?php
			 		
 }
}
}
 ?>