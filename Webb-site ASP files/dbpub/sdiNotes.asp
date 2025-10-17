<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Notes on dealing disclosures</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Notes on dealing disclosures</h2>
<p>We collect disclosures of interests of directors and chief executives in listed company shares from the statutory filings
<a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&amp;lang=EN&amp;in=1" target="_blank">published here</a> in accordance with the HK Securities and Futures 
	Ordinance (<strong>SFO</strong>). We aim to produce a more user-friendly 
	version, by:
		</p>
<ul>
	<li>eliminating numeric codes (such as the reason for the filing, 
		or the nature of an interest) and using plain language instead</li>
	<li>calculating values of transactions</li>
	<li>showing disposals as negative numbers of shares and dollars</li>
	<li>linking the names to our database of all HK-listed directors 
		since 1990, so that you can find out more about them</li>
</ul>
<ol>
	<li>That last part is our secret sauce, because names are often inconsistent 
	- the Stock Exchange does not use a unique identifier for individuals. Using 
	a proprietary algorithm we can match more than 99% of them, and the last few 
	we 
	do manually.</li>
	<li>New filings are normally published at 5pm each day, and we aim to 
	update our database with automatically within 15 minutes of that.</li>
	<li>The SFO came into effect on 1-Apr-2003. Before that, there was the 
	separate Securities (Disclosure of Interests) Ordinance, but filings were 
	paper-based and are not machine-readable, so we don't cover those.</li>
	<li>"Interests in shares" includes derivative interests, such as options and 
	futures contracts, call or put, long or short.</li>
	<li>We show short interests as negative holdings and negative percentage 
	stakes. A reduction of a short interest is therefore a positive number.</li>
	<li>If the director discloses an on-exchange highest price or average price 
	but fails to disclose the other, then we assume that they are the same.</li>
	<li>The law does not require disclosure of the price for short transactions, 
	so you will see grey boxes in those columns.</li>
	<li>Filings must be made (or at least, sent) within 3 business days of the transaction. 
By amendment to the SFO, Saturday 
	was excluded as a business day from 4-May-2012 onwards. There is a time lag 
between a director making a filing and it being published, typically of one 
business day, but sometimes longer. </li>
	<li>Because the
	<a href="https://sdinotice.hkex.com.hk/form/DIDnForm.htm" target="_blank">forms</a> 
are so complicated to complete and require filers to use numeric codes looked up 
from other documents, the filers often make errors and/or omissions which are 
never corrected, so you will find inconsistencies and contradictions, such as a 
shareholding increasing on something tagged with a disposal code, or decreasing 
on something tagged with an acquisition code.</li>
	<li>Another common error occurs when a director doesn't include his 
	derivative interests (usually share options) in the total number of shares 
	in which he is interested. So when he exercises an option and the shares are 
	issued to him, the total goes 
	up, whereas in fact he was interested in those (unissued) shares all along.</li>
	<li>Filings have, on some rare occasions, been replaced with new filings to 
correct errors. Therefore it is possible that filings we have collected are no 
longer valid. If in doubt, click on the link marked "filing" to see the original 
published filing, if it still exists.</li>
	<li>The original filings also show the breakdown of derivative interests (such as 
a director's share options) and the composition of corporate shareholders in 
which the director holds at least 1/3 of the voting rights (including pyramids 
of companies in which each company owns at least 1/3 of the votes in the next 
one down).</li>
<li>If you spot an error, please <a href="/contact">tell us</a>.</li>
	<li>For general <a href="FAQWWW.asp">FAQ on Webb-site Who's Who</a>, click 
	here.</li>
</ol>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
