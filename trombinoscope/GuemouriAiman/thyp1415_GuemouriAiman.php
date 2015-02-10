<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title> Trombinoscope THYP 14-15</title>
		<script type="text/javascript">
		function switchInfoPerso()
		{
			divInfo = document.getElementById('divacacher');
			if (divInfo.style.display == 'none')
				divInfo.style.display = 'block';
			else
				divInfo.style.display = 'none';
		}
		</script>
	</head>
	<body>
	<center><H1> Trombinoscope THYP 14-15 </H1></center>
	<table border="3">
	<?php
	//charge le flux rss dans un objet PHP
	$feed = file_get_contents("https://picasaweb.google.com/data/feed/base/user/107401320610499259896/albumid/6065229773950541889?alt=rss&kind=photo&authkey=Gv1sRgCNak7e60l-7VlgE&hl=fr");
	$xml=simplexml_load_string($feed);
	foreach ($xml->channel->item as $tof)
	 {		//teste pour faire un affichage ..
		echo "<tr>";
		echo "<td>";
		echo "<img src='".$tof->enclosure["url"]."' />";
		echo "</td>";
		echo "<td>";
		echo $tof->title;
		echo "</td>";
	
		echo"</tr>";		
	}
	?>
</body>
</html>