<?php
session_start();
require '/voicemail/messages.php';

if(sizeof($_POST) == 0){
	header('Location: index.php');
} else {
	$m = getMailboxWithAuth($_POST['email'],$_POST['password']);
	$_SESSION['user'] = $m;
	header("Location: index.php");
}