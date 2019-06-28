<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "chatroom";

//connect database

$con = mysqli_connect($servername, $username, $password, $database);

//check connection 

if(!$con)
{
	die("Fail to connect". mysqli_connect_error());
}

?>