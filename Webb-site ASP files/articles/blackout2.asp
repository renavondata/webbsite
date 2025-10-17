
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

<script type="text/javascript">document.title="Tycoons whinge over blackout period";</script>

	<div class="summary">Tycoons are making a last-minute effort to undo a HK Listing Rule change which will prohibit directors from dealing between the end of a financial period and the release of the results, starting from 1-Jan-09. The regulators should not U-turn.</div>

<h2 class="center">Tycoons whinge over blackout period<br>
<span class="headlinedate">23 December 2008</span></h2>
<p>On 28-Nov-08, the Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>) 
finally
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/0811282news.htm">
published</a> the conclusions of a consultation it started on 11-Jan-08 on 
changes to the Listing Rules, several of which enhance corporate governance and 
investor protection in Hong Kong.</p>
<p>One of those changes, which SEHK is proceeding with, is to change the basis 
of the blackout period during which a director cannot deal prior to the release 
of his company's results. Under existing rules, directors can deal up until 1 
month before the results are released. Under the new rule, which takes effect in 
9 days' time on 1-Jan-09, directors cannot deal 
from the day after the end of the financial period until the results are released.</p>
<p>We covered the detailed background to the rule change in our article
&quot;<a target="_blank" href="blackout.asp">The insider blackout period</a>&quot; on 
24-Apr-08. The <a href="../vote/result.asp?p=25">results of an opinion poll</a> conducted by
<em>Webb-site.com</em>, showed that an overwhelming 97.5% of 475 respondents agreed that 
directors should be prohibited from dealing from the end of the financial period 
until the results are published. </p>
<p>Some well-connected tycoons and company directors are not happy about the rule 
change, and have launched an aggressive last-minute campaign to reverse it. This shows a 
great disrespect for due process - there was a proper market consultation and 
the Listing Committee, which comprises a cross-section of market participants 
(who are appointed by a committee of 3 directors of HKEx and 3 from the SFC), 
has reached a conclusion to go ahead.&nbsp; The rule changes have been 
approved by the SFC. From proposal to implementation, the process will have 
lasted almost a year, and nobody can claim it is a surprise.</p>
<p>Lo Ka-shui, the hereditary Chairman of property investor
<a href="../dbpub/articles.asp?p=502">Great Eagle Holdings Ltd</a> (<strong>Great Eagle</strong>, 
0041) and a former government-appointed director of HKEx (0388), was among those 
whinging to <em>The Standard,</em> which ran
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=75862&amp;con_type=1">
articles</a>
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=76055&amp;con_type=1">
twice</a> last week. Among the invalid complaints were a claim that <em>&quot;it may 
become more difficult for major shareholders to fight a hostile takeover bid&quot;</em>. 
This is of course nonsense, because if you are the major shareholder of the 
company, then nobody can take it over without buying your stake. That's why we 
hardly ever have a hostile takeover bid in HK, where nearly every company has a 
controlling shareholder or &quot;concert party&quot; group of shareholders who together to 
control the company. Is there any chance of a hostile bid for Great Eagle, Mr 
Lo?</p>
<p>Mr Lo, who is an independent director of 6 other HK-listed companies, also 
claimed that there was a &quot;growing trend&quot; for institutional investors to appoint 
independent directors to listed company boards. We disagree - institutions 
normally avoid that, not least because they don't want ever to be accused of 
having insider information. Investors expect boards to be professionally and 
competently run without having to intervene.</p>
<p>Another person who should know better is
<a target="_blank" href="http://www.legco.gov.hk/general/english/members/yr08-12/slh.htm">
Abraham Shek Lai-him</a> (also known as Abraham Razack), the legislator for the 
real estate and construction sector. Apart from the arduous duties of being a 
Functional Constituency legislator, he's an independent director of an amazing 
13 listed companies, the second-highest count of any INED in Hong Kong, or 15 if 
you count Eagle Asset Management (CP) Ltd, the Manager of
<a target="_blank" href="http://www.championreit.com">Champion REIT</a>, which 
is controlled by Mr Lo's Great Eagle, and Regal Portfolio Management Ltd, the 
manager of <a target="_blank" href="http://www.regalreit.com/">Regal REIT</a>, which is ultimately controlled by Mr Lo's brother Lo Yuk 
Sui.</p>
<p>The Standard quotes Mr Shek as saying in a letter to LegCo's Financial 
Affairs Panel that <em>&quot;The extension...means that out of one year, there are 
seven months where you can't sell your shares&quot;</em>. That's only true if you 
leave your reporting to the last possible minute, Mr Shek. Under HK's slack 
reporting deadlines, you have 3 months to produce your half-year results and 4 
months to produce your annual results. However, that is going to change. On 
23-Jul-08 SEHK
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/080718news.htm">
announced</a> that the deadlines will be cut to 2 months and 3 months 
respectively for periods ending on or after 30-Jun-10 and 31-Dec-10 (in Hong 
Kong, we don't like to rush reform). Expect another round of complaints in about 
18 months time when that gets introduced. Even Richard Williams, the Head of 
Listing at SEHK, could not bring himself to call this anything more than a minor 
improvement - he said <em>&quot;The accelerated results...are a step in the right 
direction...and will bring the Exchange's requirements closer to international 
norms&quot;.</em> Closer, but not up to scratch.</p>
<p>But whatever the reporting deadline, why should a director be able to trade 
in his shares when the latest accounts that all other investors hold are at 
least 6 months out of date? Of course he shouldn't. A director of a listed 
company should have access to monthly management accounts which give far more 
recent information. And if he is an executive director, he would probably also 
know how the order books or business prospects are looking too.</p>
<p>Mr Lo seeks to invoke human rights and the rule of law, saying <em>&quot;The 
spirit of the law and rules should be to put everyone on a level playing field 
without bias to any particular group of investors.&quot; </em>Well, in that case, Mr 
Lo, you will allow ordinary investors full access to all internal corporate 
documents and management accounts, will you? Put them all on your web site, 
broadcast all your board meetings, and then we can talk about a level playing 
field.</p>
<p>There are a more than a thousand other listed companies whose shares you can 
deal in all year round, without restrictions, so it is not a great hardship to 
be prohibited from dealing in the 7 companies (or 15, in Mr Shek's case) where 
you have privileged access to information.</p>
<p>Another complaint comes from the
<a target="_blank" href="http://www.chklc.org">Chamber of Hong Kong Listed 
Companies</a> (mostly small ones). They apparently haven't read the Listing 
Rules. CEO Mike Wong reportedly said that the blackout would make it more 
difficult for directors to exercise stock options. That's not true, because 
paragraph 7(d)(iv) of the Model Code in
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Appendix_10.pdf">
Appendix 10</a> specifically allows a director to exercise options he was 
previously granted (as long as they have a fixed exercise price, when granted 
which they usually do). So directors can exercise options during the blackout 
period - they just can't then turn around and dump the shares in the market, 
until the results are out. In a
<a target="_blank" href="http://www.chklc.org/cm/Document/Press%20Release%20on%20Extended%20Black%20Out%20Period%20for%20Directors%20Dealing%20(Eng).pdf">
press release</a> yesterday, the Chamber repeated a lot of the same points made 
by Mr Lo.</p>
<p>The Chamber also makes the facile claim that the law against illegal insider 
dealing is sufficient protection against abuse. With only a handful or fewer 
cases prosecuted each year, and a high burden of proof, that simply isn't 
enough. 95% of 443 respondents in our opinion poll agreed that directors often 
benefit by share dealing after the financial period has ended but before results 
are released.</p>
<p>The Stock Exchange, its Listing Committee and the SFC should stand their 
ground. HK will be a higher-quality market if they do, and that must be a good 
thing for both investors and issuers. Directors of listed companies will still 
have adequate opportunities to cash in or add to their holdings and an incentive 
to get their results out faster to maximise the permitted dealing period.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17399">CHAMBER OF HONG KONG LISTED COMPANIES (THE)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=502">GREAT EAGLE HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=692">Lo, Ka Shui</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11600">Shek, Abraham Lai Him</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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