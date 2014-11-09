function getXmlHttp(){
  var xmlhttp;
  try {
    xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
  } catch (e) {
    try {
      xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
    } catch (E) {
      xmlhttp = false;
    }
  }
  if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
    xmlhttp = new XMLHttpRequest();
  }
  return xmlhttp;
}

function makeRequest() {
  var xmlhttp = getXmlHttp();
  xmlhttp.open('GET', 'http://localhost:5000/todays_weather.json', true);
  xmlhttp.send(null);

  var response = JSON.parse(xmlhttp.responseText);
  if(xmlhttp.status == 200) {
    alert( "Temperature = " + response["temperature"] + " " + "Date = " + response["date"] );
    document.getElementById("some").innerHTML = "Temperature = " + response["temperature"] + " " + "Date = " + response["date"];
  }
}