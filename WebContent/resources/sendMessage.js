$(document).ready(function() {
	
	$('#message').keyup(function() {
        var len = this.value.length;
        if (len >= 250) {
            this.value = this.value.substring(0, 250);
        }
        $('#charLeft').text(250 - len);
    });
	
	  $.ajax({
	        url: "http://localhost:8080/MyGOD/users"
	    }).then(function(availableTags) {
	    	$("#to").autocomplete({
				source : availableTags
			});
	    });
	
	
	
	/*autocomplete from json*/

	
	$("#myTable .btn").click(function() {
		var fired_button = $(this).val();
		// alert(fired_button);
		$("#to").text(fired_button);
	});



});