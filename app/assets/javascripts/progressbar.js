var level = function() {
	var totalCount = [];
	var finalnumber = 0;
	var count = $('#amount li').length;
	$('#test li').each(function() { 
		totalCount.push(parseFloat($(this).html()));
		finalnumber = eval(totalCount.join("+"));	
	});
	return ((finalnumber/10) + count) + "%";
} 



$(document).ready(function() {
	$("#bar").attr("aria-valuenow", level());
	$("#bar").css("width", level());
	$("#bar").append(level());
	var sum = [];
	var val = 0;
	$('#test li').each(function() { 
		sum.push(parseFloat($(this).html()));	
	});
	val = eval(sum.join("+"));
	$('#total').append(val + " dollars! YOUR A SUPERSTAR!!");

})