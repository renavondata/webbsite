
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

<script type="text/javascript">document.title="Asian Citrus fiasco";</script>

	<div class="summary">We look at the background of Asian Citrus, owner of a former Tropicana orange plantation in Guangxi, whose lease was terminated in mysterious circumstances, and the chaotic HK debut last week in which HK$291m changed hands at inflated prices. In response to numerous investor e-mails we consider what action they might take. The HK Law Reform Commission has proposed allowing class actions - add your voice to that.</div>

<h2 class="center">Asian Citrus fiasco<br>
<span class="headlinedate">30 November 2009</span></h2>
<p>This article responds to numerous e-mails <em>Webb-site</em> has received from people who 
bought shares of orange-grower <a href="../dbpub/articles.asp?p=29973">Asian 
Citrus Holdings Ltd</a> (<strong>Asian Citrus</strong>, 0073.HK, ACHL.L) at 
inflated prices on its 
HK debut last week.</p>
<h3>Company background</h3>
<p>Asian Citrus was admitted to trading on the 
<a target="_blank" href="http://www.londonstockexchange.com/companies-and-advisors/aim/aim/aim.htm">Alternative Investment Market</a> of 
the London Stock Exchange on 3-Aug-05. Its Chairman, CEO and 34.65% shareholder 
is Mr <a href="../dbpub/positions.asp?p=10562">Tony Tong Wang Chow</a> (<strong>Tony Tong</strong>). The group's first 
orange plantation (which was acquired in established state) is 30.9 sq km in Hepu 
county, Guangxi province. The second, which the group established, is 37.1 sq km 
in Xinfeng county, Ganzhou, Jiangxi province. A third, under development, is in 
Dao county, Hunan province.</p>
<p>Reading the 2005 
<a target="_blank" href="http://www.asian-citrus.com/pdf/listing_documents.pdf">AIM admission document</a> and the 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091123/LTN20091123014.pdf">HK listing document</a> together 
reveals some inconsistencies. The 2005 document says</p>
<blockquote>&quot;In late 1999, in order to encourage foreign investment in 
Hepu county, the Hepu Government approached Mr Tong Wang Chow...&quot;</blockquote>
<p>The 2009 document says:</p>
<blockquote>&quot;In 2000, the Hepu Government appointed Mr Pang Yi (who was 
previously an employee of a state-owned company in Hepu who left his employment 
in 1997) to find a suitable Hong Kong investor to invest in and operate the Hepu 
Plantation...As the Hepu Government had requested for a Hong Kong investor, Mr. 
Pang Yi invited Mr Tong Wang Chow...&quot;</blockquote>
<p>So which is it, 1999 or 2000? And who approached Mr Tong, the Government, or 
Mr Pang Yi?</p>
<p>Mr Pang Yi was formerly the &quot;investment service 
supervisor&quot; of Guangxi Zhuang Autonomous Region and joined the Asian Citrus 
group in 2000.</p>
<h4>The Tropicana mystery</h4>
<p>The 2009 document says Hepu Plantation:</p>
<blockquote>&quot;was previously operated by Tropicana China Beihai Food 
Company Limited and was left unmanaged after the lease was terminated with 
Tropicana China Beihai Food Company Limited&quot;.</blockquote>
<p>The 2005 documents adds:</p>
<blockquote>&quot;The plantation had been developed previously and operated by 
a US fruit juice company since 1997.&quot;</blockquote>
<p>Both documents are silent on which party terminated the lease and why. 
Investors should be told, because it might give them some idea of the risks 
involved in the current leases, particularly if the Tropicana lease was 
terminated by the landowners or Government. On the other hand, if Tropicana 
terminated the lease, surrendering the land and equipment on it, then did they 
think the plantation was not viable? Regardless of who terminated it, did 
Tropicana receive any compensation for the lease termination?</p>
<p>As of 30-Jun-97, Tropicana China Beihai Food Company Limited (<strong>TCBF</strong>) 
was wholly-owned by Tropicana China Investments Ltd (<strong>TCIL</strong>), 
which was <a target="_blank" href="http://www.secinfo.com/dsvr4.87U1.7.htm">51% 
owned</a> by Seagram Co Ltd. TCIL was incorporated in HK on 7-Jan-93 as &quot;Dole 
China Investments Ltd&quot;. In 1995, Seagram, which already owned Tropicana,
<a target="_blank" href="http://www.nytimes.com/1995/01/06/business/company-news-seagram-acquiring-dole-s-juice-unit.html">
bought</a> Dole Food Company's juice unit. The HK company was renamed &quot;Tropicana 
China Investments Ltd&quot; on 30-Apr-97. Seagram
<a target="_blank" href="http://www.nytimes.com/1998/07/21/business/pepsico-to-pay-3.3-billion-for-tropicana.html">
sold</a> Tropicana to Pepsi in 1998. The HK company removed its brand by 
changing its name to TCIL Limited on 8-May-00 and was wound up in 2002.</p>
<h4>Connected transactions</h4>
<p>On 26-Jul-01, <a href="../dbpub/orgdata.asp?p=12496">Chaoda Modern 
Agriculture (Holdings) Ltd</a> (<strong>Chaoda</strong>, 0682) bought 49% of 
Newasia Global Ltd (<strong>Newasia</strong>) from Tony Tong for HK$20m and 
RMB87.65m (HK$81.16m), as
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010727/LTN20010727074.doc">
announced</a> by Chaoda at the time. Newasia later became the core of Asian 
Citrus when it was admitted to AIM. As a result, Chaoda now owns 28.29% of Asian 
Citrus. Like Chaoda, Asian Citrus buys &quot;organic fertilisers&quot; from Fujian Chaoda 
Group Ltd (<strong>Fujian Chaoda</strong>), a private PRC company which is 95% 
owned by Mr <a href="../dbpub/natperson.asp?p=9353">Kwok Ho</a>, the Chairman 
and controlling shareholder of Chaoda. It remains unclear why Mr Kwok has never 
seen fit to inject the fertiliser company into Chaoda and thereby eliminate 
substantial ongoing connected transactions which amounted to RMB661m last year, 
or about one third of Chaoda's cost of sales. As Fujian Chaoda is a private 
company, we don't know how much it makes or loses on these transactions.</p>
<h4>Split registers</h4>
<p>Asian Citrus now has two share registers: one in Jersey and one in Hong Kong, 
with a cumbersome procedure for moving stock between them. According to the HK 
listing document, by 19-Nov-09, arrangements had been made by holders of 
80,556,200 shares, or 10.5% of Asian Citrus, to move their shares to the HK 
register. These would then be deposited into CCASS if they are to be tradable. 
According to the Webb-site.com CCASS Analysis service, 2.8% was in CCASS
<a href="../ccass/choldings.asp?d=2009-11-26&amp;hide=&amp;sort=holddn&amp;i=5509">
on 26-Nov-09</a>, increasing to 9.63%
<a href="../ccass/choldings.asp?d=2009-11-27&amp;hide=&amp;sort=holddn&amp;i=5509">
on 27-Nov-09</a>. The first settlements will be today (30-Nov-09), 2 days after 
the first transactions.</p>
<h4>Don't call me &quot;Hon&quot;</h4>
<p>One little amusing note: the HK listing document names one of the directors 
as &quot;Mr. Hon Peregrine Moncreiffe&quot;. Perhaps he didn't even read his own biography 
in the document. &quot;Hon&quot; is not a given name, it's an abbreviation of his courtesy 
title, meaning &quot;Honourable&quot;, and under the British peerage system, you are 
either a common &quot;Mr.&quot; or &quot;Hon.&quot; but not &quot;Mr. Hon&quot;. His full name, not given 
in the document, is
<a href="../dbpub/positions.asp?p=54802">Peregrine David Euan Malcolm Moncreiffe</a>.</p>
<h3>The HK debut/fiasco</h3>
<div class="rightpicbox" style="max-width:250px">
<img alt="" src="../images/orangesplit.jpg" style="max-width:250px"><br>
<strong>Asian Citrus, after its 10 for 1 split</strong>
</div>
<p>
Now we get to our pithy comments on the juicy part of this story.
On 2-Nov-09, Asian Citrus split its shares 10 for 1. However, the listing document 
contains, in the &quot;Summary&quot; section on page 7, earnings per share data 
(<strong>EPS</strong>) without 
any adjustment for the split. The same information is repeated on page 160 in 
the &quot;Financial Information&quot; section, again without adjustment. The document also states, on page 183, 
that net tangible asset value (<strong>NTAV</strong>) 
per share (as at 30-Jun-09) was RMB37.3 (that's about HK$42.2), without mentioning or adjusting for the 
subsequent stock split. Page I-5 of the accountants' report by
<a href="../dbpub/adviserships.asp?p=22184">Baker Tilly Hong Kong Ltd</a> (page 
213 of the PDF) also contains unadjusted earnings per share (as contained in the 
original financial statements) but does not include a cross-reference to section 
C of that report, where the record is adjusted.</p>
<p>
So it is not until the appendices, page I-64, in section C of the Accountants' Report 
(&quot;Subsequent Events&quot;, page 272 of the PDF), 
that a diligent reader can find adjusted EPS data along with the Chinglish statement 
&quot;Should the Subdivision has taken place at the beginning of the Relevant 
Period...&quot; (notably, this report was signed by Andrew David Ross, whose English 
ought to be better than that - did he read it before signing off?). At no point 
in the prospectus is there an adjusted NTAV.</p>
<p>
In the &quot;Share Capital&quot; section on pages 134-137, there are tables of historic 
share prices and volumes on the AIM and PLUS market, which are adjusted for the 
stock split, as noted in a small-print footnotes. The split, or &quot;subdivision&quot; is 
also mentioned in the &quot;Statutory and General Information&quot; in Appendix IV (pages 
335, 336 and 349 of the PDF).</p>
<p>Comparing the post-split share price with the pre-split NTAV per share (or 
earnings per share) is like comparing apples 
and oranges, or more accurately, one segment with a 10-Segment orange. But 
unfortunately, that is exactly what the Stock Exchange of Hong Kong did, by 
posting in the text field of their trading system on the first day of trading 
the message &quot;AS AT 30/6/09 NTAV: RMB37.3&quot;. This is shown highlighted at the bottom of the 
screen-capture below:</p>
<p class="center">
<img alt="" src="../images/asiancitrusscreen.gif" style="max-width:100%"></p>
<p>An alert asset manager contacted <em>Webb-site.com</em> by e-mail, and at 
11:48 on Thursday (26-Nov-09) your editor fired off a complaint to HKEx and SFC, 
suggesting that they suspend the stock until SEHK can stop publishing an 
unadjusted NAV. Otherwise, investors would get the impression that the stock has 
10 times more asset backing than it really does. The stock had opened at a high 
of HK$51.25 (in the pre-market auction session) and had been falling all 
morning.</p>
<p>The stock was suspended at $19.94 at 11:57, just nine minutes after our 
complaint was sent, after turnover of 12.72m shares for HK$291.06m, or an 
average $22.88 per share. When trading resumed on Friday, it crashed to a 
closing price of $7.10.</p>
<h3>Who is responsible?</h3>
<p>The regulators normally have a standard response to media inquiries about 
companies, that they &quot;do not comment on individual cases&quot;. However, in 
the Asian Citrus case, HKEx, facing a barrage of criticism, made an exception 
and issued a
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/0911263news.htm">
statement</a> on Thursday evening stating that it had requested Asian Citrus &quot;to 
identify whether there was an open market for the company's securities&quot;. We're 
not sure what &quot;identify&quot; means in this context, but the implied question of 
market manipulation by third parties is one that the SFC can investigate, while 
the company has very little means of doing so.</p>
<p><strong>The SFC should investigate whether there was any conspiracy to fix the 
opening market price</strong> in order to lead the first day's trading at a price which 
could only be justified if the stock had not been split. Keep in mind that there 
are no new issued shares in this listing, so the initial sellers must have been 
people who had transferred their shares from the London market, in which case 
they should have been well aware that the London market was trading on a 
post-split basis and had closed the previous day at 45.75 pence, equivalent to 
HK$5.89. </p>
<p>HKEx also stated that it &quot;would like to remind the investing public that they should only 
make reference to, and only rely on, the company's listing document...&quot;. The 
subtext of that statement appears to be &quot;don't rely on our trading screen - we 
got the NTAV from the listing document&quot;.</p>
<p>However, it is not as simple as that. Although every listing document carries 
a legal disclaimer of liability by SEHK, it is a fact that to publish such a 
document, you have to first go through the &quot;dual filing&quot; clearance of the 
document through the Stock Exchange's Listing Division and the SFC's Corporate Finance 
Division. Both regulators should have realised that the per-share 
information laid out on pages 7, 160 and 183 was misleading by omission of the 
stock split, but apparently neither of them did. At the very least, the adjusted 
per-share figures should have been included. Of course, the Summary section is just a summary and, as it says, &quot;does not contain all the 
information that may be important to you.&quot; Nevertheless, the summary should not 
present information in a misleading way, and in our view, it did, and so did 
pages 160 and 183.</p>
<p><strong>To avoid future repeats of this fiasco, SEHK should amend its Listing Rules 
to specifically require that historic per-share data be adjusted for any 
subsequent stock splits, consolidations (reverse splits) and bonus issues, 
wherever it appears in a prospectus.</strong></p>
<p>It seems that whoever loaded the NTAV figure into the stock exchange's market 
data feed was either unaware of the stock split or did not stop to think that 
publishing such a figure without adjustment would be misleading to investors. In 
the first case, this demonstrates that the listing document was 
misleading to that person. In the second case, it demonstrates a severe lack of 
common sense.</p>
<p>The primary responsibility for the listing document rests with the Company 
and its directors, who were advised by the Sponsor (<a href="../dbpub/adviserships.asp?p=18459">CLSA 
Equity Capital Markets Ltd</a>) in the preparation of the document.</p>
<h3>What can investors do?</h3>
<p>The thrust of numerous e-mails we have received from investors since Thursday 
morning is &quot;I bought the shares relying on the NTAV, now I have lost most 
of my money, so who can I complain to or 
sue?&quot;. Well, we do not give legal advice, but here's what you can do:</p>
<ul>
	<li>
	<a target="_blank" href="http://www.hkex.com.hk/enq_compl/Procedures_general.htm">Complain</a> to the Stock Exchange (write 
	to <a href="mailto:info@hkex.com.hk">info@hkex.com.hk</a>)</li>
	<li>
	<a target="_blank" href="https://www.invested.hk/invested/common/apps/en/html/contact_complaint.html">
	Complain</a> to the SFC (<a href="mailto:complaint@sfc.hk">complaint@sfc.hk</a>)</li>
	<li>Consult a lawyer</li>
</ul>
<h4>
Class actions - add your voice</h4>
<p>
On the last point, possible litigation against the Stock Exchange (for its NTAV 
display) or against Asian Citrus (for its listing document) is made much harder 
by the absence of any class action system in Hong Kong, so investors either have 
to act individually, which involves prohibitive costs, or jointly, which 
involves prohibitive co-ordination and agreement on cost-sharing. On 5-Nov-09, 
the Law Reform Commission
<a target="_blank" href="http://www.hkreform.gov.hk/en/publications/classactions.htm">
announced</a> a long-awaited public consultation on a proposed class action 
system. We will be writing more about this proposal, which we strongly support, 
in a future article, but in the meantime, <strong>please add your voice by writing to
</strong>
<a href="mailto:hklrc@hkreform.gov.hk"><strong>hklrc@hkreform.gov.hk</strong></a>. </p>
<h4 id="liability">Existing routes</h4>
<p>
There is a small claims tribunal for claims under HK$50,000, where no lawyers 
are allowed, but in practice this is unlikely to be of benefit to an investor, 
because a defendant with adequate resources will apply to transfer the case to 
the District Court (up to $1m) or High Court (over $1m),
<a target="_blank" href="http://www.bloomberg.com/apps/news?pid=20601127&amp;sid=aycwLM8C8oHY">
as Larry Yung is doing</a> in the <a href="../dbpub/articles.asp?p=379">CITIC 
Pacific</a> case, or will appeal any adverse tribunal findings to the higher 
courts.</p>
<p>
Furthermore, keep in mind that, even if we get a class action system and a 
viable litigation funding system and/or contingent legal fees, the ability to 
sue is still limited by the following problems:</p>
<ul>
	<li>Under HK law, there is no statutory duty of care between auditors and 
	investors. Under common law, investors cannot sue an auditor, because this 
	was established in the House of Lords case of
	<a target="_blank" href="http://oxcheps.new.ox.ac.uk/casebook/Resources/CAPARO_1.pdf">
	Caparo Industries v Dickman (1990)</a>. Put simply, this is because there is 
	no contract between auditors and investors, only between auditors and 
	companies.</li>
	<li>Under HK law, investors have to prove that they have read and relied on 
	a prospectus in order to claim compensation. The SFC proposed removing that 
	archaic requirement in a
	<a target="_blank" href="http://www.sfc.hk/sfcConsultation/EN/sfcConsultMainServlet?name=prospectusregime">
	consultation paper</a> in 2005, but
	<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/consult/06/conclusions_prospectus_060922.pdf">
	abandoned</a> it in 2006. Now, how many of you can produce a witness to 
	testify that you read the prospectus before subscribing? Does this mean that 
	physically blind investors have no legal rights?</li>
	<li>Companies and their directors are liable for fraudulent, reckless or 
	negligent misrepresentations under
	<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/BBB7A14E4094B33448256BBA0012EEDF?OpenDocument">
	Section 108</a> of the Securities and Futures Ordinance (<strong>SFO</strong>). 
	However, subsection 108(4) says that Section 108 does <u>
	not</u> apply to any case to which
	<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/6AF7F02814BC84A848256F5F000C517D?OpenDocument">
	Section 40</a> of the HK Companies Ordinance (<strong>CO</strong>) applies, 
	i.e. to prospectuses. Under that section, purchasers of shares in the 
	secondary market cannot sue against the prospectus. In the 2005 
	consultation, the SFC proposed allowing secondary buyers to sue, but 
	abandoned that in 2006. The result is that you can only sue against a 
	prospectus if you bought the shares in the IPO <u>and</u> 
	can prove that you read the prospectus. As a result, from day 1 of trading 
	onwards, the number of investors who can sue rapidly declines, even though 
	the entire market is in reality relying on the prospectus. The simple 
	legislative solution is to delete section 108(4).</li>
	<li>Sponsors are not liable to investors for the prospectus. The SFC did 
	propose introducing this liability in the 2005 consultation, but abandoned 
	it in 2006. Sponsors can be sanctioned (including fines) by the SFC, which 
	licenses them, but that is all.</li>
</ul>
<p>We wrote about these problems in our submission &quot;<a href="valueproposition.asp">Building 
a Value Proposition for HK</a>&quot; on 4-Oct-06. So far the Government and SFC have 
done nothing to address them. Legislation is needed to address these points, by 
amending the SFO and CO. What is the point of an audit report or prospectus that 
investors cannot rely on?</p>
<p>One note, however: the Asian Citrus document is a &quot;listing document&quot; but not 
a &quot;prospectus&quot;, as no shares were issued or sold on the back of it. Section 108 
of the SFO therefore should apply. However, any brave plaintiff would have to 
prove that the isolated statements in the earlier pages were misleading on their 
own, and the defence would likely claim that anyone who made it to page 272 
would know that there had been a stock split. It would be an interesting test 
case which would turn on whether it is OK to produce, fraudulently, recklessly 
or negligently, a front-end &quot;Summary&quot; and &quot;Financial Information&quot; sections 
containing statements which could be misleading to anyone who does not read the 
appendices of the document.</p>
<p>Alternatively, if the SFC does find market manipulation (e.g. rigging the 
opening price) and proves it against the parties involved, then investors may be 
able to &quot;piggy back&quot; on the finding and sue the manipulators under 
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/9C94D91DB605C48B48256BBA0014F8AF?OpenDocument">Section 281</a> 
of the SFO (&quot;civil liability for market misconduct&quot;). It's never happened yet 
though.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=29973">ASIAN CITRUS HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12496">CHAODA MODERN AGRICULTURE (HOLDINGS) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55213">TCIL LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=9353">Kwok, Ho (1955)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10562">Tong, Tony Wang Chow</a></li>
				
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