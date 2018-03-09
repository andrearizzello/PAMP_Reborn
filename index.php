<?php
$servername = "db";
$username = "root";
$password = "admin";

try {
	    $conn = new PDO("mysql:host=$servername;dbname=defDB", $username, $password);
		    echo "Connected successfully";
}
catch(PDOException $e)
{
	    echo "Connection failed: " . $e->getMessage();
}
