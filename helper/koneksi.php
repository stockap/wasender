<?php

$host = "localhost";
$username = "root";
$password = "";
$db = "db_wasender";
error_reporting(0);
$koneksi = mysqli_connect($host, $username, $password, $db) or die("GAGAL");

$base_url = "http://localhost/wasender/";
date_default_timezone_set('Asia/Jakarta');
