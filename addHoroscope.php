<?php
session_start(); 

  class Horoscope {
    function __construct() {
      include_once('database.php');
      $this->database = new Database();
    }

    public function getHoroscope($chosenDate) {
      $query = $this->database->connection->prepare("SELECT horoscopeSign FROM HoroscopeList
      WHERE(dateFrom <= '$chosenDate') && dateUntil >= '$chosenDate';");

      $query->execute();
      $result = $query->fetchAll();

      if (empty($result)){
        return array("error" => "Detta är ett felmeddelande :)");
      }
      return $result;
    }
  }

  if($_SERVER['REQUEST_METHOD'] == "POST" AND !isset($_SESSION['horoscope']) AND isset($_POST['currentHoroscope'])){
    if($_POST['action'] == 'save') {
    try {
        $chosenDate = $_POST["currentHoroscope"];
        $horoscope = new Horoscope();
        $databaseData = $horoscope->getHoroscope($chosenDate);
        $_SESSION['horoscope'] = $databaseData;
        echo json_encode($databaseData);
        exit;
      }

    catch (Exception $error) {
      http_response_code(500);
      echo json_encode($error->getMessage());
    }
   } 
  }else{
    echo json_encode(false);
  }
  

?>