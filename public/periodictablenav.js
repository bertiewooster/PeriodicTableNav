	function terms_mouseover($hovering,$base,hovering_posn) {
	
	
		console.log("Running terms_mouseover: " + hovering_posn);	// debugging
		$base_terms = $base.find('.terms'); // get terms (orbitals, e.g. 3s2) in origin element
		switch (hovering_posn) // Case statement: which is the element moused over
		{
		case "above":
			//adj_edge_to_hightlight = "bottom";
			//console.log("Element moused over: above");
			$hovering.css({"border-bottom":"1px dashed DimGray"});
			$base.css({"border-top":"1px dashed DimGray"})
			break;
		case "left":
			//adj_edge_to_hightlight = "right";
			//console.log("Element moused over: left");
			$hovering.css({"border-right":"1px dashed DimGray"});
			$base.css({"border-left":"1px dashed DimGray"})
			break;
		case "right":
			//adj_edge_to_hightlight = "left";
			//console.log("Element moused over: right");
			$hovering.css({"border-left":"1px dashed DimGray"});
			$base.css({"border-right":"1px dashed DimGray"})
			break;
		case "below":
			//adj_edge_to_hightlight = "top";
			//console.log("Element moused over: below");
			$hovering.css({"border-top":"1px dashed DimGray"});
			$base.css({"border-bottom":"1px dashed DimGray"})
			break;
		}
				// Would be better to store borders (top, left, right, bottom) in variable and only call $hovering.css and $base.css once,
				// but had problem getting strings ("border-" + e.g. "right") to work in .css. Try again--refactor.
//				css_element = "border-" + adj_edge_to_hightlight;
//				console.log(css_element);
//				console.log(typeof css_element);
//				$this.css({css_element:"5px solid green"});
				//$this.css({"border-right":"2px solid green"});

		//alert($(this).attr('id'));
		$hovering_terms = $hovering.find('.terms'); // get terms (orbitals, e.g. 4f10) in adjacent element
		$hovering_terms.children().each(function() { // for each orbital term in adjacent element
			$hovering_term = $(this);
			adj_term = $hovering_term.text().replace(/\s/g, ''); // e.g., 4f10 [format: nlc where c = electron count]
			adj_n  = adj_term.charAt(0); // extract n quantum number (1, 2, 3,...) from term
			adj_l = adj_term.charAt(1); // extract l letter (s, p, d, or f) from term
			adj_count  = adj_term.substring(2,adj_term.length); // extract electron count (1-14) from term
			same_l_selector = 'span[class^="ec_"][class$="' + adj_l + '"]'; // jQuery selector for term in origin
			$same_l_in_origin = $base_terms.find(same_l_selector); // jQuery object: analogous term in origin, e.g. 4f9 (will test to see if exists below)
			same_l = $same_l_in_origin.text().replace(/\s/g, ''); // text of analogous term in origin
			origin_n = same_l.charAt(0); // origin's principal quantum number, n, for this term
			origin_count  = same_l.substring(2,same_l.length); // extract electron count (1-14) from term					

			// If origin doesn't contain term with this l, highlight whole term in adjacent element
			origin_terms_text = $base_terms.text().replace(/\s/g, '');
			// Mash-together of all terms in origin, e.g. 6s24f9. So can check one string to see if origin has term with same l value as current term of adjacent element.

			origin_has_term = origin_terms_text.indexOf(adj_l) != -1
			if (!origin_has_term) { // if origin doesn't contain term with this l, highlight whole term in adjacent element
				$hovering_term.addClass('new_orbital');
				return true; // skip rest of highlighting rules for this term: whole term is highlighted because new
			}

			// If n value (for same l term) is different (adj vs. origin), highlight n value in both elements
			if(adj_n != origin_n) {
				$same_l_in_origin.find('span[class^="ec_"][class$="n"]').addClass('diff_n');
				$hovering_term.find('span[class^="ec_"][class$="n"]').addClass('diff_n');
			}
					
			// If n and l values are same but electron count is different (adj vs. origin), highlight counts in both elements
			if(adj_count != origin_count) {
				$same_l_in_origin.find('span[class^="ec_"][class$="c"]').find('sup').addClass('diff_count');
				$hovering_term.find('span[class^="ec_"][class$="c"]').find('sup').addClass('diff_count');
			}
					
		}) // end $hovering_terms.children().each
		$base_terms.children().each(function() { // for each orbital term in origin element
			$base_term = $(this);
			origin_term = $base_term.text().replace(/\s/g, ''); // get the text of the origin term, e.g. 4f10
			origin_l = origin_term.charAt(1); // extract l letter (s, p, d, or f) from term
			adj_ec_text = $hovering_terms.text().replace(/\s/g, '');
			adj_has_term = adj_ec_text.indexOf(origin_l) != -1
			if (!adj_has_term) { // if adj element doesn't contain term with this l, highlight whole term in origin element
				$base_term.addClass('new_orbital');
			}
		}) // end $base_terms.children().each	
	}

	function terms_mouseout($hovering,$base) {
		console.log("Running terms_mouseout");	// debugging
		$hovering_terms.find('*').removeClass('new_orbital diff_n diff_count');
		$base_terms.find('*').removeClass('new_orbital diff_n diff_count');
		$hovering.css({"border":"1px solid black"});
		$base.css({"border":"1px solid black"});
	}
	
	$.fn.exists = function () { // function to return true (selector returned jQuery object(s)) or false (selector returned null)
	    return this.length !== 0;
	}
