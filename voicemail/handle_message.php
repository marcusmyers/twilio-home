<?php
require "../Services/Twilio.php";
include "messages.php";
$exten = $_REQUEST['exten'];
$url = $_REQUEST['RecordingUrl'];
$caller_id = $_REQUEST['Caller'];

if (strlen($exten) && strlen($url)) {
    //save recording url and callerid as a message for that mailbox extension
    if(addMessage($exten, $caller_id, $url)){
	$subject = "New voicemail from " . $caller_id;
	switch($exten){
	  case '1000':
	    mail('marcusmyers@gmail.com', $subject, $url, 'FROM: do_not_reply@emoxter.com');
	    break;
	  case '1001':
	    mail('hovestj@gmail.com', $subject, $url, 'FROM: do_not_reply@emoxter.com');
	    break;
	  default:
	    mail('hovestj@gmail.com, marcusmyers@gmail.com', $subject, $url, 'FROM: do_not_reply@emoxter.com');
 	    break;
        }
    }
    $response = new Services_Twilio_Twiml();
    $response->say('Thank you, good bye');
    print $response;
}
?>
