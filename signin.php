<?php

if(sizeof($_POST) == 0){
	header('Location: index.php');
} else {
	var_dump($_POST);
	exit();
}