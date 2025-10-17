
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

<script type="text/javascript">document.title="CNOOC's Sister Knew";</script>

	<div class="summary">On Monday, Webb-site.com broke the story of how CNOOC had been lent up to RMB6.6bn to its parent group without shareholders' approval. Since then, media have reported that the Stock Exchange is looking into the matter, and that the company's CFO claims no rules were broken - a claim which does not stand up to our scrutiny.</div>

<h2 class="center">CNOOC's Sister Knew<br>
<span class="headlinedate">22 April 2004</span></h2>
<p>On Monday 19-Apr-04, we
<a target="_blank" href="0883EGM040428.asp">urged</a> investors to vote against 
the proposed connected transactions in which CNOOC Ltd (<b>CNOOC</b>, 0883) 
would lend up to RMB6,800m to CNOOC Finance Corp Ltd (<b>CNOOC Finance</b>), a 
62.9% subsidiary of its parent, China National Offshore Oil Corporation (<b>CNOOC 
Parent</b>).</p>

<p>Since then, the media have picked up on the story, and although 
there has been no official company announcement from CNOOC on which investors 
could legally rely, it's Chief Financial Officer Mark Qiu has been telling the 
media that the company hasn't broken any rules.</p>

<p>This claim, which may be intended to affect the voting result at 
the meeting next week in the company's favour, does not stand up to the 
slightest bit of scrutiny - as we will show below. Frankly we find this 
behaviour disappointing and misleading to investors who are in the middle of a 
voting decision. If the company has anything to say about this, then it should 
do so by way of formal announcement and adjourn the extraordinary shareholders' 
meeting until investors have had sufficient time to digest the new information.</p>

<p>Refuting Mr Qiu's claim that no rules have been broken, we point 
first, to CNOOC's own announcement of 8-Apr-04, in which it admitted that <i>
&quot;the transactions with CNOOC Finance contemplated by the Framework Agreement 
constitute continuing connected transactions for the purposes of the Listing 
Rules&quot;</i>. These transactions include <i>&quot;placing of [CNOOC]'s cash deposits 
with CNOOC Finance&quot;</i> so it can hardly be the case that the same transactions 
in the past were not connected transactions.</p>

<h3>The left hand knows what the right hand does</h3>

<p>Second, CNOOC Parent has another HK-listed subsidiary, China 
Oilfield Services Ltd (<b>COS</b>, 2883). Mr Fu Chengyu is President of CNOOC 
Parent and Chairman of both CNOOC and COS, so he signed off on the COS 
prospectus and is presumed to know what was in it.</p>

<p>On
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021111/2883/EWP115.pdf">
page 87</a> of its
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021111/LTN20021111060.htm">
prospectus</a> dated 11-Nov-02, COS makes clear that it (and the Stock Exchange) 
regards its transactions with CNOOC Finance, including cash &quot;deposits&quot;, as 
connected transactions for which it needed a pre-IPO waiver, so it obtained a 
waiver effective for 3 years ending 31-Dec-04. Page 89 shows that this waiver in 
each year is capped at 10% of turnover for the previous year.</p>

<p>What this shows is that CNOOC Parent and CNOOC must have been 
aware at least as early as 11-Nov-02, when the COS prospectus was published, 
that transactions between a HK-listed subsidiary and CNOOC Finance, including 
the so-called deposits (or loans) to CNOOC Finance, were regarded as connected 
transactions under the Listing Rules, and yet it did nothing about the same type 
of transactions with CNOOC for another 17 months until 8-Apr-04.</p>

<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021111/2883/EWP107.pdf">
risk factors</a> section of the COS prospectus also makes clear:</p>

<blockquote>
  <p>&quot;Our connected transactions with [CNOOC Finance] will include 
  deposits of our funds... This non-bank finance company has the authority to 
  engage in a variety of finance and investment activities including investments 
  in equity securities, debt securities and real estate as well as borrowings 
  and guarantees. It may also engage in CNOOC intra-group lending. Our deposits 
  will not have the protection of any security interest or guaranty from CNOOC.&quot;</p>
</blockquote>

<p>By the end of 2003, COS was owed RMB252.6m by CNOOC Finance, or 
about 9.3% of turnover for the preceding year, just below the 10% limit. Before 
the end of this year, COS must seek approval from minority shareholders if it 
wishes to continue lending money to CNOOC Finance. We urge investors to veto 
that arrangement too, when the time comes.</p>

<p>Let's be clear. Whether you call these transactions &quot;deposits&quot;, 
&quot;advances&quot; or &quot;loans&quot;, the result of such transactions is the same, namely that 
CNOOC and COS are owed money by CNOOC Finance, and that's all that should matter 
as far as the Listing Rules are concerned.</p>

<h3>And if they didn't break the rules, then there's no limit</h3>

<p>The most worrying thing about Mr Qiu's claim is that if CNOOC 
now believes that these loans to CNOOC Finance are somehow outside of the 
connected transaction Rules, and if the Stock Exchange were to agree with that 
position, then that would make next week's shareholders' approval of the loans 
unnecessary and non-binding, in which case, whether or not the arrangement is 
approved by minority shareholders, the company may just carry on making these 
loans (or if you prefer, deposits) anyway, without regard to the proposed limit.</p>

<h3>A race to vote</h3>

<p>Shareholders are almost out of time to vote, because most public 
shares are held through Hong Kong Securities Clearing Co Ltd (<b>HKSCC</b>), the 
operator of the clearing system which is a subsidiary of Hong Kong Exchanges and 
Clearing Ltd. HKSCC told us today that the voting deadline is 3.45pm tomorrow, 
Friday 23-Apr-04, HK time, even though the meeting does not take place until 
28-Apr-04.</p>

<p>We have also received an e-mail from a US investor who has yet 
to receive proxy forms for his CNOOC ADRs, so there is some concern that US 
investors will not have time to vote.</p>
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