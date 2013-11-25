<?php
// if the caller pressed anything but 1 send them back
if($_REQUEST['Digits'] != '1' && $_REQUEST['Digits'] != '2' && $_REQUEST['Digits'] != '3') {
  header("Location: 1.php");
  die;
}
// the user pressed 1, connect the call to 310-555-1212
header("content-type: text/xml");
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
?>
<Response>
<?php if ($_REQUEST['Digits'] == '1') { ?>
  <?php if (date('G') < 17 || date('G') > 22){ ?>
  <Redirect method="GET">http://openvbx.emoxter.com/voicemail/leave_a_message.php?exten=1001</Redirect>
  <?php } else { ?>
  <Dial>+14197222855</Dial>
  <Say>The call failed or the remote party hung up. Goodbye.</Say>
  <?php  } ?>
<?php } elseif ($_REQUEST['Digits'] == '2') { ?>
  <?php if (date('G') < 17 || date('G') > 22){ ?>
  <Redirect method="GET">http://openvbx.emoxter.com/voicemail/leave_a_message.php?exten=1001</Redirect>
  <?php } else { ?>
  <Dial>+14199574216</Dial>
  <Say>The call failed or the remote party hung up. Goodbye.</Say>
  <?php  } ?>
<?php } elseif ($_REQUEST['Digits'] == '3') { ?>
  <Redirect method="GET">http://openvbx.emoxter.com/voicemail/leave_a_message.php?exten=1234</Redirect>
<?php } ?>
</Response>
