<?php

namespace Postnum;
include_once 'Epub/EPub.php';
use \EPub;

class EpubPostNum {
	private $ebook;
	private $cssId 		= 0;
	private $chapterId 	= 0;
	
	public function __construct($title, $description) {
		$this->ebook = new EPub(EPub::BOOK_VERSION_EPUB3, "fr", EPub::DIRECTION_LEFT_TO_RIGHT);
		$this->ebook->setTitle($title);
		//$this->ebook->setIdentifier("http://JohnJaneDoePublications.com/books/TestBookSimple.html", EPub::IDENTIFIER_URI); // Could also be the ISBN number, prefered for published books, or a UUID.
		$this->ebook->setLanguage("fr");
		$this->ebook->setDescription($description);
		$this->ebook->setAuthor("Atelier CréaTIC", "Atelier CréaTIC");
		$this->ebook->setPublisher("Université Paris 8", "http://www.univ-paris8.fr/");
		$this->ebook->setDate(time());
		$this->setLayoutFixed();
		//$this->ebook->setRights("Copyright and licence information specific for the book.");
		//$this->ebook->setSourceURL("http://JohnJaneDoePublications.com/books/TestBookSimple.html");
	}
	
	public function getEbook(){
		return $this->ebook;
	}
	
	public function saveEbook(){
		//Construit l'archive
		$this->ebook->finalize();
		
		//Télécharge l'archive
		$this->ebook->sendBook($this->ebook->getTitle());
	}
	
	public function addCSSFiles(array $CSSFiles){
		foreach ($CSSFiles as $file){
			$fileData = file_get_contents($file);
			$this->ebook->addCSSFile("css".$this->cssId.".css", "css".$this->cssId++, $fileData);
		}
	}
	
	/**
	 * Ajoute un chapitre au document
	 * 
	 * @param	[string]	$title
	 * @param 	[array]		$filesToInclude			La liste des fichiers à inclure dans le chapitre
	 */
	public function addChapter($title, array $filesToInclude){
		$content = "";
		
		/**
		 * Le contenu du chapitre est la concaténation de chaque fichier
		 */
		foreach($filesToInclude as $file){
			$content .= file_get_contents($file);
		}
		
		$content = $this->encapsulateContent($title, $content);
		
		$this->ebook->addChapter(
				$title,
				"Chapitre".$this->chapterId++.".html",
				$content,
				false,
				EPub::EXTERNAL_REF_ADD);
	}
	
	/**
	 * Renvoie un document HTML
	 * 
	 * @param	[string]	$content
	 * @return	[string]
	 */
	private function encapsulateContent($title, $content){
		$debut	=	"<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n"
					. "<html xmlns=\"http://www.w3.org/1999/xhtml\" xmlns:epub=\"http://www.idpf.org/2007/ops\">\n"
					. "<head>"
					. "<meta http-equiv=\"Default-Style\" content=\"text/html; charset=utf-8\" />\n"
					. "<meta name=\"viewport\" content=\"width=1200, height=600\"/>\n"
					;
		
		/**
		 * On rajoute chaque feuille de style à l'entête du document html
		 */
		for($i = 0; $i < $this->cssId; $i++){
			$debut	.=	"<link rel=\"stylesheet\" type=\"text/css\" href=\"css".$i.".css\" />\n";
		}
							
		$debut	.=	"<title>".$title."</title>\n"
					. "</head>\n"
					. "<body>\n"
					. "<h1>".$title."</h1>\n"
					;
		
		$fin	=	 "</body>\n</html>\n";
		
		return $debut.$content.$fin;
	}
	
	private function setLayoutFixed($orientation = "portrait"){
		$meta	=	'<meta property="rendition:layout">pre-paginated</meta>'
					.'<meta property="rendition:spread">none</meta>'
					.'<meta property="rendition:orientation">'.$orientation.'</meta>';
		$this->ebook->addRawsMeta($meta);
	}
}

?>