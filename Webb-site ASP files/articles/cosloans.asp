
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

<script type="text/javascript">document.title="Veto COS Loans to CNOOC";</script>

	<div class="summary">In a replay of behaviour in April by CNOOC Ltd (0883), China Oilfield Services Ltd (2883) is now seeking independent shareholders' approval to lend money to its parent group. This time, don't let them get away with it. You have less than a week to vote against, so vote now!</div>

<h2 class="center">Veto COS Loans to CNOOC<br>
<span class="headlinedate">26 October 2004</span></h2>
<p>There they go again. In a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041025/LTN20041025071.pdf">
circular</a> dated 21-Oct-04, China Oilfield Services Ltd (<b>COS</b>, 2883) 
proposed a series of waivers from the Listing Rules on connected transactions 
with its parent group, which require the approval of independent shareholders. 
The existing waivers, granted by the Stock Exchange before the company listed in 
2002, will expire on 31-Dec-04.</p>
<p>We don't think that separate listings of companies which are so dependent on 
their parents for business makes sense, but now that COS is listed, you have to 
deal with it as it is. Given the nature of COS's business, most of the waivers 
are necessary and we would have no objection to them if proposed separately. For 
example, most of its turnover comes from providing drilling and other services 
to its state-owned parent, China National Offshore Oil Corporation (<b>CNOOC</b>) 
and CNOOC's listed subsidiary, CNOOC Ltd (<b>CNOOCL</b>, HK:0883, NYSE:CEO). </p>
<p>However, COS has bundled all of these waivers into a single yes-or-no 
shareholder vote, and the bundle includes a highly offensive proposal to renew 
and enlarge the ability of COS to lend money to its parent group. This is 
disguised as an ability to <i>&quot;deposit&quot;</i> money with CNOOC Finance Corporation 
Ltd (<b>CNOOCF</b>), described as a <i>&quot;non-bank finance&quot;</i> company, which is 
62.9% owned by CNOOC and 31.8% by CNOOCL.</p>
<p>You won't find any warning in the current circular, which we think is a 
material omission, but the 
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021111/2883/EWP107.pdf" target="_blank">
risk factors</a> section of the IPO prospectus of COS 
makes clear:</p>

<blockquote>
  <p>&quot;Our connected transactions with [CNOOC Finance] will include 
  deposits of our funds... This non-bank finance company has the authority to 
  engage in a variety of finance and investment activities including investments 
  in equity securities, debt securities and real estate as well as borrowings 
  and guarantees. It may also engage in CNOOC intra-group lending. Our deposits 
  will not have the protection of any security interest or guaranty from CNOOC.&quot;</p>
</blockquote>

<p>Under the existing waivers, the maximum amount COS could lend to CNOOCF was 
10% of the previous year's turnover. They came close to that limit, with the 
daily balance peaking at RMB255m during 2003. Now, COS is seeking to expand that 
4-fold, with a cap of 40% of the previous year's turnover in each of the next 3 
years, subject to limits of RMB1,048m in 2005, RMB1,177m in 2006 and RMB1,323m 
in 2007 (an increase of about 12% each year).</p>
<p>There is no excuse for this behaviour. China has a banking system. If a 
company has surplus cash which will be needed in the near term, then it should 
put it in a bank or buy government treasuries. If it has surplus cash with no 
foreseeable usage, it should be returned to all shareholders as a dividend, not 
siphoned off to one of them as a loan. Lending money to its parent is exactly 
what got <a target="_blank" href="../dbpub/articles.asp?p=4851">Guangdong Kelon</a> and numerous 
other companies into such a mess. It's not a question of whether the terms of 
the loans are fair and reasonable (they may even be better than bank interest 
rates). What matters is the unreasonable risk that COS is taking by mixing its 
funds with the parent group's, and you won't find that discussed anywhere in the 
circular.</p>
<p>If any of this seems familiar, it is because we
<a target="_blank" href="0883EGM040428.asp">warned</a> about a similar 
transaction in April in which COS's sister company, CNOOCL, sought and obtained 
independent shareholders' approval for loans to CNOOCF. The timetable was so 
compressed that a number of ADR holders who contacted us did not even know about 
the meeting and had not received any notice from the depository. The vote was 
92.3% in favour, but the turnout was only 21.9% of shares eligible to vote.</p>
<p>In a similar feat of timing, the CNOOCL circular was dated 8-Apr-04, the day 
before Easter, but not filed with HKEx until 13-Apr-04, the next working day, 
shrinking the effective voting period. This time, the COS circular is dated 
21-Oct-04, the day before a 3-day weekend, but was not filed with HKEx until 
lunchtime yesterday, 25-Oct-04. The meeting takes place in Beijing at 10:00 on 
5-Nov-04, and the central depository, CCASS, will stop accepting custodian 
instructions on Wednesday 3-Nov-04, and custodians in turn will set a shorter 
deadline for their clients. <b>You have less than one week to vote, so vote now</b>.</p>
<h3>Vote against bundled proposals</h3>
<p>As we said earlier, the proposed loans to CNOOC group are bundled with other 
proposals, which on their own would make sense. Do not be intimidated by this. 
If you veto the bundle as we recommend, then COS can still come back with 
unbundled proposals for the things they really need, such as providing drilling 
services to CNOOC. So vote AGAINST resolution number 2 at the EGM. If you need 
help with voting procedures, see our <a target="_blank" href="../pages/howtovote.asp">
voting guide</a>.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16971">China Oilfield Services Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9164">CNOOC LIMITED</a></li>
				
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