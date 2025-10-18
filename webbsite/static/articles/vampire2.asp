
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

<script type="text/javascript">document.title="Four more slay Vampire";</script>

	<div class="summary">Another four companies have joined the elite "Vampire Pioneers" list of companies which have adopted the recommendations of Project Vampire to limit their general issue mandates, so reducing the risk to investors of unwanted dilution of their shareholdings and economic rights. Find out who these pioneers are, and how your company can join the list.</div>

<h2 class="center">Four more slay Vampire<br>
<span class="headlinedate">10 July 2003</span></h2>
<p>Another four HK-listed companies have adopted all or part of the 
recommendations of <a target="_blank" href="vampire1.asp">Project Vampire</a> 
(Vote Against Mandate for Placings, Issues by Rights Excepted), reducing the 
general mandate which they seek at the Annual General Meeting to allow them to 
issue discounted shares for cash without offering them to existing shareholders. 
To recap, the key recommendations of Project Vampire are:</p>

<ul>
  <li>The mandate to issue shares for cash, other than
    by a rights issue, shall be in respect of not more than 5% of the issued
    shares a the time of the mandate</li>
  <li>The discount for shares issued other than by a
    rights issue shall not exceed 5%.</li>
  <li>The mandate to issue shares for other purposes,
    including acquisitions, shall be for not more than 20% of the issued shares</li>
</ul>

<p>The first company to do this was <a target="_blank" href="../dbpub/articles.asp?p=2666">Arts 
Optical International Holdings Ltd</a> (1120) with its pioneering
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030409/LTN20030409114.pdf">
notice of AGM</a> on 9-Apr-03, followed on 28-May-03 by
<a target="_blank" href="0669AGM2003.asp">Techtronic Industries Co Ltd</a> 
(0669), which amended the proposal in mid-AGM to be fully Vampire-compliant.</p>

<p>The four newcomers are led by Johnson Electric Holdings Ltd (0179), which on 
5-Jun-03 became the first member of the Hang Seng Index to voluntarily adopt a 
principal recommendation of Project Vampire, by including in its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030605/LTN20030605096.pdf">
notice of AGM</a> a reduction in the size of the mandate from 20% to 5% of 
existing shares, as we report in our <a target="_blank" href="0179AGM2003.asp">
voting advice</a> issued today. However, they didn't include any limit on the 
issue discount, so we score them 7 out of 10 for going most of the way and hope 
they will get full marks next year.</p>

<p>On 26-Jun-03, another optical frame maker, Elegance International Holdings 
Ltd (0907) announced its results and a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030626/LTN20030626109.PDF">
notice of AGM</a> which limits the issue discount to 5% and restricts cash 
issues to 10% of issued shares. That's not quite a full Vampire, allowing double 
the amount of dilution to owners' stakes, but we will give them 7 out of 10 for trying, 
and hope they'll do the &quot;full Vampire&quot; next year.</p>

<p>Next, on 30-Jun-03, electrical appliance maker Allan International Holdings 
Ltd (0684) announced results and a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030630/LTN20030630098.pdf">
notice of AGM</a> with a fully Vampire-compliant general mandate. A perfect 10 
full marks for that.</p>

<p>On 9-Jul-03, <a target="_blank" href="../dbpub/articles.asp?p=3529">Tungtex (Holdings) Co Ltd</a> (0518) announced its results and a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030710/LTN20030710019.pdf">
notice of AGM</a> which restricts issues of new shares for cash to 5% of 
existing shares, but does not include any limit on the discount at which the 
shares may be issued. We'll give them marks of 7 out of 10 as well.</p>

<p>So here is a summary of all the Vampire-compliant companies. We exclude HSBC 
Holdings plc (0005), which is Vampire-compliant but only because it has to 
comply with the UK Pre-emption Guidelines as it has a primary listing and is 
incorporated in the UK. It does not apply the same standards to its HK 
subsidiary, Hang Seng Bank Ltd (0011).</p>

<table class="numtable center c2l">
    <tr>
      <th>Date<br>ann.</th>
      <th>Name</th>
      <th>Placing limit as %<br>of existing shares</th>
      <th>Max<br>disc.</th>
      <th>Vampire<br>score</th>
    </tr>
    <tr>
      <td>9-Apr-03</td>
      <td>Arts Optical (1120)</td>
      <td>5%</td>
      <td>5%</td>
      <td>10</td>
    </tr>
    <tr>
      <td>28-May-03</td>
      <td>Techtronic (0669)</td>
      <td>5%</td>
      <td>5%</td>
      <td>10</td>
    </tr>
    <tr>
      <td>5-Jun-03</td>
      <td>Johnson Electric (0179)</td>
      <td>5%</td>
      <td>No limit</td>
      <td>7</td>
    </tr>
    <tr>
      <td>26-Jun-03</td>
      <td>Elegance (0907)</td>
      <td>10%</td>
      <td>5%</td>
      <td>7</td>
    </tr>
    <tr>
      <td>30-Jun-03</td>
      <td>Allan (0684)</td>
      <td>5%</td>
      <td>5%</td>
      <td>10</td>
    </tr>
    <tr>
      <td>9-Jul-03</td>
      <td>Tungtex (0518)</td>
      <td>5%</td>
      <td>No limit</td>
      <td>7</td>
    </tr>
  </table>

<p><i>Webb-site.com </i>editor David Webb is an investor in all of the above 
companies except for Johnson Electric, where he only has an interest in a token 
10 shares for the purposes of <a target="_blank" href="projectpoll1.asp">Project 
Poll</a>.</p>

<p>So there you go, 6 pioneering companies. From now on, we will only give 
recognition to companies which fully comply with the recommendations (5% size 
limit on placings, and 5% discount limit on all issues). So if you run a listed 
company, and want to joint the elite, just
<a target="_blank" href="../contact/">let us know</a> of your decision to 
fully adopt Project Vampire's recommendations, and we will add you to the <b>
&quot;Vampire Pioneers&quot; </b>list to be published in a special section of <i>
Webb-site.com</i> in the near future. That list will be capped at the first 50 
companies to fully comply.</p>

<p>We continue to urge the Stock Exchange to amend its Listing Rules to include 
these new standards, which reflect international best practice. That way, 
investors could be confident that none of the Vampire-compliant companies could 
change their minds next year, since it would be a breach of the Listing Rules to 
do so.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2949">ALLAN INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2666">ARTS OPTICAL INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4827">ELEGANCE OPTICAL INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=632">JOHNSON ELECTRIC HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2600">TECHTRONIC INDUSTRIES COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3529">TUNGTEX (HOLDINGS) COMPANY LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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