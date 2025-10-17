function setCompos(o,d,c,a,p) {
	var xml, resp, x, hint,user;
	xml=new XMLHttpRequest();
	xml.onreadystatechange = function() {
		if (xml.readyState == 4 && xml.status == 200) {
			resp = xml.responseXML;
			hint = resp.getElementsByTagName("hint")[0].childNodes[0].nodeValue;
			if (hint == "Timeout") {
				document.getElementById("hint").innerHTML = '<b>Your session has timed out. Please <a href="default.asp">log in</a> again. </b>';
			}
			else {
				document.getElementById("d"+d+"c"+c+"m").innerHTML = resp.getElementsByTagName("modified")[0].childNodes[0].nodeValue;
				document.getElementById("d"+d+"c"+c+"u").innerHTML = resp.getElementsByTagName("user")[0].childNodes[0].nodeValue;
				if (hint != "Updated" && hint !="Added") {
					p = resp.getElementsByTagName("posn")[0].childNodes[0].nodeValue;
					document.getElementById("d"+d+"c"+c+"v"+p).checked=true;
					document.getElementById("hint").innerHTML = '<b>'+hint+'</b>';
				}
				else {
					document.getElementById("hint").innerHTML = "";
				}
			}
		}
	}
	xml.open("POST","../dbeditor/compos.asp",true);
	xml.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xml.send("o="+o+"&d="+d+"&c="+c+"&a="+a+"&p="+p);
}

function setComeets(o,c,d,m) {
	var xml,resp,x,hint,user;
	xml=new XMLHttpRequest();
	xml.onreadystatechange = function() {
		if (xml.readyState == 4 && xml.status == 200) {
			resp = xml.responseXML;
			hint = resp.getElementsByTagName("hint")[0].childNodes[0].nodeValue;
			if (hint == "Timeout") {
				document.getElementById("hint").innerHTML = '<b>Your session has timed out. Please <a href="default.asp">log in</a> again. </b>';
			}
			else {
				document.getElementById("c"+c+"mod").innerHTML = resp.getElementsByTagName("modified")[0].childNodes[0].nodeValue;
				document.getElementById("c"+c+"u").innerHTML = resp.getElementsByTagName("user")[0].childNodes[0].nodeValue;
				if (hint != "Updated" && hint !="Added") {
					document.getElementById("c"+c+"mtngs").value = resp.getElementsByTagName("mtngs")[0].childNodes[0].nodeValue;
					document.getElementById("hint").innerHTML = '<b>'+hint+'</b>';
				}
				else {
					document.getElementById("hint").innerHTML = "";
				}
			}
		}
	}
	xml.open("POST","../dbeditor/comeets.asp",true);
	xml.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xml.send("o="+o+"&c="+c+"&d="+d+"&m="+m);
}

function setAttend(o,d,c,a,att='',m='') {
	var xml, resp, x, hint,user,p;
	xml=new XMLHttpRequest();
	xml.onreadystatechange = function() {
		if (xml.readyState == 4 && xml.status == 200) {
			resp = xml.responseXML;
			hint = resp.getElementsByTagName("hint")[0].childNodes[0].nodeValue;
			if (hint == "Timeout") {
				document.getElementById("hint").innerHTML = '<b>Your session has timed out. Please <a href="default.asp">log in</a> again. </b>';
			}
			else {
				document.getElementById("d"+d+"c"+c+"m").innerHTML = resp.getElementsByTagName("modified")[0].childNodes[0].nodeValue;
				document.getElementById("d"+d+"c"+c+"u").innerHTML = resp.getElementsByTagName("user")[0].childNodes[0].nodeValue;
				document.getElementById("d"+d+"c"+c+"att").value = resp.getElementsByTagName("att")[0].childNodes[0].nodeValue;
				document.getElementById("d"+d+"c"+c+"mtngs").value = resp.getElementsByTagName("mtngs")[0].childNodes[0].nodeValue;
				if (hint != "Updated" && hint !="Added") {
					document.getElementById("hint").innerHTML = '<b>'+hint+'</b>';
				}
				else {
					document.getElementById("hint").innerHTML = "";
				}
			}
		}
	}
	xml.open("POST","../dbeditor/comattend.asp",true);
	xml.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xml.send("o="+o+"&d="+d+"&c="+c+"&a="+a+"&att="+att+"&m="+m);
}
