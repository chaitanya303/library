<?php
//local database
$servername = 'localhost';
$username = 'root';
$password = '';
$db_name = 'library';
$con = mysqli_connect($servername, $username, $password, $db_name);
if (!$con) {
    die('connection to this database failed due to ' . mysqli_connect_error());
}
