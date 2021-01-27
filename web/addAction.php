<?php
include "db.php";
$sid = $_GET["fsi"];
$status = $_GET["fst"];
$game = $_GET["fg"];
$viewers = $_GET["vwr"];
$views = $_GET["fv"];
$followers = $_GET["ffo"];
$updated_at = $_GET["fup"];
//print_r($_GET);
$q = $db->prepare("CALL addAction(:sid,:status,:game,:viewers,:views,:followers,:updated_at)");
$q->execute(array("sid" => $sid, "status" => $status, "game" => $game,"viewers" => $viewers, "views" => $views, "followers" => $followers, "updated_at" => $updated_at));
echo 1;