function setRating(p,r) {
	var xml, resp, x;
	var d = new Date();
	d.setHours (d.getHours()+8);
	xml=new XMLHttpRequest();
	xml.onreadystatechange = function() {
		if (xml.readyState == 4 && xml.status == 200) {
			resp = xml.responseXML;
			document.getElementById("c"+p).innerHTML = resp.getElementsByTagName("count")[0].childNodes[0].nodeValue;
			document.getElementById("av"+p).innerHTML = resp.getElementsByTagName("average")[0].childNodes[0].nodeValue;
			if (r>-1) {
				document.getElementById("p"+p).innerHTML = r;}
			else {
				document.getElementById("p"+p).innerHTML = 'N/A';}
			if (r===undefined) {
				r=resp.getElementsByTagName("userscore")[0].childNodes[0].nodeValue;
				document.getElementById(p+"r"+r).checked=true;
			} else {
				document.getElementById("d"+p).innerHTML = d.toISOString().substr(0,10);
				document.getElementById("d"+p).style.fontWeight='normal';				
				}	
		}
	}
	xml.open("POST","../dbpub/cgrate.asp",true);
	xml.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xml.send("p="+p+"&r="+r);
}
