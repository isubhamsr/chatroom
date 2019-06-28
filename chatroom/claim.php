<?php
$room = $_POST['room'];

//chacking the room size

if(strlen($room)>20 or strlen($room)<2)
{
	$message = "Please choose a name between 2 to 20 characters";
	echo '<script language="javascript">';
	echo 'alert("'.$message.'");';
	echo 'window.location="http://localhost/chatroom";';
	echo '</script>';
}

//chacking the room is an aphanumetic

else if(!ctype_alnum($room))
{
	$message = "Please choose an aphanumetic room name";
	echo '<script language="javascript">';
	echo 'alert("'.$message.'");';
	echo 'window.location="http://localhost/chatroom";';
	echo '</script>';
}

else 
{
	//connect to database
	include 'db_connect.php';
}

//check if room already exists

$sql = "SELECT * FROM `rooms` WHERE roomname = '$room'";
$result = mysqli_query($con, $sql); 
if($result)
{
	if(mysqli_num_rows($result)>0)
	{
		$message = "Please choose a diffarent room name. This room is already claimed";
		echo '<script language="javascript">';
		echo 'alert("'.$message.'");';
		echo 'window.location="http://localhost/chatroom";';
		echo '</script>';
	}
	else
	{
		$sql1 = "INSERT INTO `rooms`(`roomname`, `stime`) VALUES ('$room', CURRENT_TIMESTAMP)";
		if(mysqli_query($con, $sql1))
		{
			$message = "Your room is ready and you can chat now!";
			echo '<script language="javascript">';
			echo 'alert("'.$message.'");';
			echo 'window.location="http://localhost/chatroom/rooms.php?roomname=' .$room. '";';
			echo '</script>';
		}
	}
}	
else 
{
	echo "Error: ". mysqli_error($con);
}

?>