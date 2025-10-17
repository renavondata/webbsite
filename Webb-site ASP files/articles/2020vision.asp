
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

<script type="text/javascript">document.title="Beijing's 2020 vision for LegCo";</script>

	<div class="summary">In the past few days, it has become clear how Beijing plans to rig the 2020 LegCo elections to claim "universal suffrage" without losing control. This gives even less reason for legislators to approve Beijing's proposal for the 2017 Chief Executive election.</div>

<h2 class="center">Beijing's 2020 vision for LegCo<br>
<span class="headlinedate">3 February 2015</span></h2>
<p>Over the last few days, some clarity has emerged over what Beijing has in 
mind for the "universal suffrage" HK Legislative Council elections which, under 
the 29-Dec-2007
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc21.pdf" target="_blank">
decision</a> of the National People's Congress Standing Committee (NPCSC), could 
happen in 2020 if the Chief Executive has been elected by "universal suffrage" 
in 2017. And the 2020 vision is not pretty. Chief Executive Leung Chun Ying
<a href="http://www.news.gov.hk/en/categories/admin/html/2015/02/20150202_171403.shtml" target="_blank">
has said</a> that he cannot promise the abolition of functional constituencies 
(<strong>FCs</strong>) in 2020, even if there is universal suffrage then. Legislative Council President 
Jasper Tsang Yok Sing
<a href="http://www.scmp.com/print/news/hong-kong/article/1697485/pan-democrat-charles-mok-hints-compromise-2017-reform-package-then" target="_blank">
has said</a> that the suggestion of abolishing the FCs "requires further 
discussion".</p>
<p>Given that Beijing seems determined to maintain control while creating the 
illusion of choice, as it has done with its proposals for 2017, it must also 
wish to maintain control of LegCo via the tycoon-united front coalition in LegCo, 
comprising the small-circle FCs, the pro-Beijing 
<a href="http://en.wikipedia.org/wiki/Democratic_Alliance_for_the_Betterment_and_Progress_of_Hong_Kong" target="_blank">DAB</a>/<a href="http://en.wikipedia.org/wiki/Hong_Kong_Federation_of_Trade_Unions" target="_blank">FTU</a> and assorted hangers-on 
like Regina Ip's 2-legislator not-so-New People's Party. So this begs the 
question, if FCs are not abolished, then how does Beijing plan to rig the 2020 
elections, in order to claim that "universal suffrage" has been achieved? Based on the approach taken 
by Beijing with the Chief Executive election in 2017 and the recent comments, we can now see 
clearly how this 
will be done. Before we present the solution, some background.</p>
<h3>Background</h3>
<p>Excluding the territory-wide District Council (2nd) sector, there are 28 FCs 
which elect 30 legislators. Each FC has 1 seat except the Labour Sector, 
comprising trade unions, which elects 3 seats. Of these 28 FCs, 18 have voters 
who are "bodies": corporations, trade associations and trade unions (including 
the Labour sector). Of these 18 FCs, 10 have no individual voters and the other 
8 are mixed bodies and individuals. Ranked by number of electors, the smallest 
circle is Finance, where 128 banks were registered electors in 2012, then 
Insurance, where 135 insurers were registered, then the Heung Yee Kuk, where all 
its 147 councillors are electors, including New Territories Justices of the 
Peace who are appointed by the Government. </p>
<p>Incidentally, most of the banks and insurers are foreign-owned, including 
mainland and Taiwan banks - perhaps this is what C Y Leung means by "foreign 
influences".</p>
<p>Although it is often said that the FCs are elected by "about a quarter of a 
million voters", this vastly overstates the reality. As shown in the table 
below, ranked by size of electorate, the 13 smallest FCs elect half (15) of the 
seats with a total electorate in 2012 of just 6,870, and often there is no 
election as the seats are not contested. Keep in mind that corporate voters 
often have the same owners, reducing the circles to an even smaller size, so 
they can often just privately agree who will be their legislator without a 
public contest.</p>
<p>The quarter-million elector figure is reached by including the 
professional sectors, where every licensed or registered human has a vote. The 5 
largest FCs had 180,668 electors or 75% of the total FC
<a href="http://www.eac.gov.hk/pdf/legco/2012LCE_Report/en/2012lce_appendix4.pdf" target="_blank">
electorate</a> in 2012, and each of those sectors elected a pan-democrat 
(although the Medical Sector legislator is
<a href="http://thestandard.com.hk/section-news.php?id=153108" target="_blank">
currently wavering</a> on that).</p>
<p class="center"><img alt="" src="../images/FCelectors.gif" style="width:100%;max-width:709px">&nbsp;</p>
<h3>The 2020 vision</h3>
<div class="rightpicbox" style="width:199px">
	<a href="http://commons.wikimedia.org/wiki/File:WhereRainbowRises.jpg" target="_blank">
	<img alt="" src="../images/rainbow.jpg"></a>
</div>
<p>What Beijing must be planning is that, to maintain control while claiming universal 
suffrage, the existing FC electorates will be reconstituted as <em>de facto</em> 
"nominating committees" for their sectors. There will be a "primary" round in 
which the current FC electors select 1 or more candidates for their sector, and 
then the general public will get to vote on those candidates by universal 
suffrage. Each citizen will have 1 vote in each sector, probably including the 
"Super" District Council (2nd) territory-wide sector, together with 1 vote in 
the geographic constituency in which they reside. So each citizen could have up 
to 30 votes. However, if only 1 candidate is nominated in a sector, then that 
person will either be deemed elected uncontested or will go through the 
formality of a vote in which people can either vote for him/her or abstain.</p>
<p>This will rightly be dismissed by those who want universal and equal suffrage 
as a sham, fake democracy, due to the way the candidates are screened. Now that 
the plan is becoming clear, there is even less reason to support the 2017 
package for the CE on the vague promise of "universal suffrage" for LegCo in 
2020. There is no pot of gold at the end of the rainbow, and like all rainbows, 
you cannot reach the end of it. Every time you try to go there, it moves further 
away.</p>
<p>There is a second reason that FCs will not be abolished in 2020. To do so 
requires amendment to
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc3&4.pdf" target="_blank">
Annex II</a> of the Basic Law, which requires a two-thirds majority of LegCo. 
Therefore 24 legislators can block it. Look at the table above and keep in mind 
that Beijing has ruled out any changes to LegCo in 2016. If the FC electorates 
are not broadened in 2016, then it seems unlikely that small-circle legislators 
will vote to abolish their own seats, as it is hard to see what Beijing can 
offer them in return. Perhaps a few of them can be bought off with policy 
decisions (such as maintaining the Small House policy for the Heung Yee Kuk) but 
many represent tycoons (Real Estate and Construction, Transport, chambers of 
commerce) who would not dance to Bejing's tune if it meant giving up their 
influence. So without changes to the FC electorates in 2016, there is no real prospect of FC abolition 
in 2020.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=6610">HKSAR Legislative Council</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=1680">Leung, Chun Ying</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6373">Tsang, Jasper Yok Sing</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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