<?php

if(!isset($_POST)){
	header('Location: index.php');
} else {
	var_dump($_POST);
	exit();
}