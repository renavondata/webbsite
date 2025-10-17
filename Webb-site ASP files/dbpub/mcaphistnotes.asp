<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Notes on historic market capitalisations</title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2>Notes on historic market capitalisations</h2>
<ol>
	<li>Listing Rules have required issuers to file month-end returns of outstanding shares from 
2008-12-31 onwards, so we restrict the search to that range, for which our 
dataset is complete.</li>
	<li>If you want accurate outstanding shares then pick the last calendar day of a 
	month, even if it is on a weekend. If you pick a trading day that is not a 
	calendar month-end, then you will be using data for outstanding shares on or 
	prior to that date.</li>
	<li>We usually update month-end outstanding shares by the middle of the next 
	month.</li>
	<li>The number of issued shares is the last known figure on or prior to 
	your chosen date.</li>
	<li>By default, we include pending shares, but you can check the box to 
	exclude them. Pending shares are those not yet issued for bonus issues, 
	rights issues, open offers and scrip-only dividends (which are bonus issues 
	in disguise), where the stock is trading ex-entitlement to those shares.</li>
	<li>Suspended stocks are shown at their last closing price with 
	the last outstanding shares on or prior to the suspension date.</li>
	<li>While a 
	stock is on a temporary "parallel trading" stock code, we show the last 
	closing price and outstanding shares before that.</li>
	<li>The market caps are for the 
	class of shares, so they exclude any other shares of the issuer, such as 
	mainland-listed shares and unlisted shares.</li>
	<li>Preference shares (often issued by banks) are excluded because they 
	normally have a zero quoted price, never having traded on SEHK. They are 
	listed just so that the issuer can claim that they are listed, but no 
	trading occurs on the exchange.</li>
	<li>Closing prices are usually updated by 21:45 HK time.</li>
</ol>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
