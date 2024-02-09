<?php
$host = "Localhost";
$dbname = "animedb";
$user = "root";
$pwd = "root";

$db = new mysqli($host, $user, $pwd, $dbname);

if($db->connect_errno)
{
    die("Error". $mysqli->connect_error);
}

?>