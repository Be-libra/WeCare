<?php
if(isset($_POST['login']))
{
	$email_l=$_POST['email'];
	$password_l=$_POST['password'];
	//$customer_id=$_POST['customer_id'];
	//echo $email_l."<br>";
	//echo $password_l;
	$con=mysqli_connect('localhost','root','','petsitter');

	if($con)
	{
		$t=mysqli_query($con,"select * from customers where Email='$email_l'");
		if($t)
		{
			//session_start();
			//$_SESSION('customer_id')=$customer_id;
			//echo "kumar ";
			$res=mysqli_fetch_array($t);
			if($res['Email']==$email_l and $res['Password']==$password_l)
			{
				echo "Welcome ".$res['Name'];
				session_start();
				$_SESSION['customer_id']=$res['customer_id'];
				echo "<br>".$_SESSION['customer_id'];
				//session_start()
				//$_SESSION['customername']=$res['Name'];
				//header('location:welcome.php');
			}
			else
			{
				echo "incorrect Email Id or Password.";
			}
		}
		else
		{
			echo "<br><br><br>kumar mg";
		}
	}
}