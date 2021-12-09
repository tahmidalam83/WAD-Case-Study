<?php

@session_start(); # NOTE THE SESSION START
$_SESSION = array(); 
session_unset();
session_destroy();


//echo "Logged Out !";
// Note: Putting echo "Logged Out !" before sending the header could result in a "Headers already sent" warning and won't redirect your page to the login page - pointed out by @Treur - I didn't spot that one.. Thanks...
header("Location:index.html");
exit(); # NOTE THE EXIT



// if the user is logged in, unset the session

//if (isset($_SESSION['login'])) {

//    unset($_SESSION['login']);
//     session_destroy();


//}



// now that the user is logged out,

// go to login page

header('Location: index.html');

?>