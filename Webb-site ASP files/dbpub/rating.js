function setRating(p,r) {
	var xml, resp, x, nodes, stale, d, hint;
	xml=new XMLHttpRequest();
	xml.onreadystatechange = function() {
		if (xml.readyState == 4 && xml.status == 200) {
			resp = xml.responseXML;
			document.getElementById("usercnt").innerHTML = resp.getElementsByTagName("count")[0].childNodes[0].nodeValue;
			document.getElementById("score").innerHTML = resp.getElementsByTagName("average")[0].childNodes[0].nodeValue;
			nodes=resp.getElementsByTagName("userdate")[0].childNodes;
			if (r===undefined) {
				r=resp.getElementsByTagName("userscore")[0].childNodes[0].nodeValue;			
				document.getElementById("r"+r).checked=true;
				if (nodes.length ===1) {
					hint = (r==-1) ? "Your withdrew your rating on " : "Your last rating: ";
					hint = hint + nodes[0].nodeValue;
					stale = resp.getElementsByTagName("stale")[0].childNodes[0].nodeValue;
					if (stale==1) {
						hint=hint + " <b>expired, please update to include it in the average</b>";
					}
				} else {
					hint="";
				}
			} else {
				hint="<b>Thanks for rating or updating.</b>";
			}
			document.getElementById("ratedon").innerHTML= hint;
		}
	}
	xml.open("POST","cgrate.asp",true);
	xml.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
	xml.send("p="+p+"&r="+r);
}

