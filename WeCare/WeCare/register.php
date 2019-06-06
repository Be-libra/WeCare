<?php
if(isset($_POST['submit_register']))
{
	$customer_name=$_POST['customer_name'];
	$email=$_POST['customer_email'];
	$password1=$_POST['customer_password1'];
	$password2=$_POST['customer_password2'];
	$address=$_POST['customer_address'];
	$customer_phone=$_POST['customer_phone'];
	$con=mysqli_connect('localhost','root','','petsitter');

	If($con)
	{
		if($password1==$password2)
		{
		$str="INSERT INTO `customers` (`customer_id`, `Name`, `Email`, `Phone`, `Password`, `Address`) VALUES (NULL, '$customer_name', '$email', '$customer_phone', '$password1', '$address');";
			$t=mysqli_query($con,$str);
			if($t)
			{
				//echo "Successfully Registered!";
				header("location:login.html");
			}
		}
		else
		{
			echo "passwords don't match!";
		}
	}






}
?>