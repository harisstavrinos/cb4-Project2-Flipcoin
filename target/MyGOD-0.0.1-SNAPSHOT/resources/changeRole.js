$(document).ready(
		function() {

			// me buttons kai table
			/*
			 * $("#myInput").on("keyup", function() { var value =
			 * $(this).val().toLowerCase(); $("#myTable .btn").filter(function() {
			 * $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
			 * }); });
			 */

			/*
			 * $( "#tags" ).autocomplete({ source: "searchtags.php", minLength:
			 * 2, select: function( event, ui ) { log( ui.item ? "Selected: " +
			 * ui.item.value + " aka " + ui.item.id : "Nothing selected, input
			 * was " + this.value ); } });
			 */

			
			/* autocomplete */
			/*var url="http://localhost:8080/MyGOD/users";
			$.getJSON(url, function(availableTags) {
				var availableTags = [ "ActionScript", "AppleScript", "Asp",
						"BASIC", "C", "C++", "Clojure", "COBOL", "ColdFusion",
						"Erlang", "Fortran", "Groovy", "Haskell", "Java",
						"JavaScript", "Lisp", "Perl", "PHP", "Python", "Ruby",
						"Scala", "Scheme" ];
				
				$("#tags").autocomplete({
					source : availableTags
				});
			});*/

			
			  $.ajax({
			        url: "http://localhost:8080/MyGOD/users"
			    }).then(function(availableTags) {
			    	$("#tags").autocomplete({
						source : availableTags
					});
			    });
			
			
			
			/*autocomplete from json*/
		
			
			$("#myTable .btn").click(function() {
				var fired_button = $(this).val();
				// alert(fired_button);
				$("#nameOfUser").text(fired_button);
			});

		});
