<?php
include "db.php";
$q = $db->query("CALL getStreamers()");
$f = $q->fetchAll();
echo json_encode($f);