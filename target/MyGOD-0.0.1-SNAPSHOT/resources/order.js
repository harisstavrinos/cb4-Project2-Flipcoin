/*$(document).ready(function () {
// $("#placeBuyOrder").click(function() {
	$("#placeBuyOrder").click(function(){
var order = {quantity : $("#buyAmount").val().toString() , price : $("#buyPrice").val().toString() , buy:"true"};

var data = JSON.stringify(order);
console.log(data);
*/
// $.ajax({
// type: "POST",
// url: "http://localhost:8080/MyGOD/order",
// data: data ,
// dataType: "json",
// success: function(msg) {
// alert('In Ajax');
// }
// });

/*
    $.post("http://localhost:8080/MyGOD/order",
    
    	order,
    	
    	$.ajax({
    		 type: "POST",
    		 url: "http://localhost:8080/MyGOD/order",
    		 data: data ,
    		 dataType: "json",
    		 success: function(msg) {
    		 alert('In Ajax');
    		 }
    		});
    
});

}); 
	*/
	
	
	$(document).ready(function(){
		
	    $("#placeBuyOrder").click(function(){
	    	var coin=$('#coinName').text();
	    	var quantity=$('#buyAmount').val().toString() ;
	    	var price =$('#buyPrice').val().toString();
	    	 var order = {"coin" : coin , "quantity" : quantity , "price" : price , "buy":"true"};
	    	 $.ajax({
	    		 type: "POST",
	    		 contentType: "application/json",
	    		 url: "http://localhost:8080/MyGOD/neworder" ,
	    		 data: JSON.stringify( order )     ,
	    		 success: function(json)
	    		 { alert('In Ajax'); }
	
	    		 });
	    	});
	    });