<?php
	require 'db.php';
	$postData = file_get_contents('php://input');
	$data = json_decode($postData, true);

	if(!empty($data["user_name"]))
	{
		if(!empty($data["user_email"]))
		{
			if(!empty($data["user_message"]))
			{
				global $link;
				$query = sprintf("INSERT INTO reviews VALUES (NULL, '%s', '%s', '%s', NOW())", $data['user_name'], $data['user_email'], $data['user_message']);
				$result = mysqli_query($link, $query);
				if($result) $mes = "Отзыв добавлен. Спасибо!";
			}
			else $mes = "Заполните поле 'Сообщение'";
		}
		else $mes = "Заполните поле 'E-Mail'";
	}
	else $mes = "Заполните поле 'Имя'";
	echo json_encode($mes);
?>