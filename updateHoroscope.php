<?php
include './addHoroscope.php';

  if($_SERVER['REQUEST_METHOD'] == "POST" AND ($_POST['action'] == 'update')){
    $date = $_POST['currentHoroscope'];
    $horoscope = new Horoscope();
    $newHoro = $horoscope->getHoroscope($date);

    if (isset($_SESSION['horoscope'])) {
      unset($_SESSION['horoscope']);
      $_SESSION['horoscope'] = $newHoro;
      exit;
    } else {
      echo json_encode(false);
    }
  } else {
      echo json_encode(false);
  }
  

?>