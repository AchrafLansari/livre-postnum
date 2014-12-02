		var ficSVG = "../../svg/trombi_aba.svg";
		//var arrIds = ["image16", "image18", "image20", "image22", "image24", "image26", "image28", "image30", "image32", "image34", "image36", "image38", "image40", "image42", "image44"];
		var arrIds = [
		     {"idClick":"Yo","urlTof":"http://localhost/GitHub/livre-postnum/trombinoscope/ABA/CAM00033.jpg","nom":"Yolaine Raymond","comp":"bon"}
			,{"idClick":"Alex","urlTof":"http://localhost/livre-postnum/data/trombi/CDNL1415/6.jpg","nom":"Alex Pain","comp":"bon"}
			];
		
		function load(){
		 	//charge l'IHM SVG
		    //merci � http://bl.ocks.org/KoGor/8162640
		    	queue()
		    		.defer(d3.xml, ficSVG, "image/svg+xml")
		    		.await(IHMcharge);
		}

		//charge le svg
	    //merci � http://bl.ocks.org/KoGor/8162640
	    function chargeIHM(){
	    	queue()
	    		.defer(d3.xml, ficSVG, "image/svg+xml")
	    		.await(IHMcharge);
	    }
	    function IHMcharge(error, xml){
	    	//Adding our svg file to HTML document
			var importedNode = document.importNode(xml.documentElement, true);
			d3.select("#viz").node().appendChild(importedNode);	    	    	  	
			//correction du lien vers les images
			var arrImg = document.getElementsByTagName("image");
			for (var i = 0; i < arrImg.length; i++) {
			    var path = arrImg[i].getAttribute("xlink:href");
			    path = path.replace("../trombinoscope/ABA/", "");
			    arrImg[i].setAttribute("xlink:href",path);
			}
	  		ajoutelesevenementauxelements();
	    }		
	    	    
		// fonction pour ajouter un �couteur � UN �L�MENT
		//merci � https://developer.mozilla.org/fr/docs/DOM/element.addEventListener
		function ajoutelesevenementauxelements() { 
		
			for (var i = 0; i < arrIds.length; i++) {
				//length = taille du tableau
			     var el = document.getElementById(arrIds[i].idClick); 
				 var j = i;
			     el.addEventListener("click", afficheDetailEtu,false); 
			    	
			} 		
		}
		/*
		 merci � http://www.commentcamarche.net/forum/affich-21135416-html-afficher-cacher-une-div-sur-clique-a
		 */
		function switchInfoPerso()
		{
			divInfo = document.getElementById('divacacher');
			if (divInfo.style.display == 'none')
				divInfo.style.display = 'block';
			else
				divInfo.style.display = 'none';
		}
		
		function afficheDetailEtu(evt){
			//r�cup�re la balise image grand format
			var elemIma = document.getElementById('image14');
			//r�cup�re les information de l'�tudiant
			var item = getElementArr(arrIds, "idClick", evt.currentTarget.id);
			//mettre � jour l'image
			elemIma.setAttribute("xlink:href",item.urlTof);
			//change les textes
			var elemTxt = document.getElementById('text37');
			elemTxt.textContent=item.nom;
			elemTxt = document.getElementById('text39');
			elemTxt.textContent=item.comp;
		}

		function getElementArr(arr, prop, val){
			for (var i = 0; i < arr.length; i++) {
				if(arr[i][prop]==val)return arr[i];
			}
			return false;
		}
		
