<html>
	<head>
	</head>
	<body>

	<?php
		try{
			$url = "https://picasaweb.google.com/data/feed/base/user/107401320610499259896/albumid/6065229773950541889?alt=rss&kind=photo&authkey=Gv1sRgCNak7e60l-7VlgE&hl=fr";
			$xml = simplexml_load_file($url);
			$i=4;
			echo "<table>";
			foreach ($xml->channel->item as $photo){
				if ($i%4 == 0) echo "<tr>";
				
				echo "<td><img width='250px' src='".$photo->enclosure["url"]."'/><br/><p align='center'>".$photo->title."</p></td>";
				
				if($i++ == 0) echo"</tr>";				
			}
			echo "</table>";
		}
		catch (Exception $e){
			echo $e->getMessage();
		}
	?>
	</body>
</html>