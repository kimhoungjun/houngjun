alert("위치값 받기!!");

if(navigator.geolocation)
{
	function myPosition(position)
	{
		alert("위도 : "+position.coords.latitude);
		alert("위도 : "+position.coords.longitude);
	};
	navigator.geolocation.getCurrentPosition(myPosition);
}
else
{
	alert("지원하지 않습니다.")
}

