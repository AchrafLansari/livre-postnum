<?php
//charge le flux rss dans un objet PHP
$xml = simplexml_load_file('https://picasaweb.google.com/data/feed/base/user/107401320610499259896/albumid/6065229773950541889?alt=rss&kind=photo&authkey=Gv1sRgCNak7e60l-7VlgE&hl=fr');

foreach ($xml->channel->item as $tof) {
	
	echo "<img src='".$tof->enclosure["url"]."' />" . "<br/>$tof->title<br/><br/>"; 

}
