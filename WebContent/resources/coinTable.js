 var displayResources = $('#coins2');
 
 displayResources.text('Loading data from JSON source...');
 
 
/* setInterval(ajaxCall, 1100);*/
 
/* function ajaxCall() {*/
 $.ajax({
 type: "GET",
 url: "https://api.coinmarketcap.com/v2/ticker/",
 success: function(result)
 {

 var output="<table id='markets_table' style='position:absolute;'>" +
 		"<thead><tr><th>Market</th><th>Price</th><th>Vol.</th><th>+/-</th></thead><tbody>";

 for (var j in result.data){ 
 		
		output += "<tr id="+result.data[j].id+" class='clickable-row' data-href='https://www.google.gr/?gfe_rd=cr&ei=YfTpWNXCBaeg8wertpnwDA'><td>"
			+ result.data[j].name + "</td>" + "<td>"+ result.data[j].quotes.USD.price + " $</td>"   + "<td>"+ result.data[j].quotes.USD.volume_24h + "</td>"  + "<td>"+ result.data[j].quotes.USD.percent_change_24h + "</td></tr>"; 					
}
 output+="</tbody></table>";
 
 displayResources.html(output);
 $("table").addClass("table");
 }
 });
 /*}*/
