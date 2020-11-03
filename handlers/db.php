<?php
	$link = mysqli_connect('localhost', 'root', '', 'malinkinstudio');
	if(!$link) die();
	mysqli_query($link, "SET NAMES utf8");
?>