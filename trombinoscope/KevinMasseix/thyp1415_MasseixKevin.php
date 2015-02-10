<?php
	echo "
		<html>
			<head>
			</head>
			<body>";
	
	affiche_form_trombinoscope();
	
	if (isset($_POST['url'])){
		affiche_image($_POST['url']);
	}
	
	echo '
			<table id="bloc">
			</table>
			</body>
			<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
			<script type="javascript">
	
			
				
			</script>
		</html>';
	
	function affiche_image($url){
		try{
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
	}
		
	function affiche_form_trombinoscope(){
		echo "<form id='form' method='post' action='thyp1415_MasseixKevin.php'>
				<label for='url'>Charger un trombinoscope : </label><input type='text' name='url'/>
				<input type='submit' value='Envoyer'/>
			</form>";
	}