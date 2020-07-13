$(document).ready(function(){

	$("#box2").show(2000);
	$("#bt").click(function(){
			$("body").removeClass();
			$("body").addClass("bg-dark text-light");
			$("#box2").animate({height:"304px", width: "304px"},2000);
			$("#img").attr('src','img/300.png');
		});
	$("#bt2").click(function(){
			$("body").removeClass();
			$("body").addClass("bg-light text-light");
			$("#box2").animate({height:"104px", width: "104px"},2000);
			$("#img").attr('src','img/100.png');
		});
	$("#bt3").click(function(){
			$("body").removeClass();
			$("body").addClass("bg-info text-light");
			$("#box2").animate({height:"204px", width: "204px"},2000);
			$("#img").attr('src','img/200.png');
			
		});					
						
});