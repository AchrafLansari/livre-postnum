<?php 
  //require_once("thyp1415_SlaouiZineb.php");
  $xml = simplexml_load_file('http://picasaweb.google.com/data/feed/base/user/107401320610499259896/albumid/6065229773950541889?alt=rss&kind=photo&authkey=Gv1sRgCNak7e60l-7VlgE&hl=fr');
	foreach ($xml->channel->item as $tof) {
		echo "<img src='".$tof->enclosure["url"]."'/>";
	}
?>