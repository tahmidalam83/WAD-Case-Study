<?php
$dbname="bookself";
//$con = mysql_connect("localhost","crdbdinf_real","real123456");
$con=mysqli_connect("localhost","root","",$dbname);
if (!$con)
{
    die('Could not connect: ' . mysqli_error($con));
}

//mysql_select_db("crdbdinf_real", $con);

//mysql_query("source dimehous_software.sql");

?> 