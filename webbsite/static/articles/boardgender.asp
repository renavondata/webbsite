
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

<script type="text/javascript">document.title="Does gender diversity add value to HK boards?";</script>

	<div class="summary">We present empirical evidence, using the Webb-site Total Returns series on all stocks and Webb-site Who's Who for all boards in HK over the last 10 years to 2013.</div>

<h2 class="center">Does gender diversity add value to HK boards?<br>
<span class="headlinedate">17 January 2014</span></h2>
<p>The Webb-site Total Returns series has just been updated for December 2013, 
completing the year, so
<a href="../dbpub/alltotrets.asp?d1=2012-12-31&amp;d2=2013-12-31&amp;s=tretdn" target="_blank">
you can now see a ranking of returns</a> on all HK-listed stocks for the year, 
including reinvestment of all distributions. This also completes a 20-year 
series from 1994, which will continue. So we are kicking off the new year with a 
bit of analysis.</p>
<p>There is a common sense argument for diversity of minds in corporate boards. 
In a nutshell, if you have 9 identical directors who all have the same 
qualifications, experiences and cognitive biases that shape their decisions, 
then you might as well just have 1 director, because there will be no debate 
about the way forward. Better decisions are more likely to emerge if a board has 
a collective breadth of knowledge and expertise greater than any single member 
possesses, and if there is an open debate within the boardroom that allows that 
knowledge and expertise to carry its fair weight.</p>
<p>But does it matter what gender are the bodies that carry those minds 
into the boardroom? Does a HK board full of men make worse decisions than one 
that includes women? Happily, since 1995 HK-listed companies have been required 
to include biographies in annual reports, and more recently, in announcements of 
appointments, so in <a href="../dbpub/">Webb-site Who's Who</a> we have a complete database on the genders of HK directors, and 
we can link this to the total returns. In the long run, what matters to most 
investors is the return on their investments, and this is the best measure of 
corporate performance.</p>
<p>Coupling our complete directorship database with the Webb-site Total 
Returns, we present the average (mean) total returns, annually, for the past 10 
years, of the ordinary shares of all companies with a HK primary listing whose 
shares were listed at the beginning of the year and tradable on at least 1 day in the year, grouped by the number of 
female directors. We exclude companies whose shares were suspended throughout 
the year, because the change in their value is unknown. Some of those were 
undergoing temporary or permanent liquidation without functioning boards anyway. 
Note: for a distribution of female directors per listed company (including 
suspended stocks) on any date since 1-Jan-1990,
<a href="../dbpub/FDirsPerListcoHKdstn.asp">click here</a>.</p>
<p>First, here are the numbers of companies with women on boards at the 
beginning of each year (no traded company had more than 6 female directors):</p>
<img alt="" class="center" src="/images/numCosWomen.gif">
<p>And here are the proportions of all traded companies that those numbers 
represent:</p>
<img alt="" class="center" src="/images/propCosWomen.gif">
<p>In the tables, we draw a line above 3 women, because 
there are so few companies with 4 or more women that any results are bound to be 
statistically useless. What is notable is that the proportion of companies with 
no women has reduced from 46.0% in 2004 to 40.3% in 2013. OK, now let's see the 
total shareholder returns:</p>
<img alt="" class="center" src="/images/totRetsWomen.gif">
<p>The data show that in the last 3 years 2011, 2012 and 
2013, companies with no female directors on average slightly out-performed those 
which had women&nbsp;on their boards, while during 2009 and 2010, those which had 
women on board out-performed, and the more women they had, the better they did, 
particularly in 2010. 2008 was mixed, but during the boom years of 2006 and 
2007, companies with no women on board did substantially better than the market 
average. Results in 2004 and 2005 show no obvious pattern. Taking the 10 years, 
we see that companies with no female directors out-performed the market average 
in 5 years (2006, 2007, 2011, 2012, 2013) and under-performed in the other 5 
years (2004, 2005, 2008, 2009, 2010).</p>
<p>We must emphasise that the data do not demonstrate any 
causality, and there are many factors which could account for differences in 
total returns. It may be that companies with particular business or financial 
characteristics, which tend to do better or worse in particular economic 
circumstances, are more or less likely to appoint women to their boards. The 
10-year period includes the global financial crisis and the recovery thereafter.</p>
<p>The most we can say is that these data do not provide any 
compelling evidence that board gender diversity adds value to investors. The 
null hypothesis is that gender in itself makes no difference. That hypothesis is 
not contradicted by the data. It does seem more socially equitable to have 
gender diversity, but then so does having diversity in nationality, race, 
religion or sexual orientation. However, capital allocation is driven by 
investment returns, not by social equity.</p>
<p>So boards and nominations committees, and the 
controlling shareholders who often make the real decisions on board composition, 
should put gender out of their minds and instead focus on obtaining a diverse 
mix of expertise and experience relevant to the business and governance of the company and 
regardless of gender. Over time, that will inevitably lead to more women on HK 
boards anyway, because the educational and employment opportunities for women 
have improved over the last 30 years leading to a larger pipeline of women with 
the appropriate experience and expertise behind them.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
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