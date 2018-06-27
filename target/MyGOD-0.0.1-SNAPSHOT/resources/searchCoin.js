function myFunction() {
	// Declare variables
	var input, filter, table, tr, td, i;
	input = document.getElementById("searchCoin");
	filter = input.value.toUpperCase();
	table = document.getElementById("comeon");
	tr = table.getElementsByTagName("tr");

	// Loop through all table rows, and hide those who don't match the search
	// query
	for (i = 0; i < tr.length; i++) {
		// se poia stili tou pinaka na psaxei
		td = tr[i].getElementsByTagName("td")[0];
		if (td) {
			if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
				tr[i].style.display = "";
			} else {
				tr[i].style.display = "none";
			}
		}
	}
}






/*
	var url="https://api.coinmarketcap.com/v2/listings/";
	$.getJSON(url, function(availableTags) {
		var availableTags = [ "ActionScript", "AppleScript", "Asp",
				"BASIC", "C", "C++", "Clojure", "COBOL", "ColdFusion",
				"Erlang", "Fortran", "Groovy", "Haskell", "Java",
				"JavaScript", "Lisp", "Perl", "PHP", "Python", "Ruby",
				"Scala", "Scheme" ];
		
		$("#buyCoin").autocomplete({
			source : availableTags
		});
	});*/