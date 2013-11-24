<?php

header("content-type: text/xml");
echo "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n";
?>
<Response>
  <Gather numDigits="1" action="handle-key.php" method="POST">
    <Say>
	To speak to Jodi press 1. 
	To speak to Mark press 2.
	To just leave a message press 3.
	Press any other key to start over.
    </Say>
  </Gather>
</Response>
