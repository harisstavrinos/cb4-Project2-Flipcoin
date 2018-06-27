jQuery(document).ready(function($) {
	$(".clickable-row").click(function() {
		window.location = $(this).data("href");
	});

	//$('#deleteAll').hide();
	$('#deleteAll').prop('disabled', true);

	// select all checkboxes
	$(".checkAll").change(function() { // "select all" change
		$(".myCheckbox").prop('checked', $(this).prop("checked"));

		if (false == $(this).prop("checked")) {
			//$('#deleteAll').hide();
			$('#deleteAll').prop('disabled', true);
		}
//		 check "select all" if all checkbox items are checked
		if ($('.checkAll:checked').length == $('.checkAll').length) {
			//$('#deleteAll').show();
			$('#deleteAll').prop('disabled', false);
		}
		
	

	});

	// ".checkbox" change
	$('.myCheckbox').change(function() {
		// uncheck "select all", if one of the listed checkbox item is unchecked
		if (false == $(this).prop("checked")) { // if this item is unchecked
			$("#checkAll").prop('checked', false); // change "select all"
			if (false == $('.checkAll').prop("checked")) {
				//$('#deleteAll').hide();
				$('#deleteAll').prop('disabled', true);
			}
		}
		// check "select all" if all checkbox items are checked
		if ($('.myCheckbox:checked').length == $('.myCheckbox').length) {
			$("#checkAll").prop('checked', true);
			//$('#deleteAll').show();
			$('#deleteAll').prop('disabled', false);
		}
		
		if (true == $(this).prop("checked")) { 
			$("#checkAll").prop('checked', false); 
			if (false == $('.checkAll').prop("checked")) {
				//$('#deleteAll').show();
				$('#deleteAll').prop('disabled', false);
			}
		}
		
		
		
	});

});