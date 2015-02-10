		
<?php

$xml = simplexml_load_file('https://picasaweb.google.com/data/feed/base/user/107401320610499259896/albumid/6065229773950541889?alt=rss&kind=photo&authkey=Gv1sRgCNak7e60l-7VlgE&hl=fr');

echo '<table border="2">';
echo  "<tr>";
echo "<td>Photo</td>";
echo "<td>Nom</td>";
echo  "</tr>";
foreach ($xml->channel->item as $tof) 
{
		echo "<tr>";
		echo "<td>";

		
	echo "<src='".$tof->enclosure["url"]."' />";

	
	echo "</td>";
	echo "<td>";
	
		echo $tof->title;
		echo "</td>";
		echo "</tr>";
}
?>

