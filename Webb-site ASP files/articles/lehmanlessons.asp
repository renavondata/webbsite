
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
</head>
<body>

<div id="banner" style="background-color:blue">
	<div class="box1">
		<a href="/" class="nodec">
		<span style="font-size:1.6em;margin:0"><b>Webb-site Reports</b></span><br>
		<span style="font-size:0.9em"><b>News, analysis and opinions since 1998</b></span></a><br>
		<div id="rss" style="float:left;height:30px;padding:2px;margin-top:4px;">
			<a type="application/rss+xml" href="/rss.asp"><img alt="RSS feed" src="/images/RSS28x28.png"></a>
			<div id="social" style="float:right;margin-left:2px">
				<a href="https://x.com/webbhk"><img alt="Follow us on X" src="/images/x27x28.png" style="background-color:black;margin-left:2px"></a>
				<a href="https://www.facebook.com/webbfb"><img alt="Follow us on Facebook" src="/images/facebook28x28.png" style="margin-left:2px"></a>
			</div>
		</div>
		<label for="menuchk" id="menubtn">Menu</label>
		<div id="loginbtn">
			
				<a href="/webbmail/login.asp" class="nodec">log in</a>
			
		</div>
		<div class="clear"></div>
		<div id="volunteer">
			<a href="/webbmail/username.asp" class="nodec"><b>Volunteer to edit the database</b></a>
		</div>
		<label for="srchchk" id="srchbtn">search</label>
	</div>
	<input type="checkbox" id="srchchk" style="display:none">
	<div id="srchblk" style="background-color:inherit;">
		<div class="box4">
			<!-- SiteSearch Google -->
			<form class="box4a" method="get" action="https://www.google.com/search">
				<input type="hidden" name="ie" value="UTF-8">
				<input type="hidden" name="oe" value="UTF-8">
				<input type="hidden" name="domains" value="Webb-site.com">
				<input type="hidden" name="sitesearch" value="Webb-site.com">
				<input type="text" class="inptxt searchws" name="q" maxlength="255" value="search Webb-site.com" onclick="value=''">
				<input type="submit" class="btnFont" name="btnG" value="search">
			</form>
			<form class="box4b" method="post" action="/webbmail/join.asp">
				<input type="text" class="inptxt signup" name="e" value="email address" onclick="value=''">
				<input type="submit" class="btnFont" value="sign up">
				<input type="hidden" name="R1" value="join">
			</form>
		</div>
		<div class="group1">
			<div class="box3">
				<form class="box3a" method="post" action="/dbpub/searchorgs.asp" style="margin-bottom:5px">
					<input type="text" class="inptxt orgsearch" name="n" maxlength="255" value="Organisation" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search organisations">
				</form>
				<form class="box3b" method="post" action="/dbpub/searchpeople.asp">
					<input type="text" class="inptxt famsearch" name="n1" maxlength="255" value="Family name" onclick="value=''">
					<input type="text" class="inptxt famsearch" name="n2" maxlength="255" value="First name" onclick="value=''">
					<input type="submit" class="btnFont" name="btnG" value="search people">
				</form>
			</div>
			<form class="stockbox" action="/dbpub/orgdata.asp" method="get" name="f1">
				<p>Stock code</p>
				<input type="number" class="inptxt stockcode" name="code" min="1" max="99999" maxlength="5" pattern="[0-9]*" onclick="value=''"><br>
				<input type="submit" class="btnFont" name="Submit" value="current" onclick="f1.action='/dbpub/orgdata.asp'">
				<input type="submit" class="btnFont" value="past" onclick="f1.action='/dbpub/code.asp'">
			</form>
		</div>
	</div>
</div>
<div id="menubar" style="background-color:blue;">
	<div class="hnav">
		<input type="checkbox" id="menuchk" style="display:none">
		<ul>
		<li><a href="/">Home</a></li>
		<li><a href="/dbpub/">Database</a></li>
		<li><a href="/webbmail/login.asp">User</a>
			<ul>
				
					<li><a href="/webbmail/login.asp">Log in</a></li>
				
				<li><a href="/webbmail/join.asp">Sign up</a></li>
				<li><a href="/webbmail/forgot.asp">Forgot password</a></li>
				
			</ul>
		</li>
		<li><a href="/articles/">Archive</a></li>
		<li><a href="/pages/tools.asp">Tools</a>
			<ul>
				<li><a href="/pages/howtovote.asp">How to vote</a></li>
				<li><a href="/library/">Reference library</a></li>
				<li><a href="/cg/">CG directory</a></li>
				<li><a href="https://www.icris.cr.gov.hk/csci/login_i.do?loginType=iguest&OPT_01=1&OPT_02=1&OPT_03=1&OPT_04=1&OPT_05=1&OPT_06=1&OPT_07=1&OPT_08=1&OPT_09=1">Companies Registry</a></li>
				<li><a href="http://sdinotice.hkex.com.hk/di/NSSrchMethod.aspx?src=MAIN&lang=EN&in=1">Dealing disclosures</a></li>
				<li><a href="http://www.hsi.com.hk">Hang Seng Index</a></li>
				<li><a href="http://legalref.judiciary.gov.hk/lrs/common/ju/newjudgments.jsp">Judgments</a></li>
			</ul>
		</li>
		<li><a href="/vote/">Polls</a></li>
		<li><a href="/pages/hallofshame.asp">Hall of Shame</a></li>
		<li><a href="/pages/stuff.asp">Other stuff</a>
			<ul>
				<li><a href="/HAMS/">HAMS proposal</a></li>
				<li><a href="/pages/electiondisclosures.asp">Election returns</a></li>
				<li><a href="/articles/PECSregister.asp">PECS register</a></li>
				<li><a href="/pages/loopholes.asp">Listing Loopholes</a></li>
				<li><a href="/books/">Webb-Books</a></li>
				<li><a href="/news/">Old newsletters</a></li>
				<li><a href="/dbpub/subject.asp?c=160">Laughing Stock</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/arrivals/passenger.page">Flight arrivals</a></li>
				<li><a href="https://www.hongkongairport.com/en/flights/departures/passenger.page">Flight departures</a></li>
				<li><a href="https://www.liveatc.net/search/?icao=HKG">Air traffic radio</a></li>
				<li><a href="https://www.hkemobility.gov.hk/en/traffic-information/live/cctv">Road traffic</a></li>
				<li><a href="https://www.weather.gov.hk/en/">Weather</a></li>
				<li><a href="/dbpub/idcheck.asp">HKID check digit</a></li>
				<li><a href="/dbpub/HKBRcheck.asp">HKBR check digit</a></li>
			</ul>
		</li>
		<li><a href="/pages/about.asp">About</a>
			<ul>
				<li><a href="/pages/aboutus.asp">About us</a></li>
				<li><a href="/photos/">Webb-Photos</a></li>
				<li><a href="/pages/mediaroom.asp">Media room</a></li>
				<li><a href="/dbpub/webbchips.asp">Webb-chips</a></li>
				<li><a href="/pages/privacypolicy.asp">Privacy policy</a></li>
			</ul>
		</li>
		<li><a href="/contact/">Contact</a></li>
		<li><a href="/pages/refer.asp">Tell a Friend!</a></li>
		<li><a href="/pages/hkradio.asp">Radio</a>
			<ul>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio1">RTHK 1</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio2">RTHK 2</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio3">RTHK 3 English</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio4">RTHK 4 Classics</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio5">RTHK 5</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/radio6">RTHK 6 CNR</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/radio/pth">RTHK Putonghua</a></li>
				<li><a target="_blank" href="https://www.881903.com/live/881">Commercial Radio</a></li>
				<li><a target="_blank" href="http://www.metroradio.com.hk/Live/1044/">Metro Radio</a></li>		
				<li><a target="_blank" href="https://www.bbc.co.uk/sounds/player/bbc_world_service">BBC World Service</a></li>
			</ul>
		</li>
		<li><a href="/pages/TV.asp">TV</a>
			<ul>
				<li><a target="_blank" href="https://www.abc.net.au/news/newschannel/">ABC News (Australia)</a></li>
				<li><a target="_blank" href="https://www.aljazeera.com/live">Al Jazeera</a></li>
				<li><a target="_blank" href="https://www.bloomberg.com/live">Bloomberg</a></li>
				<li><a target="_blank" href="https://www.dw.com/en/media-center/live-tv/s-100825">DW-TV</a></li>
				<li><a target="_blank" href="https://www.france24.com/en/live">France 24</a></li>
				<li><a target="_blank" href="https://www.nasa.gov/nasatv/">NASA</a></li>
				<li><a target="_blank" href="https://hoy.tv/live">Hoy TV</a></li>
				<li><a target="_blank" href="https://news.now.com/home/live">Now TV News</a></li>
				<li><a target="_blank" href="https://www.rthk.hk/tv">RTHK TV</a></li>
				<li><a target="_blank" href="https://news.tvb.com/tc/live/83">TVB iNews</a></li>
				<li><a target="_blank" href="https://www.viu.tv/ch">Viu TV</a></li>
			</ul>
		</li>
		</ul>
	</div>
</div>
<div class="clear"></div>
<div class="mainbody">

<script type="text/javascript">document.title="Lessons from Lehman Minibonds";</script>

	<div class="summary">Webb-site.com looks beyond the Lehman minibonds fiasco and proposes three steps to reform the regulatory system for the sale of financial products. Without such reforms, there is a risk of either repeated crises or an outright ban on the sale of such products. Tell us what you think in our opinion poll.</div>

<h2 class="center">Lessons from Lehman Minibonds<br>
<span class="headlinedate">20 October 2008</span></h2>
<p class="center"><strong>
		<a href="../vote/result.asp?p=27">Retail Financial Products poll results</a></strong></p>
<p>As most readers will know by now, tens of thousands of retail investors in Hong 
Kong and Singapore have been affected by the failure of
<a target="_blank" href="http://www.lehman.com">Lehman Brothers Holdings Inc.</a> 
(<strong>LBHI</strong>), which went into
<a target="_blank" href="http://www.lehman.com/press/pdf_2008/091508_lbhi_chapter11_filed.pdf">
Chapter 11</a> bankruptcy protection on 15-Sep-08. The focus of this article is not on cleaning up the Minibond 
debris, but on how we can reform the regulatory system for structured financial 
products to reduce the impact of failures like Lehman in future. We propose 
three main measures in this article. Without such reforms, there is a risk that 
the authorities may just ban retail sales of such products altogether. So if you 
are a distributor or issuer, you have an interest in supporting these measures 
too.</p>
<h3>Background</h3>
<p>Lehman created several special-purpose investment vehicles which 
issued unlisted structured financial products through retail distributors, i.e. 
banks and stockbrokers. The issuers were called Pacific International Finance Ltd (<strong>PIF</strong>), 
Atlantic International Finance Ltd (<strong>AIF</strong>) and Pyxis Finance Ltd 
(<strong>Pyxis</strong>). The products issued by PIF were marketed as 
&quot;Minibonds&quot;, by AIF as &quot;ProFund Notes&quot; and by Pyxis as &quot;Pyxis Notes&quot;. 
A
<a target="_blank" href="http://www.sfc.hk/sfc/html/EN/general/general/lehman/lehman_structure_products.html">
list</a> of these can be found on the SFC's web site. According to the SFC, the 
total
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=08PR150">
outstanding principal</a> of the products is HK$12.73bn, of which $12.57bn is 
PIF Minibonds. In addition, there were credit-linked notes which referenced 
LBHI, in the amount of $2.91bn. Altogether then, the exposure is about HK$15.6bn 
(US$2.0bn).</p>
<p>There are 36 different series of PIF Minibonds - the advertisement for the 
latest one, Series 36, is
<a target="_blank" href="http://www.sfc.hk/sfcCOPro/EN/displayFileServlet?refno=0504&amp;fname=080409_MB36_Take1_eng.pdf">
here</a>, in which the coordinating distributor was Sun Hung Kai Investment 
Services Ltd (<strong>SHKIS</strong>, owned by Sun Hung Kai &amp; Co Ltd, 0086.HK). 
The
<a target="_blank" href="http://www.sfc.hk/sfcCOPro/EN/displayFileServlet?refno=0504&amp;fname=locked%20-08030689_minibond_36_ip.pdf">
issue prospectus</a> for Series 36 shows that the series was distributed by 
Chong Hing Bank, Dah Sing Bank, KGI Asia, Mevas Bank, Public Bank (HK), Wing 
Lung Bank and SHKIS. Other banks were involved in other series.</p>
<p>You will see that it does say on the front cover &quot;The Notes are not 
principal protected&quot;. In this example, the investor was receiving a 
&quot;coupon&quot; of 5.5% in exchange for taking the risk that any one of 7 companies 
would default on their reference debts, in which case the holder would only get 
back whatever the defaulted debt was worth, if anything, minus expenses. The 
reference debts for 3 of them (HSBC Bank PLC, DBS Bank Ltd and Standard 
Chartered Bank) were subordinated notes. However, none of the 7 companies has 
defaulted - it was only the Lehman collapse which caused the problems.</p>
<p>Each SIV took the issue proceeds (minus commissions to the distributors and 
other expenses) and invested them in a bunch of collateral, including swaps with 
a Lehman entity guaranteed by LBHI. In our Series 36 example, the collateral was 
synthetic Collateralised Debt Obligations (CDOs). PIF entered into a swap with 
Lehman Brothers Special Financing Inc (<strong>LBSF</strong>) to swap the 
interest and principal from the CDOs for part of the amounts due on redemption 
of the notes. PIF also entered into a Credit Default Swap (<strong>CDS</strong>) 
with LBSF under which PIF received a payment in return for insuring the 7 
reference credits against default. If any of them had defaulted, then LBSF would 
receive the collateral and PIF would receive the value of the defaulted debt. 
LBSF was guaranteed by LBHI. So in effect, Minibond investors were putting up 
cash to underwrite compound credit default swaps. </p>
<p>LBHI was also the guarantor of collateral 
for the ProFund Notes, the Pyxis Notes and for some series of Minibonds. On 
17-Sep-08, as a result of the bankruptcy filing, Lehman Brothers Asia Ltd
<a target="_blank" href="http://www.lehman.com/press/pdf_2008/0917_LBAsia_unlisted_structured_products.pdf">
announced</a> it had suspended the provision of quotes or liquidity in the 
products.</p>
<h3>Three steps forward</h3>
<p>If any good is to come from the Minibond saga, then there are 3 things that 
the Government and legislators should act on:</p>
<ol>
	<li>A unified financial services regulator</li>
	<li>A statutory cooling-off period for cancellation of purchases of financial products</li>
	<li>Mandatory disclosure of commissions in all marketing and contractual 
	documents.</li>
</ol>
<p>Let's deal with these in turn.</p>
<h3>1. A unified regulator</h3>
<p>With the best will in the world, we cannot expect a comprehensive and 
consistent approach to regulation when so many regulators regulate in the same 
space. Currently, we have four main regulators and four sub-regulators. The four 
main financial services regulators are:</p>
<ul>
	<li>the <a target="_blank" href="http://www.hkma.gov.hk/">Hong Kong Monetary 
	Authority</a> (<strong>HKMA</strong>) which runs our currency board, manages 
	our shrinking quasi-sovereign wealth fund (known as the Exchange Fund) and 
	regulates banks;</li>
	<li>the <a target="_blank" href="http://www.sfc.hk">Securities and Futures 
	Commission</a> (<strong>SFC</strong>), which regulates exchanges, securities 
	and futures brokers and fund managers, authorises fund prospectuses and has 
	statutory oversight of false or misleading disclosure by listed companies 
	under the so-called &quot;dual filing&quot; scheme;</li>
	<li>the <a target="_blank" href="http://www.mpfa.org.hk">Mandatory 
	Provident Fund Schemes Authority</a> (<strong>MPFA</strong>), which 
	regulates the retirement savings scheme; and</li>
	<li>the <a target="_blank" href="http://www.oci.gov.hk">Office of the 
	Commissioner of Insurance</a> (<strong>OCI</strong>), which regulates 
	insurers.</li>
</ul>
<p>The four sub-regulators are:</p>
<ul>
	<li>The Stock Exchange of Hong Kong Limited (owned by Hong Kong Exchanges 
	and Clearing Ltd, 0388.HK) which regulates Listed Companies under the 
	oversight of the SFC;</li>
	<li>the self-regulatory <a target="_blank" href="http://www.hkfi.org.hk">
	Hong Kong Federation of Insurers</a> (<strong>HKFI</strong>), which operates 
	the Insurance Agents Registration Board</li>
	<li>two self-regulatory bodies of insurance brokers
	<a target="_blank" href="http://www.oci.gov.hk/download/brok.pdf">approved</a> 
	by the Commissioner of Insurance, namely the
	<a target="_blank" href="http://www.hkcib.org">Hong Kong Confederation of 
	Insurance Brokers</a> and the
	<a target="_blank" href="http://www.piba.org.hk">Professional Insurance 
	Brokers Association</a>.</li>
</ul>
<p>Apart from arranging insurance for your home or car, the insurance agents and brokers do of 
course also sell long-term savings products such as endowment policies or 
unit-linked insurance.</p>
<p>This alphabet soup of regulators results in overlapping mandates as well as 
gaps between their mandates. There are duplications of resources, and inevitably 
inconsistent approaches to guidance and supervision of selling intermediaries. If a 
product is mis-sold by a stockbroker, you complain to the SFC. If it is mis-sold 
by a bank, you complain to the HKMA. And if a life assurance product is mis-sold 
by an insurance broker, then you are back in self-regulatory land.</p>
<p>Out of crisis comes reform. As we have said before, what Hong Kong needs is a 
single financial services regulator (let's call it the Financial Services 
Commission) which will regulate the issue, management and sale of all financial 
products, both assets (savings, investment and insurance products) and 
liabilities (personal loans, mortgages, credit cards and so on). This would 
combine the roles of the SFC, COI, MPFA and part of the HKMA. The HKMA could 
retain its role as a quasi-central bank, supervising capital adequacy of the 
banking system, running the currency board and managing the Exchange Fund, in which the 
money backing the peg and the 
public wealth are comingled.</p>
<h3>2. A Statutory Cooling-off Period</h3>
<p>After a failure like Lehman, arguments about mis-selling are bound to focus 
on whether the investor understood the product and whether the risks were 
properly explained to him, and whether the product was &quot;suitable&quot; for the 
investor. The only certain winners in such arguments are 
lawyers. Except in blatant cases, the argument will often come down to a dispute 
over what was said, while the bank will normally have covered itself with 
written documents which the client signed, acknowledging the risk and declaring 
that they had understood it. The document will often also contain a &quot;no 
representations&quot; clause which states that this is the whole agreement, and the 
client is not relying on any other representations made by the distributor and is 
relying only on the prospectus. So although we have laws against 
misrepresentation, it will be an uphill struggle for any client to bring a 
successful claim of mis-selling, unless they happened to have a recording of the 
over-the-counter conversation.</p>
<p>These sales often take place in a high pressure environment. The client might 
have walked into a bank to make a time deposit and walked out with a Minibond, 
never having had time to properly read or understand the product leaflet, let 
alone the prospectus. For this reason, many countries now have a statutory 
&quot;cooling-off&quot; or cancellation period, which allows the customer enough time to 
leave the &quot;hot&quot; sales environment and go home, talk to friends, family or 
advisers, read the documents and then change their mind and get their money 
back.</p>
<p>Hong Kong does have a cooling-off period, but only for Long Term Insurance 
Policies, under the
<a target="_blank" href="http://www.hkfi.org.hk/download/e_abt.cooling20021129.pdf">
Cooling-off initiative</a> of the HKFI. This allows 21 days from the date of 
signing the application form, 14 days from the issue date of the policy and 5 
days after the delivery date of the policy, whichever is later. During that 
period, the policyholder can cancel the policy for a full refund (less a market 
value adjustment where applicable).</p>
<p>A similar approach must be taken with unlisted structured products. Examples 
can be readily found in other markets.
<a target="_blank" href="http://www.fido.asic.gov.au/fido/fido.nsf/byheadline/Cooling+off+rights?openDocument">
Australia</a> has a 14-day cooling-off period for investment life insurance 
products, retirement savings accounts, various non-life insurance, many managed 
investment products and superannuation products. This is contained in
<a target="_blank" href="http://law.ato.gov.au/atolaw/view.htm?docid=PAC/20010050/1019B">
Section 1019B of the Corporations Act 2001</a>. In Singapore, in Jul-03, the 
Monetary Authority
<a target="_blank" href="http://www.mas.gov.sg/resource/legislation_guidelines/securities_futures/sub_legislation/NoticeCancellation26Jun2003.pdf">
introduced</a> a 7-day cancellation period for Unit Trusts.</p>
<p>Of course, some investors, even with a cooling-off period, will never inform 
themselves about what they have bought. In that case, they have nobody to blame 
but themselves. A golden rule of investing: if you don't understand what you are 
buying, then don't buy it.</p>
<h4>For other consumer services and products too</h4>
<p>This approach to consumer protection could and should be extended to other products 
and services where 
there is either a long period of payment obligations, a large purchase price, or 
a long period of service or product delivery. For example, a purchase of a 
timeshare in a holiday home, or the purchase of a new apartment, or an 18-month 
commitment to a pay-TV or mobile phone subscription. Cancellation periods should 
be long enough to allow the consumer to reach an informed decision (if they 
choose to inform themselves) but short enough to give the seller a binding 
contract within a reasonable period, to avoid abuse. We would suggest 14 
calendar days excluding the day of the contract. Any deductible charges for use 
of the service during the cancellation period (e.g., phone calls or pay TV) or 
market value adjustment methods (e.g. a drop in unit trust NAV) should be 
disclosed at the point of purchase.</p>
<p>In the case of market value adjustments, they must be symmetric, allowing the 
buyer to keep any market gain as well as bear any loss up to the point of 
cancellation. Vendors should not be allowed to deduct 
selling commissions or expenses, otherwise the cancellation price could become a 
deterrent to cancellation in itself.</p>
<p>Initially, banks, phone and TV companies and other affected vendors might 
object to this proposal as an interference in private contract, but they would 
eventually realise that it also increases protection for them against 
allegations of mis-selling, because the consumer has had adequate time to fully 
understand what they have agreed to and seek advice if necessary. The vendor can 
then be more robust if a customer tries to wiggle out of a contract after the 
cancellation period has expired.</p>
<h3>3. Mandatory disclosure of commissions</h3>
<p>In the law of agency, it is illegal for an agent of a principal to receive a 
secret commission from a third party, unless the principal has consented. It is 
what is colloquially known as a &quot;kickback&quot;. In financial services, we need to go 
further than that. It should not be possible to contract out of the disclosure. 
Too may banks and brokers put their staff forward as your &quot;personal financial 
adviser&quot; when in reality the bank is paid for sales by the issuer of the financial 
products, not by the purchaser. Deep in the small print of every contract, that 
fact is acknowledged but the amount is not disclosed.</p>
<p>In our example of Series 36 PIF Minibonds, the issue prospectus states on 
page 14:</p>
<blockquote>&quot;We will pay each distributor a commission based on the amount 
of Notes they sell. These commissions come out of the proceeds of issue of our 
Notes.&quot;</blockquote>
<p>There is no disclosure of the amount. The advertisement (the only thing most 
investors read) didn't even disclose that a commission would be paid. The 
statement is also contradicted by a statement on page 19, which says:</p>
<blockquote>&quot;We always use <strong>all</strong> of the proceeds of issue 
of our Notes to buy the assets on which those Notes are secured.&quot; (emphasis 
added)</blockquote>
<p>In our view, that's false and misleading. They didn't use
<u>all</u> of the proceeds to buy assets - some of the 
proceeds are used to pay commissions to distributors.</p>
<p>A light bulb would go on in even the dimmest customer head if they were told, 
in every marketing document of a financial product, in clearly readable typeface, that the bank would 
be receiving 5% commission on each sale of the product - or whatever the rate 
and basis is. It would cause the customer to realise that at most, what they 
were buying was only worth 95 cents on the dollar at the outset - and probably 
much less, as it also has to include an expected profit for the issuer, 
otherwise they wouldn't issue it in the first place.</p>
<p>Similarly, how many people would commit to a 10-year life insurance policy, 
cancelling the previous one sold by the same agent before he moved to a new 
insurer, if they knew that the agent gets a commission equivalent to the first 9 
months of premiums? This &quot;twisting&quot; is one of the reasons why insurance agency 
teams change hands so often - it gives them a chance to sell to the same 
customer again, or more accurately, to sell the customer to the insurer.</p>
<h4>SFC response</h4>
<p>The SFC is well aware of the hidden commissions problem but has made no 
visible progress in addressing it, perhaps due to lack of political support, in 
which case the Minibond fiasco now creates a window of opportunity. In a
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=05PR36">
press release</a> on the Selling Practices of Licensed Investment Advisers on 
23-Feb-05, the SFC said:</p>
<blockquote>&quot;In addition, the SFC plans to consider and engage the 
investment advisory industry to explore information disclosure issues such as 
the feasibility and benefits of requiring investment advisers to disclose to 
investors the commission and rebates received from product providers.&quot;</blockquote>
<p>Plan...consider...engage..explore...feasibility...how tentative can you get? On 13-Apr-08, 
some 5 months before Lehman imploded, <em>Webb-site.com</em> wrote to the SFC asking them what 
progress they had made in the last 3 years on this issue. 
<a target="_blank" href="http://www.sfc.hk/sfc/html/EN/aboutsfc/structure/commission/p_alexa_lam.html">Alexa Lam</a>, the Deputy 
CEO and Executive Director of the Investment Products Division, responded on 
16-Apr-08:</p>
<blockquote>&quot;<span LANG="EN">Following the issue of the 
press release in February 2005 mentioned in your email, the SFC discussed with 
relevant stakeholders the question of disclosure of commission rebates by 
distributors to clients. Not surprisingly, distributors generally did not favour 
disclosure of commission rebates as they considered that they would be 
disadvantaged competitively. Of course in formulating our regulatory policy, we 
have to take tough action where doing so would be the right thing even though it 
is unpopular with certain sectors of the industry. But looking around it is true 
that there is no consistent approach to dealing with this issue among major 
markets.</span>&quot;</blockquote>
<p>Regulatory deficiencies in other markets should be no excuse 
for not putting our own house in order. Why must HK always be a follower and never a 
leader when it comes to better regulation? Hong Kong must act now to require 
full disclosure of what intermediaries are paid for distributing financial 
products, including but not limited to life insurance, unit trusts and 
structured products.</p>
<h3>Conclusions</h3>
<p>In the wake of the Minibond fiasco, there should certainly be 
political support for the three measures outlined above. We should note 
that there is an alternative school of thought circulating among policy makers 
that the retail sale of structured financial products should simply be banned, 
as it creates too much trouble when things go wrong. <em>Webb-site.com</em> is not in favour of 
prohibition - it goes against the principle of free markets. Besides, there are 
plenty of financial products out there with high risk, such as derivative 
warrants listed on SEHK, some of which are quite exotic, not to mention 
complicated combination bets on horse races at the Jockey Club. But given that 
the prohibition school of thought may gain traction, the issuers and 
distributors should strongly consider supporting the above three steps as a 
desirable compromise.</p>
<h3>Footnote: derivative warrants</h3>
<p>Somewhat forgotten by the media in all this is that LBIH also had outstanding 134 series 
of derivative warrants which were listed on the Stock Exchange. These were all 
suspended from trading on the bankruptcy. There has been less noise about that as most of 
them were call warrants which would have crashed in value with the market and 
may expire worthless anyway, 
although there were some put warrants on the HSI which would now be worth a lot 
more. 35 of the warrants
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080930/LTN20080930713.pdf">
expired worthless</a> (not because of the bankruptcy) on 30-Sep-08. A similar 
thing happened when another derivative warrant issuer, <a href="../dbpub/articles.asp?p=834">Peregrine 
Investments Holdings Ltd</a>, went bust in Jan-98.</p>

<p class="center"><strong>
		<a href="../vote/result.asp?p=27">Retail Financial Products poll results</a></strong></p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11236">LEHMAN BROTHERS ASIA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=40248">Lehman Brothers Holdings Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10806">Mandatory Provident Fund Schemes Authority</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
		</ul>
	<hr>
<p><a href="/webbmail/join.asp">Sign up for our <b>free</b> newsletter</a></p>
<p><a href="/pages/refer.asp">Recommend <i>Webb-site</i> to a friend</a></p>
<p><a href="/pages/aboutus.asp">Copyright &amp; disclaimer</a>, <a href="/pages/privacypolicy.asp">Privacy policy</a></p>
<p><a href="#top">Back to top</a></p>
<hr>
</div>

</body>
</html>