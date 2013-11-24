<?php
require "../Services/Twilio.php";
//DB Constants - Change to your settings
$db_host='localhost';
$db_name='vbx';
$db_user='vmbox';
$db_passwd='new*data';

$caller_id = $_REQUEST['Caller'];

mysql_connect($db_host, $db_user, $db_passwd)
    or die('Could not connect: ' . mysql_error());

mysql_select_db($db_name) or die('Could not select database');

//make sure inputs are db safe
$caller_id = mysql_real_escape_string($caller_id);
// Performing SQL query

$query = sprintf("insert into log ( call_from, logged_at) values ('%s',now())", $caller_id);

mysql_query($query) or die('Query failed: ' . mysql_error());
$id = mysql_insert_id();
mysql_close();

