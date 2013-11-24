<?php
session_start();
require 'voicemail/messages.php';

if(sizeof($_POST) == 0){
	header('Location: index.php');
} else {
	$m = getMailboxWithAuth($_POST['email'],$_POST['password']);
	if(is_array($m)){
	  	$_SESSION['user'] = $m;
	  	header("Location: index.php");
    } else {
    	$_SESSION['error'] = "Your email and password combination do not match please try again";
    	header("Location: login.php");
    }
}