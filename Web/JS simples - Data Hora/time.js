function getHour()
{
	var currentTime = new Date();
	return (currentTime.getHours());
}
       
function doGreeting()
{
	var hour = getHour();
	var greeting = "";
         
	if (hour > 0 && hour < 12)
		greeting = "Bom Dia";
	else 
		if(hour >= 12 && hour < 19) 
			greeting = "Boa Tarde";
		else 
			greeting = "Boa Noite";		
		
	document.getElementById("tempo").innerHTML = (greeting + ", Passe bem!");
}

function displayDate() {
	
    document.getElementById("demo").innerHTML = Date();
}