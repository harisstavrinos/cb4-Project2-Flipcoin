$(document).ready(function () {
	$(".clickable-row").click(function() {
		var nameCoin=$(this).closest('tr').children('td:first').html();
		alert(nameCoin);
		$("#coinName").text(nameCoin);
		var value=$(this).find("td:eq(1)").html().replace('$','').toString();
		
		alert(value);
		console.log(value);

  var displayResources2 = $('.tableTransaction');
  var displayResources3 = $('.tableTransaction3');  

//  var Url = str1.concat(value);
//  var Url2 = Url.concat("/");
//  console.log(Url);
  
var base = { "price" : "1231"};
   $.ajax({
//	   dataType : 'json',
 type: "POST",	 
//   contentType: "application/json",
   url: "http://localhost:8080/MyGOD/test",
//	 data:  JSON.stringify(base)  ,
	 data: { price : "1231"} ,
   success: function(orders)
  {
      var outputBuy="<table><thead><tr><th>Quantity</th><th>Price</th></thead><tbody>";
      var outputSell="<table><thead><tr><th>Quantity</th><th>Price</th></thead><tbody>";
   	for ( var i=0 ; i<orders.length ; i++){
           if( orders[i].buy ){
  		    outputBuy += "<tr><td>"+ orders[i].quantity + "</td>" + "<td>"+ orders[i].price + " $</td></tr>"; 
           }else{
              outputSell += "<tr><td>"+ orders[i].quantity + "</td>" + "<td>"+ orders[i].price + " $</td></tr>";  
           }
   }
  outputBuy+="</tbody></table>";
  outputSell+="</tbody></table>";

   displayResources2.html(outputBuy);
   displayResources3.html(outputSell);
   
   }
   });
 });
 });