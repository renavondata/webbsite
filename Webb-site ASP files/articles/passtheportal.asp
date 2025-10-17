
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

<script type="text/javascript">document.title="Pass the Portal";</script>

	<div class="summary">We'll show you how an architect set up a dysfunctional shipping web site with HK$0.39m of capital and sold 49% of it to Can Do Holdings for HK$78.4m (US$10m) - and now Can Do is trying to pass it on to eCyberChina.</div>

<h2 class="center">Pass the Portal<br>
<span class="headlinedate">25 August 2002</span></h2>
<p>So you thought dot-mania was dead? Not if you are running HK
listed Can Do Holdings Ltd (<b>Can Do, </b>0172) or the equally ridiculous-sounding eCyberChina Holdings Ltd (<b>eCyberChina, </b>0254),
which is on its sixth name since 1993. They still live in their own world of hyper-valuations and asset injections. </p>

<h3>First investment </h3>

<p>On 25-Sep-01, Can Do <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010925/LTN20010925063.doc" target="_blank">announced</a>
it was buying 30% of Masterful Resources Ltd (<b>Masterful</b>), a BVI company
which owns <a href="http://www.shipping-info.com/" target="_blank">Shipping-info.com</a>,
described as: </p>

<blockquote>

<p>&quot;a
business-to-business web portal under development which aims to serve the
shippers, forwarders, agents and carriers through the provision of network based
information services, via the internet, to the participants in the shipping and
logistics industry in Hong Kong, Shanghai and Tianjin of the PRC.&quot;</p>

</blockquote>
<p>The
price on that deal was <b>HK$48m</b> (US$6.15m), of which $21.2m was paid in
cash and the balance by the issue of 107.2m shares in Can Do valued at $0.25
each. In fact, the market price of the shares was then only $0.07, but the law
prohibits the issue of shares below par value, which in this case was $0.25. If
we value the shares at market price, then they were only worth $7.50m and the
total consideration was $28.7m. The new shares constituted 12.4% of the enlarged
issued ordinary share capital.</p>

<p>The
vendors were Richard Cheung Chung Leung (<b>Mr Cheung</b>), who sold 15% of
Masterful and owned 70% after the deal and Lim Siok Ching (<b>Ms Lim</b>), who
sold her entire holding of 15%. Both were described as &quot;independent third
parties&quot;. The announcement doesn't give any further information on these
people, but we can
tell you that Mr Cheung has been an Executive Director of HK-listed <a href="../dbpub/articles.asp?p=4970" target="_blank">Singapore
Hong Kong Properties Investment Ltd</a> (0245) since 25-Sep-98 and is a
Registered Architect. He was also a director of <a href="../dbpub/articles.asp?p=4890" target="_blank">China
Bio-medical Group Ltd</a> (0140) until 30-Sep-00, and has been an independent
non-executive director of Tomorrow International Holdings Ltd (<b>Tomorrow</b>,
0760) since 31-Mar-00. We don't
know anything about Ms Lim.</p>

<p>The
price was based on a valuation of HK$160m by LCH (Asia-Pacific) Surveyors Ltd (<b>LCH</b>)
as at 31-Aug-01, this despite the fact that Masterful was only incorporated on
2-Jan-01 and had shown a net loss of HK$5,304 up to 13-Sep-01, according to
management accounts. The deal was completed on 3-Oct-01.</p>

<p>The
circular to shareholders dated 15-Oct-01 disclosed that net assets at 13-Sep-01
were just HK$384,696, which means that the initial capital was just HK$390,000
(US$50,000) and the company was being valued at <b>410x</b> invested capital.
The balance sheet at that date comprised <i>&quot;mainly deposit paid to a
subcontractor for the development of Shipping-info.com&quot;</i>. There were no
liabilities. Mr Cheung was <i>&quot;responsible for the day-to-day management
and operations of Masterful&quot;</i> but there was no suggestion that he knew
anything about shipping.</p>

<p>Can
Do was advised on the transaction by Deloitte &amp; Touche Corporate Finance
Ltd. At the time of the circular, the largest shareholder of Can Do was <a href="../dbpub/articles.asp?p=3445" target="_blank">Tem
Fat Hing Fung (Holdings) Ltd</a>  (<b>TFHF</b>, 0661) with 22.73%.</p>

<h3>Second investment</h3>

<p>You
can never have too much of a good thing. On 13-Dec-01, Can Do <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011214/LTN20011214038.doc" target="_blank">announced</a>
it would buy a further 19% of Masterful from Mr Cheung, at the same valuation as
before, for a price of <b>$30.4m</b>, of which&nbsp; $23.5m was in cash and the
balance of $6.9m was satisfied by the issue of 27.6m new shares at par of
HK$0.25. The company said:</p>

<blockquote>
  <p>&quot;since
  the Group's acquisition of the 30% interest in Masterful Resources, the
  development of Shipping-Info.com has been progressing in accordance with the
  business plan. The Directors are satisfied with the performance of Masterful
  Resources' management. Together with the entry of the World Trade
  Organisation by the PRC lately, the Directors consider that further investment
  in Masterful Resources will have a promising prospect and will enable to
  enhance the Group's overall performance&quot;</p>

</blockquote>
<p>The market price of the shares was $0.106, so their market value
was $2.93m, taking the total consideration to $26.43m.</p>

<h3>Rights issue</h3>

<p>The $23.5m cash for the second investment was paid to Mr Cheung out of the proceeds of a
2:5 rights issue at par value of $0.25 per share which had&nbsp;just <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011207/LTN20011207028.doc" target="_blank">completed</a>
a week earlier. It was 100% under-subscribed - not a single shareholder took up
their rights, as the issue was above market price. When the issue was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011031/LTN20011031029.doc" target="_blank">announced</a>,
the issue price was 220.5% above the market price of $0.078 per share.</p>

<p>As a result, the underwriter, a company owned by George Chan
Yuen Ming (<b>Mr Chan</b>), took up all the 344.48m rights shares for <b>$86.12m</b>,
giving him 28.57% of the enlarged ordinary share capital, and diluting TFHF to
16.24%. Remarkably, Mr Chan had no intention to appoint any representative to
the board of Can Do. If the name rings a bell, that's because Mr Chan is the
brother of Jimmy Chan Yuen Tung, who featured in our <a href="digitalmess.asp" target="_blank">article</a>
on Digital World last month.</p>

<p>The announcement of the rights issue said that Mr Chan:</p>

<blockquote>
  <p>&quot;is engaged in the provision of loan financing to both
  listed and non-listed companies, including [Can Do] and [TFHF]. As at the date
  of this announcement, total indebtedness owing by [Can Do] to Mr Chan amounted
  to approximately HK$89million&quot;</p>

</blockquote>
<p>That gives you some idea of why Mr Chan was willing to invest in
Can Do - he had already lent them a similar amount of money, although the
announcement stated that the rights issue would be settled in cash and not by
offsetting Can Do's indebtedness to him.</p>

<p>Mr Chan is also the controlling shareholder of Tomorrow, of
which Mr Cheung, as we mentioned earlier, is an &quot;independent&quot;
non-executive director. Mr Chan is not a director of Tomorrow despite owning
61.44% of the company at 31-Dec-01.</p>

<h3> Write-off </h3>

<p> On 26-Jul-02, in the results for the year ended 31-Mar-02, Can
Do wrote: </p>

<blockquote>

<p> &quot;The services provided by Shipping-Info.com were only launched in end of May 2002. Owing to the current unfavourable economic atmosphere, the result of the initial operation has not been satisfactory and is still under review. To adopt a prudent approach, a full provision of the carrying value is made in the current year. However, the Board is of the view that it would provide positive contribution in the future and will closely monitor its performance. Should the result of operation be improved, the Board will consider reversal of the provision made.&quot;&nbsp; </p>

</blockquote>

<p> As a result, Can Do wrote off the amount of HK$78.4m, being the
total book cost of the 49% stake in Masterful. </p>

<h3> Pass the Portal </h3>

<p> But all was not lost. On 12-Aug-02, eCyberChina <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020823/LTN20020823014.pdf" target="_blank">announced</a>
the proposed purchase of the 49% stake in Masterful from Can Do for <b>HK$56.8m</b>,
satisfied by the issue of 284m shares at par value of $0.20 each. Conveniently,
the shares represent 9.9% of the enlarged issued share capital of eCyberChina,
just less than the 10% disclosure threshold, and are not subject to any lock-up. </p>

<p> Although the eCyberChina shares were to be issued at par value
of $0.20, they are worth considerably less in the market. On 31-Jul-02, they
plunged 84.5% from $0.116 to $0.018 in 47 minutes before being <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020731/LTN20020731066.HTM" target="_blank">suspended</a>.
On that basis, the deal would be worth only $5.1m. </p>

<p> The $56m price on the deal was based on a &quot;preliminary
value&quot; of Masterful of <b>HK$116m</b> as at 9-Aug-02 by LCH (yes, them
again). From the date of incorporation until 31-May-02, Masterful had now lost
HK$53k and no further capital had been invested beyond the original HK$390,000. </p>

<h3> No ships in site </h3>

<p> And what about the portal? Well, we registered as a user and
took a look around. You don't get much for $116m. The form-driven &quot;Sailing
Schedule&quot; showed no ships to Long Beach (the biggest port in the US)
between today and the end of 2002, or any year up to 2010 for that matter,
despite claims that the portal has been operating since May-02. So then we tried
Amsterdam, Felixstowe, New York and Panama. Nothing. Not a boat in sight. </p>

<p> Incidentally, it is rather puzzling that the form does not
invite the user to select a port of departure, only a port of arrival. The
&quot;Cargo Tracking&quot; page just links to the web sites of individual
shipping lines. The &quot;Shipping Directory&quot; is just a 35-page list of HK
shippers in alphabetic order with no search function. There is no visible
advertising and registration is &quot;totally free of charge&quot; so it is not
entirely clear where the revenue is in this model! </p>

<p> It looks like Mr Cheung and Ms Lim got rather a good deal -
they invested HK$0.39m in a dysfunctional portal and received $44.7m in cash and
134.8m shares in Can Do with no lock-up which may have been sold at any time,
and Mr Cheung still keeps majority control of Masterful. Meanwhile, the parcel
is passed to eCyberChina, if they are satisfied with their due diligence. </p>

<p> The Shipping-info.com transaction is just one of several by Can
Do and eCyberChina separately that have destroyed shareholder value. The other
deals are beyond the scope of this article, but the message to shareholders of
Can Do and eCyberChina is simple: abandon ship. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=786">GOLDBOND GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4905">NATIONAL UNITED RESOURCES HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=6883">Chan, George Yuen Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6884">Chan, Jimmy Yuen Tung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8645">Cheung, Richard Chung Leung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14033">Lim, Siok Ching</a></li>
				
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