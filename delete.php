<?php
session_start();
require 'voicemail/messages.php';

if(!isset($_SESSION['user'])){
	header('Location: login.php');
} else {
	updateMessageFlag($_GET['id'],1);
	if($_GET['r']){
	  	header("Location: family.php");
    } else {
    	header("Location: index.php");
    }
}