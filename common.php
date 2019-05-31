<?php
/*
    Name: Mark Theeranantachai
    Date: May 30, 2019
    Section: CSE 154 AF
    A PHP common function for CP5 for connecting to the database.
*/

  /**
   * Returns a PDO object connected to the database. If a PDOException is thrown when
   * attempting to connect to the database, responds with a 503 Service Unavailable 
   * error.
   * @return {PDO} connected to the database upon a succesful connection.
   */
  function get_PDO() {
    # Variables for connections to the database.
    $host = "localhost";
    $port = "3306";
    $user = "tuna";
    $password = "omelet";
    $dbname = "cse154";

    # Make a data source string that will be used in creating the PDO object
    $ds = "mysql:host={$host}:{$port};dbname={$dbname};charset=utf8";

    try {
      $db = new PDO($ds, $user, $password);
      $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      return $db;
    } catch (PDOException $ex) {
      header("HTTP/1.1 503 Service Unavailable");
      header("Content-type: text/plain");
      die("Can not connect to the database. Please try again later.");
    }
  }
?>
