<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Notes on Webb-site Adviser League Tables</title>
<link rel="stylesheet" type="text/css" href="../templates/main.css"/>
<%Dim title
title="Webb-site Adviser League Table notes"%>
<title><%=title%></title>
</head>

<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<ul class="navlist">
	<li id="livebutton">Notes</li>
	<li><a href="roles.asp">All league tables</a></li>
</ul>
<div class="clear"></div>
<ol>
	<li>The League Table covers companies and REITS with a primary listing on either the Main Board or Growth 
Enterprises Market (GEM) of the Stock Exchange of Hong Kong Ltd.</li>
	<li>For a detailed 
	explanation of Webb-site Total Returns, <a href="TRnotes.asp">click here.</a></li>
	<li>There are two types of adviserships: those which are &quot;1-time&quot; 
	transaction-based, such as a fairness opinion in a circular, and those which 
	are continuing relationships, such as auditors or bankers. For 1-time adviserships, the returns are 
	measured over a chosen fixed period from the date of the appointment, or up to the latest 
	trading date if sooner. For continuing advisers, the returns 
	are between the chosen dates, or for the duration of the relationship if 
	that starts later or ends earlier.</li>
	<li>In the League Table, click on an adviser's name to see the underlying adviserships, total returns and CAGRs for each client.</li>
	<li>On the adviserships page, click on the adviser type (e.g. 
	&quot;compliance adviser&quot;) to go back to the League Table. Click on a client name 
	to see all the advisers of that client. Click on a total return figure to 
	see the chart of total return for the ordinary shares or units of that 
	client. If no date range is specified for a continuing adviser, then click 
	on the &quot;Current&quot; button to show only current adviserships, or click on the 
	&quot;History&quot; button to show former positions. Entering a date 
	overrides this.</li>
	<li>If an adviser was appointed while a stock was suspended or before 
	listing, then returns are measured from the first day of trading thereafter.</li>
	<li>Periods of less than 180&nbsp;days are ignored in the CAGR, because shorter periods produce 
	more distorted annualised returns.</li>
	<li>If a client has appointed the same adviser more than once, then 
	the average CAGR includes all such appointments, so it is weighted towards 
	companies which the adviser has served more often. For example, if an 
	adviser has acted as &quot;independent financial adviser&quot; on 5 occasions, then 
	the annualised return since each occasion will be included in the average.</li>
	<li>Positions are only accredited if found in corporate disclosures, not 
	self-accredited by the adviser.</li>
	<li>We try to capture all appointments as they become known. In the case of 
	adviserships disclosed in annual reports (such as bankers and lawyers), we 
	take the date of appointment to be the date of the directors' report in the annual report. This is usually 
	the date of the final results announcement, although the annual report is 
	published later. Likewise, the first annual report in which the advisor 
	ceases to appear is taken as the date of cessation.</li>
	<li>For an Independent Financial Adviser (IFA), reporting 
	accountant or 1-time valuer under the 
	Listing Rules, we take the date of the circular containing the adviser's 
	letter or report. Caution: this does mean that by the time of the 
	appointment, the market price often has already reacted to the proposal in 
	the circular.</li>
	<li>For an 
	appointment of an auditor, we take the date of appointment or, if it is 
	subject to shareholder approval, then the date of approval. In the case of 
	an IFA under the Takeover Code, we take the date from the announcement of 
	appointment.</li>
	<li>The database covers all adviserships since 1990. Please
	<a href="../contact">contact us</a> with any errors or omissions.</li>
	<li>For &quot;IFA (Takeover Code)&quot; and &quot;FA to offeror&quot;, these roles are under the 
	Takeover Code, and may relate to successful privatisations, in which case 
	there will not be 180 days after that to measure returns. However if the 
	listing is maintained after a general offer (as it often is), or if the 
	offer fails to become unconditional, then there will be a subsequent return 
	which may be lower than market returns due to the ending of the general 
	offer. The IFA role may also be related to seeking independent shareholders' 
	approval of a &quot;whitewash waiver&quot; in which a change of control occurs without 
	a general offer.</li>
	<li>For advisers which have only had a few appointments, the average CAGR may be 
	less significant. Their clients may have encountered good fortune or misfortune, 
	or their clients' stock may have been pumped or dumped.</li>
	<li>There is not necessarily any causal relationship between advisers and 
	returns, and none is implied by Webb-site.</li>
	<li>As always, click on a column-heading to sort.</li>
</ol>
<h3>Copyright</h3>
<p>Webb-site League Tables and Webb-site Total Returns are creative works over 
which copyright is asserted. You may freely quote the rankings <strong>provided</strong> 
that attribution is given to Webb-site.com and you state the inputs you made 
when producing the ranking table.</p>
<h3>Disclaimer</h3>
<p>We disclaim any liability for any reliance on Webb-site League Tables, Webb-site Total Returns and for any 
	errors or omissions. Please <a href="../contact">report</a> any 
errors that you spot.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
