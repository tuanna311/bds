<?php 
	// include_once dirname(__FILE__) . "/../database.php";

	$id = $_GET['id'];
	session_start();

	if (!isset($_SESSION['quan'])) {
		$_SESSION['quan'] = $id;
	} else {
		$_SESSION['quan'] = $id;
	}
?>