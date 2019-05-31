<?php
/*
    Name: Mark Theeranantachai
    Date: May 18, 2019
    Section: CSE 154 AF
    A PHP webservice for CP5
*/
    include "common.php";
    
    
    if (isset($_GET["type"])) {
        $type = $_GET["type"];
        list_heroes($type);
    } else if (isset($_GET["roles"])) {
        $roles = $_GET["roles"];
        filter_heroes($roles);
    } else {
        header("HTTP/1.1 400 Invalid Request");
        header("Content-type: text/plain");
        echo "API not supported for this query";
    }
    
    /**
     * List hero by type and respod as plain text.
     * @param {String} $type - a primary attribute of a hero
     */
    function list_heroes($type) {
        header("Content-type: text/plain");
        $db = get_PDO();
        $rows = $db->query("SELECT shortname, localized_name FROM Heroes WHERE primary_attr = '{$type}'");
        while ($row = $rows->fetch()) {
            echo $row["shortname"] . ":" . $row["localized_name"] . "\n";
        }
        
    }
    
    /**
     * Filter heroes and respond as JSON by hero roles
     * @param {String} $filter - A string filter
     */
    function filter_heroes($filter) {
        $query = "SELECT shortname FROM Heroes";
        if ($filter !== "") {
            $roles = explode("|", $filter);
            foreach ($roles as &$role) {
                $role .= " = 1";
            }
            $output = array();
            $ext = implode(" AND ", $roles);
            if (count($roles) > 0) {
                $query = $query. " WHERE " . $ext;
            }
        }
        $db = get_PDO();
        $rows = $db->query($query);
        while ($row = $rows->fetch()) {
            $output[] = $row["shortname"];
        }
        header('Content-type: application/json');
        echo json_encode($output);
    }
?>