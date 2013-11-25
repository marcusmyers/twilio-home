<?php session_start(); 
if(!isset($_SESSION['user'])){
  header('Location: login.php');
} else {
  $user = $_SESSION['user'];
}

require 'voicemail/messages.php';
?>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Voicemail Box</title>

    <!-- Bootstrap core CSS -->
    <link href="/css/bootstrap.css" rel="stylesheet">
    <link href="/css/main.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
  </head>

  <body>

    <div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="#">Voicemail Box</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="/index.php">Home</a></li>
            <li><a href="/family.php">House VMs</a></li>
          </ul>
          <ul class="nav navbar-nav navbar-right">
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown"><?php echo $user['desc']; ?> <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="/logout.php">Logout</a></li>
              </ul>
            </li>
          </ul>
        </div><!--/.nav-collapse -->
      </div>
    </div>

    <div class="container">
      <div class="page-header">
        <h1>Personal Voicemail <small></small></h1>
      </div>


      <?php
      if(isset($_SESSION['info'])){
        echo '<div class="alert alert-success">'.$_SESSION['info'].'</div>';
        unset($_SESSION['info']);
      }
      ?>

    <table class="table table-striped">
      <thead>
        <tr>
          <th>Date</th>
          <th>From</th>
          <th>Message | Delete</th>
        </tr>
      </thead>
      <tbody>
    <?php

    $mids = getMessages($user['exten']);
    foreach($mids as $id){
      $mess = getMessage($id);
      echo "<tr><td>".$mess['date']."</td><td>".$mess['from']."</td><td><audio controls src='".$mess['url']."' preload='auto'></audio>&nbsp;&nbsp;<a href='/delete.php?id=".$mess['id']."' class='btn btn-danger'><i class='glyphicon glyphicon-remove'></i></a></td></tr>\n";
    }

    ?>
      </tbody>
    </table>

    </div> <!-- /container -->


    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src='http://code.jquery.com/jquery-1.10.2.min.js'></script>
    <script src='/js/bootstrap.min.js'></script>
  </body>
</html>


