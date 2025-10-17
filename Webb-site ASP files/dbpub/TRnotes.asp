<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<%Dim title
title="About Webb-site Total Returns"%>
<title><%=title%></title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
</head>

<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li><a href="alltotrets.asp">All total returns</a></li>
	<li><a href="ctr.asp">Compare returns</a></li>
</ul>
<div class="clear"></div>
<h3>Introduction</h3>
<p>No other web site that we know of (as of July 2012) calculates total returns 
for HK stocks including the reinvestment of distributions such as dividends, demergers 
(distributions of shares) and bonus warrants. Distributions are a huge component 
of the overall market return. This leaves retail investors unable to know what 
their total investment return would have been over any period, or to fairly 
compare the graphs of two stocks which have different dividend yields. 
Journalists regularly produce tables (particularly at year-ends) comparing share 
price gains and losses over a period without taking account of distributions, in 
effect comparing apples with oranges. Information is the antidote to 
speculation. It requires a lot of work, but Webb-site has produced the Webb-site 
Total Returns to fill that gap.</p>
<p>We are aware that a professional terminal, which costs around 
US$2,000 per month, provides such a service, although we doubt that it fully 
adjusts for some of the more novel distributions in Hong Kong, such as bonus 
warrants and warrants attached to rights issues. So even if professionals and 
academics have access to that system, they may be relying on understated 
returns.</p>
<p>Our system covers every listed stock since 1994. Unlike many sites, Webb-site 
also covers stocks which have delisted, for whatever reason. On most sites, key 
in a stock code for a delisted stock and you will find nothing. Coverage of 
delisted stocks allows you to remove &quot;survivor bias&quot; because you can look at all 
the stocks you could have bought at any point in time, not just the ones which 
didn't go bankrupt or get privatised.</p>
<h3>How to use it</h3>
<p>We offer two main graphing systems: the <a href="str.asp">single-stock total return</a> (<strong>STR</strong>), 
and the <a href="ctr.asp">comparative total return</a> (<strong>CTR</strong>). In both charts, you can 
mouse-over to read values, click and drag to zoom in to a detailed daily range, 
and double-click to zoom out again.</p>
<ul>
	<li>The STR chart shows the total return for a single stock, reinvesting all 
	distributions, rebased 
	to the latest daily closing price. We could have done it the other way, 
	rebasing to the starting price, but that would result in the adjusted 
	current price of a lot of stocks being very close to zero, with many zeroes 
	after the decimal point due to their value destruction.&nbsp; In STR, to 
	calculate the total return over any interval, you take the current price and 
	divide by the adjusted starting price, then subtract 1. For example, if the 
	current price is $2.00, and the adjusted price on your start date is $0.50, 
	then your total return is simply 2.00/0.50-1=3, or 300%. For major 
	value-destroyers with historic adjusted prices larger than 6 digits, the 
	chart shows them in scientific notation - for example 1.80e+6 is $1,800,000.</li>
	<li>The CTR chart allows you 
	to graphically compare total returns in percentage terms for up to 5 stocks, 
	reinvesting distributions and ignoring 
	all expenses and taxes, of course. The default is absolute returns, but if 
	you want to know how stocks performed relative to each other, then check the 
	box &quot;show returns relative to Stock 1&quot;, and you will get relative returns, 
	with Stock 1 of course becoming a flat line at 0%. The other lines will be 
	the percentage by which you would be better or worse off by investing in 
	that stock compared with investing in Stock 1.</li>
	<li>Tip: if you are looking for a market benchmark to compare with, 
	you could enter stock code 2800, the Tracker Fund of HK, which has been 
	listed since 12-Nov-1999. It has a very low expense ratio, around 0.2% p.a., 
	although it does suffer withholding tax since 1-Jan-2008 at 10% on dividends from mainland 
	companies.</li>
	<li>CTR allows you to pick a starting date for the comparison, or defaults to 
	1994-01-03 (3-Jan-1994). For multiple stocks, if the chosen date is too 
	early, then this will be automatically corrected to the earliest date on 
	which they were all listed.<ul>
		<li>If you do not pick a date, then the page treats your stock 
		code as current. If it cannot find a current stock, then it looks for 
		the last delisted stock to use that code.</li>
		<li>If you do pick a date and enter a stock code, then it will 
		look for the stock with that code on that date. If there was none, then 
		it will look for the first stock listed after that date with that code.</li>
		<li>The base price for each stock is the adjusted closing price on the 
		first day of the period. If a stock is still suspended throughout the 
		first day of a period, then we take the closing price on the first day 
		in that period after suspension, because that is the first day on which 
		you could reasonably have bought the stock.</li>
	</ul>
	</li>
</ul>
<p>If the graphs load slowly, you are probably using Internet Explorer 8 or 
earlier, which draws the graphs very slowly (for techies, that's because IE8 
doesn't natively support the HTML5 &lt;canvas&gt; tag). 
<a href="http://www.firefox.com" target="_blank">Firefox</a>, 
<a href="http://www.apple.com/safari/" target="_blank">Safari</a>, 
<a href="http://www.google.com/chrome" target="_blank">Chrome</a>,
<a href="http://www.opera.com" target="_blank">Opera</a>, 
<a href="http://windows.microsoft.com/ie9" target="_blank">IE9</a> (or later) 
and its succecssor,
<a href="https://www.microsoft.com/en-us/edge" target="_blank">Edge</a>, are much faster. 
If you are still using Windows XP, then you cannot get IE9 (only for Windows Vista or 
later) so use Firefox instead.</p>
<h3>Copyright</h3>
<p>Raw stock prices and other market data are facts, not creative works, and you 
cannot copyright facts, but Webb-site Total Returns, like stock market indices, are a creative work over 
which we sweat and for which we assert copyright. However, we encourage media to 
quote them freely and academics to use them in research, <strong>provided</strong> 
that attribution to &quot;Webb-site.com&quot; is given. Our goal is for Webb-site Total 
Returns to become the &quot;gold standard&quot; in the same way that students of US stock 
performance 
tend to use products from the <a href="http://www.crsp.com/" target="_blank">
Center for Research in Security Prices</a> at the Booth School of Business of 
the University of Chicago. </p>
<p>If you operate a financial web site and wish to enhance your product 
with Webb-site Total Returns, then <a href="../contact">contact us</a> for a 
confidential discussion on terms. Don't your users deserve better? Your fees 
would help support the running costs of Webb-site, which is not for-profit.</p>
<h3>How we do it</h3>
<ol>
	<li>The last (non-suspended) trading day before 
	the stock begins trading without entitlement to a distribution is known as 
	the <strong>cum-date</strong>. The next 
	trading day is the <strong>ex-date</strong>.</li>
	<li>Each event generates an <strong>adjustment factor</strong> to all prior 
	prices for a stock. For a split, consolidation (reverse split) or bonus 
	issue, the adjustment factor is simply the ratio of the old shares to the 
	new shares. For example a 5:1 consolidation has an adjustment factor of 5, 
	and a 1:5 split has an adjustment factor of 0.2. Similarly a 1 for 4 bonus 
	issue has an adjustment factor of 4/(1+4)=0.8.</li>
	<li>For rights issues and open offers, if the closing price on the cum-date 
	is not less than the subscription price, then there is an adjustment factor 
	is equal to the ratio of the theoretical ex-entitlement price (<strong>TEEP</strong>) 
	to the closing price. The TEEP is simply the weighted average of the market 
	price for the old shares and the subscription price for the new shares. For 
	example, if the closing price is $4.00, and we have a rights issue of 1 
	share at $2.00 for every 4 shares held, then the TEEP is 
	[(1*$2.00)+4*($4.00)]/5=$3.60, and the adjustment factor is $3.60/$4.00, or 
	0.9. This is equivalent to a 1 for 8 issue at $4.00 (market price) 
	plus a bonus share for every share subscribed, making it a 1 for 9 bonus 
	issue, with an adjustment factor of 9/(1+9)=0.9. For that reason, the 
	adjustment factor in a rights issue is sometimes known as the <strong>bonus 
	factor</strong>. This is the conventional way of adjusting, although in 
	practice if the investor sells his rights in the market before the 
	subscription deadline, then he may or may not get the theoretical price, which is 
	the TEEP minus the subscription price.</li>
	<li>Splits, consolidations and bonus issues (note 2) are normally take into 
	account in the share price graphs you will find on the web, because they are 
	easy to account for. Adjustments for rights issues and open offers (note 3) 
	require knowledge of the closing price on the cum-date, but these are often 
	taken into account, although in some cases, an incorrect adjustment is made 
	with a factor greater than 1, which implies that investors would 
	irrationally have taken up the issue even though they could have bought 
	shares more cheaply in the market.</li>
	<li>For a distribution, the adjustment factor is A=1-D/C, where D is the 
	distribution value and C is the closing price on the cum-date. For example, 
	if a stock closes at $2.00 on the cum-date for a dividend of $0.04, then the 
	adjustment factor A=1-0.04/2.00, or 0.98. If the closing price on the 
	ex-date is $1.96, then the total return for that day will be 
	1.96/(2.00*A)-1, or 0%, as you would expect, because the share price has 
	dropped by the value of the distribution. Put another way, with the 
	dividends you could buy 2 shares on the ex-date for every 98 that you own.</li>
	<li>A company may declare more than one distribution with the same ex-date, 
	for example, a final dividend, a special final dividend, and a bonus 
	warrant. We take care to calculate our adjustment factors on a compound 
	basis, so that the product of the adjustment factors for all the 
	distributions on the same ex-date is equal to the adjustment factor if they 
	had been a single distribution of the same combined value. That is why in 
	the &quot;event details&quot; page for an individual event, the adjustment factor may 
	look slightly odd - for example, if the closing price is $1.00 and there is 
	a final dividend of $0.02 and a special dividend of $0.02, then the 
	adjustment factor for one will be 0.98 and the other will be 
	0.96/0.98=0.97959... , and the product of the two is 0.96. It doesn't matter 
	which way around we process them.</li>
	<li>Most stocks are quoted in HKD currency, but many declare their dividends 
	in a different currency, such as CNY or USD. If the company discloses the 
	actual HKD payout to investors, then we use that figure, but if we are 
	unable to find such a disclosure or none exists, then we calculate the HKD 
	value using mid-market exchange rates on the cum-Date.</li>
	<li>Chinese enterprises (wherever domiciled) and companies from some other 
	places (but not Hong Kong) are now withholding tax on dividends under PRC 
	law. We follow 
	convention and do not account for this, because the tax treatment of 
	investors varies depending on where they reside; some may be able to offset 
	the tax against their domestic tax obligations under international treaties 
	for the avoidance of double-taxation. So we account for dividends gross.</li>
	<li>Reinvesting the value of each distribution in shares of the same 
	company would give you a growing bundle of shares, the value of which tracks 
	the total return. There is of course a timing difference: payment dates come 
	after ex-dates, and we do not account for the cost of money in-between, so in 
	effect there is a slight leverage effect on this &quot;dividends reinvested&quot; 
	return, but that is how well-known market total-return indexes are 
	calculated too, so we are consistent.</li>
	<li>For distributions such as bonus warrants and demergers of shares prior 
	to a listing, we take their value to be the closing price on the first day 
	on or after the cum-Date on which the distributed item is traded. For 
	distributed new securities which are not yet listed, this of course involves an 
	element of forward-looking, but it is better than disregarding the value of 
	such distributions. The alternative for bonus warrants would be to use one 
	of several theoretical option valuation models, but that may not match 
	actual traded prices. Accordingly, there will be times when the Webb-site 
	Total Return does not yet include the value of a distribution, because we 
	don't yet know what it is worth.</li>
	<li>For rights issues or open offers, in some cases a listed warrant has been 
	attached to the new shares. We take the value of that warrant as explained 
	in note 10, and treat it as a discount on the subscription price before 
	calculating the theoretical ex-rights price.</li>
	<li>We do not attribute any value to unlisted non-cash distributions (such 
	as unlisted shares or warrants) unless 
	a cash offer or alternative is being provided. 
	Companies really shouldn't make unlisted distributions, because it amounts to a partial 
	delisting and is usually abusive to outside shareholders.</li>
	<li>If a stock code changes due to a migration from GEM to the Main Board, 
	it doesn't matter to us, because we are tracking the issue, not the stock 
	code, so that we produce a seamless total return series.</li>
	<li>If a company has redomiciled by scheme of arrangement, then this 
	involves exchanging shares in the new holding company for shares in the old 
	company, in a fixed ratio (often 1:1). For STR purposes we treat that as a 
	single stock (and likewise in the directorships database). If the ratio is 
	not 1:1, then it is treated as a stock split.</li>
	<li>Note that if the starting date in a CTR chart is the first day of 
	trading after an IPO, then the total return chart is based on the closing 
	price that day, not the IPO price. If you got the shares in an IPO, you can 
	work out your first-day gain from the closing price and combine it with the 
	total return. To be fair you should deduct the interest you lost on the 
	application money if you received a partial refund or applied with a margin 
	loan - hot IPOs sometimes only allocate you a small fraction of what you 
	applied for, but you lose interest on the whole application money. For 
	example, if you were allocated 1% of the shares you applied for and the 
	interest rate was 4%, then a week's interest amounts to about 400/52=7.7% of 
	the IPO price.</li>
	<li>Behind the curtain, our database contains a table of events for stocks, 
	each with an adjustment factor, and cumulative adjustment factors from 
	multiplying all the previous factors together. The adjusted prices are then 
	derived from the raw share prices and the ratio of the latest cumulative 
	adjustment factors on the relevant dates to produce the Webb-site Total 
	Returns. We use a MySQL database, VBscript, VB.Net, a touch of JavaScript and a lot of coffee to make it all happen.</li>
</ol>
<h3>Disclaimer</h3>
<p>We disclaim any liability for any reliance on Webb-site Total Returns and for any 
	errors or omissions. Please <a href="../contact">report</a> any 
errors that you spot.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
