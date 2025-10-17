
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

<script type="text/javascript">document.title="Excess Baggage at Air China";</script>

	<div class="summary">Days after investors successfully blocked connected loans from China Oilfield Services to its parent group, the Air China IPO touches down in Hong Kong, and deep in the prospectus we find a Stock Exchange waiver for it to lend up to RMB5bn, equivalent to 72% of the IPO proceeds, to a subsidiary of its parent. Here's what you need to know.</div>

<h2 class="center">Excess Baggage at Air China<br>
<span class="headlinedate">3 December 2004</span></h2>
<p>On Monday this week, investors successfully <a target="_blank" href="coswin.asp">
blocked</a> a proposal by China Oilfield Services Ltd (COS) to lend money to its 
parent group.</p>

<p>Now the jumbo-sized Air China Ltd (<b>Air China</b>, 0753)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041203/LTN20041203000.htm">
prospectus</a> touches down in Hong Kong with a plan to raise HK$6,522m 
(US$838m) for the company net of expenses. We're not going to comment on the 
merits of this stock - decide for yourselves.</p>

<p>But wait. Before you decide, you should be aware of a company called China 
National Aviation Finance Co., Ltd (<b>CNAF</b>), which is a 52% subsidiary of 
Air China's parent, China National Aviation Holding Company (<b>CNAHC</b>). Air 
China also holds 42.5% of CNAF.</p>

<p>You guessed it. CNAF is another one of these &quot;non-bank finance companies&quot; the 
only customers of which are members of the CNAHC group and its &quot;investees&quot; - 
companies in which the group owns less than 50% of the stock..</p>

<p>In the prospectus, nestled in the undergrowth of 30 pages of connected 
transactions you will find the lesser-spotted
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041203/0753/F115_e.pdf">
section</a> dealing with this on pages 133-135. It discloses that Air China both 
lends (or, as they would put it, &quot;deposits&quot;) money to CNAF as well as borrowing 
smaller amounts from it. In the 3 years to 2003, Air China lent as much as 
RMB2,357m to CNAF, and borrowed up to RMB1,180m from it. The Stock Exchange has 
granted Air China a waiver until 31-Dec-06 to continue with this practice, 
subject to a maximum deposit of RMB5bn with CNAF, and maximum borrowings of 
RMB3bn. After that, they will have to go to independent shareholders with a 
request for approval - which of course, we would not give.</p>

<p>The only slight mitigating factor is that CNAF has undertaken that the 
aggregate of its loans and investments outside of Air China will not exceed the 
aggregate of the deposits from customers other than Air China plus the equity of 
CNAF. However, this is not much comfort, for the following reasons:</p>

<ul>
  <li>Other group depositors may presumably withdraw funds 
from CNAF at any time, but CNAF cannot necessarily recover the money by 
recalling loans to group companies, particularly if the loans have gone sour. 
That could leave CNAF in breach of the undertaking. There is no obligation or 
undertaking from CNAHC to &quot;top up&quot; the CNAF balance sheet with extra funds to 
bring it back into compliance, and even if there were, we don't know whether 
CNAHC would have the financial ability to fulfil such an obligation.</li>
  <li>One way to ensure that the outstanding loans don't 
exceed deposits would be to make bad loans and the write them off! Obviously 
that doesn't improve the ability of CNAF to repay deposits from Air China or 
anyone else.</li>
  <li>Air China would rank alongside all the other 
creditors in the event that CNAF became insolvent and was liquidated. The impact 
of the bad loans to other members of the group would be shared by Air China in 
proportion to the amounts it and the other customers had lent to CNAF.</li>
  <li>An undertaking from CNAF is not worth anything if CNAF goes bust.</li>
</ul>

<p>What all this boils down to is that Air China could lend up to RMB5bn 
(HK$4.72bn, US$602m), an amount equivalent to about 72% of the IPO proceeds, to 
CNAF, a member of its parent group. It is often said that in Asia, ageing 
parents rely on their children for financial support due to the underdeveloped 
social welfare system. The same seems to be true of Chinese companies and their 
offspring, particularly state-controlled ones.</p>

<p>Even in Hong Kong, no tycoon today would dream of seeking &quot;deposits&quot; from his 
listed company to fund his private enterprises, or pooling all the private and 
public company monies in one vehicle. OK, maybe he would dream of that, but they 
wouldn't get approval for it from shareholders - we've moved on from that kind 
of behaviour which was more common in the 1980s, when Tung Chee Hwa's private 
companies almost bankrupted Orient Overseas (Holdings) Ltd, as it then was 
known. He wrote at the time:</p>
<blockquote>
  <p>&quot;In the course of 1985 the OOHL Group's financial position 
  seriously worsened principally as a consequence of the rapid deterioration in 
  the financial position of the Tung Private Group, with which the OOHL Group is 
  closely associated and from whom substantial amounts were owing.&quot;</p>
</blockquote>

<p>So now you know. Take your seats if you want, but remember, this flight comes 
with excess baggage.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=23809">Air China Limited</a></li>
				
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