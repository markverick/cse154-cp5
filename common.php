<?php
  /**
   * CSE 154
   * common.php starter code for CP5. You may add more "common" functions to this if you would 
   * like, but this will help get started with getting your PDO connection (more information 
   * in Friday's lecture and its reading).
   *
   * TODO: Implement the 2 TODOS to use this common.php file for CP5:
   * 1. Fill in server variables found on MAMP home page to connect PDO to database
   * 2. Handle a DB connection error with a HTTP/1.1 503 Service Unavailable error
   *
   * Remember to use include("common.php") at the top of any PHP file that wants to 
   * use these function(s)!
   */

  /**
   * Returns a PDO object connected to the database. If a PDOException is thrown when
   * attempting to connect to the database, responds with a 503 Service Unavailable 
   * error.
   * @return {PDO} connected to the database upon a succesful connection.
   */
  function get_PDO() {
    # Variables for connections to the database.
    # TODO: Replace with your server (e.g. MAMP) variables as shown in lecture on Friday.
    $host = "localhost";     # fill in with server name (e.g. localhost)
    $port = "3306";      # fill in with a port if necessary (will be different mac/pc)
    $user = "tuna";     # fill in with user name
    $password = "omelet"; # fill in with password (will be different mac/pc)
    $dbname = "cse154";   # fill in with db name containing your SQL tables

    # Make a data source string that will be used in creating the PDO object
    $ds = "mysql:host={$host}:{$port};dbname={$dbname};charset=utf8";

    try {
      $db = new PDO($ds, $user, $password);
      $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
      return $db;
    } catch (PDOException $ex) {
      # An error may occur here if the db connection is down (it happens), the connection variables
      # are incorrect for the machine this PHP file is being ran on, etc. Note that don"t usually want to
      # output specific information from the $ex variable, since the client should really know
      # about information in our database, so we make a generic message.
      handle_db_error("Can not connect to the database. Please try again later.");
    }
    
    /**
     * Prints out a plain text 503 error message given $msg. If given a second (optional) argument as
     * an PDOException, prints details about the cause of the exception. See process_error for
     * note about responding with PDO errors to a client.
     * @param $msg {string} - Plain text 503 message to output
     * @param $ex {PDOException} - (optional) Exception object with additional exception details
     */
    function handle_db_error($msg, $ex=NULL) { # we can do default parameters in PHP! NULL is default if not given a second parameter.
        process_error("HTTP/1.1 503 Service Unavailable", $msg, $ex);
    }
    /**
     * Terminates the program after printing out a JSON error message given $msg after
     * sending the given header error code (handy to factor out error-handling between
     * 400 request errors and 503 db errors).
     * If given an (optional) third argument as an Exception, prints details about
     * the cause of the exception.
     *
     * @param $type {string} - The HTTP error header string.
     * @param $msg {string} - Message to output.
     */
    function process_error($type, $msg, $ex=NULL) {
        header($type); # e.g. "HTTP/1.1 400 Invalid Request"
        header("Content-type: application/json");
        if ($ex) {
          # Note that in practice, you probably don"t want to print details about your
          # database errors in a response to a client. But for testing your code, this can
          # help pinpoint bugs in your PDO functions/database connections.
          echo ("Error details: $ex \n");
        }
        die($msg); # die will print the argument and terminate the program.
    }
  }
?>
