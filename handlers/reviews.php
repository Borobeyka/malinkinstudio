<?php
	require 'db.php';

	global $link;
	$query = sprintf("SELECT * FROM reviews ORDER BY id DESC LIMIT 10");
	$result = mysqli_query($link, $query);

	while($row = mysqli_fetch_assoc($result)) : ?>
		<div class = "comment">
			<p><?php echo $row['name']; ?></p>
			<hr width = "90%">
			<p>
				<?php echo $row['text']; ?>
			</p>
		</div>
	<?php endwhile;
?>