<?php
//charge le flux rss dans un objet PHP
$xml = simplexml_load_file('https://picasaweb.google.com/data/feed/base/user/112098438788633053665/albumid/6064761146942390433?alt=rss&kind=photo&authkey=Gv1sRgCJG9i8HQ-b61kwE&hl=en_US');
foreach ($xml->channel->item as $tof) {
	echo "<img src='".$tof->enclosure["url"]."' />";
	echo $tof->title;
}
