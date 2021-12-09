<?php

session_start();
error_reporting(E_ALL);
ini_set('error_reporting', E_ALL);
ini_set("display_errors", 1);
define('LARAVEL_START', microtime(true));
//include('connect.php');


$name = $_REQUEST['username'];
$pass = $_REQUEST['password'];


$con = mysqli_connect("localhost","root","","bookself");
if (!$con)
{
    die('Could not connect: ' . mysqli_error($con));
}

//mysqli_select_db("crdbdinf_real", $con);


if ($name != "" or $pass != "") {

    $query = "select count(*) as cnt  FROM user WHERE username='$name' and password='$pass'";
    $result = mysqli_query($con,$query) or die('Couldnot execute query' . mysqli_error($con));
    $row = mysqli_fetch_array($result);
    $count = $row['cnt'];
    if ($count > 0) {
        $query = "select * FROM user WHERE username='$name' and password='$pass'";
        $result = mysqli_query($con,$query) or die('Could not execute query' . mysqli_error($con));
        $row = mysqli_fetch_array($result);

        $type = $row['type'];
        $user_id = $row['user_id'];
        $name = $row['username'];
        $status = $row['status'];
        //$user_id=$row['user_id'];
        // if($type=="superadmin" && $status=="1"){
        $login = "adminlog";
        $ip = $_SERVER['REMOTE_ADDR'];
        $user_id = $row['user_id'];
        //login info update
        $timezone_offset = +6; // BD central time (gmt+6) for me
        $last_login = gmdate('d-m-Y H:i:s', time() + $timezone_offset * 60 * 60);
        $query2 = "UPDATE `user` SET `last_login` = '$last_login',
            `ip` = '$ip',
            `log_count` = log_count+1 WHERE `user`.`user_id` ='$user_id' LIMIT 1 ;
            ";
        $result2 = mysqli_query($con,$query2) or die('Couldnot execute query' . mysqli_error($con));
        $row = mysqli_fetch_array($result);
        $_SESSION['user_id'] = $user_id;
        $_SESSION['login'] = $login;
        $_SESSION['name'] = $name;
        $_SESSION['type'] = $type;
        print("<script>window.location='superadmin/index.php'</script>");


        //  }
        //end client
    }//count > 0
    //echo"$is_confirmed";
    if ($count == 0) {

        print("<script>window.alert('Wrong UserId/Password.Please try again...');</script>");
        print("<script>window.location='index.html'</script>");
    }
}  //
print("<script>window.alert('Please Insert User Name and Password');</script>");
print("<script>window.location='index.html'</script>");
?>