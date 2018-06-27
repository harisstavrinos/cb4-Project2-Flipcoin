window.onload = function() { 
 
var dps = [];
 
var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	exportEnabled: true,
	zoomEnabled: true,
	title: {
		text: "The Procter & Gamble Company Stock Price"
	},
	subtitles: [{
		text: "2012 to 2017"
	}],
	axisX: {
		valueFormatString: "MMM YYYY"
	},
	axisY: {
		title: "Price (in USD)",
		includeZero: false,
		prefix: "$"
	},
	data: [{
		type: "candlestick",
		xValueFormatString: "MMM YYYY",
		yValueFormatString: "$#,##0.00",
		xValueType: "dateTime",
		dataPoints: dps
	}]
});
 
$.getJSON("https://min-api.cryptocompare.com/data/histominute?fsym=BTC&tsym=USD&limit=60&aggregate=3&e=CCCAGG", parseData);
 
function parseData(result) {
	for (var i = 0; i < 50; i++) {
		dps.push({
			x: result.Data[i].time,
			y: result.Data[i].low
		});
	}
	chart.render();
}
 
}