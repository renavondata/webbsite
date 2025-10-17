
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

<script type="text/javascript">document.title="SFC actions risk chilling critics";</script>

	<div class="summary">A New Year's Eve SFAT ruling reveals an SFC action against Moody's for its 2011 "red flags" report, following the recent launch of MMT action against a short-selling analyst. The SFC risks chilling publication of critical opinion and analysis - something we would hate to stop doing. We will be watching the cases carefully.</div>

<h2 class="center">SFC actions risk chilling critics<br>
<span class="headlinedate">1 January 2015</span></h2>
<p>In a New Year's Eve <a href="../codocs/SFAT141231.pdf" target="_blank">ruling</a>, 
Justice Michael Hartmann, a Chairman of the
<a href="../dbpub/officers.asp?p=18729&amp;hide=Y">Securities and Futures 
Appeals Tribunal</a>, has rejected an application by Moody's Investors Service 
Hong Kong Ltd (<strong>Moody's</strong>) to have its appeal held in private.</p>
<p>In a &quot;Decision Notice&quot; dated 3-Nov-2014, the SFC concluded that Moody's had 
breached a number of provisions of the Code of Conduct for SFC-licensed persons 
when it published a report on 11-Jul-2011 titled &quot;Red Flags for Emerging-Market 
Companies: A Focus on China&quot;. The SFC wants to fine Moody's HK$23m (US$2.96m). 
At the time of the report, some of the companies involved disputed some of the 
&quot;red flags&quot; marked against them. The Moody's press release is
<a href="https://www.moodys.com/research/Moodys-Accounting-and-governance-warning-signs-for-emerging-market-companies--PR_222323" target="_blank">
here</a> and you can find the full report online if you
<a href="https://www.google.com.hk/?q=Red+Flags+for+Emerging-Market+Companies" target="_blank">
search for it</a>.</p>
<p>There was certainly room for dispute - for example in at least two 
cases, the companies said that Moody's had incorrectly marked them as having 
changed auditors within the previous 3 years. One of them was
<a href="../dbpub/advisers.asp?p=54995">Kaisa Group Holdings Ltd</a>. (1638) 
which put out
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2011/0713/LTN20110713184.pdf" target="_blank">
this clarification</a>. But these were newly-formed and listed companies, and 
while it is technically true that the newly-created offshore listing vehicle did 
not change its auditors, the mainland subsidiaries had used different statutory 
auditors at the times of their audits. There was also no requirement to audit 
the offshore parent until it was listed. So it might be a reasonable statement 
to say that a listed company had &quot;changed auditors&quot; when looked at from the 
perspective of group accounts.</p>
<p>For example, the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/1126/01638_680343/E125.pdf" target="_blank">
accountants' report</a> in the Kaisa prospectus dated 26-Nov-2009 shows a 
variety of statutory auditors on pages 16 to 21. This is not unusual for listed 
companies with mainland subsidiaries; a big-4 accounting firm is usually only 
appointed in preparation for listing, and the most it can do is retrospectively 
&quot;review&quot; the subsidiary statements, but it cannot perform time-travel to go back 
and attend stock-takes, or visit development properties 3 years earlier to view 
their state of completion.</p>
<p>For what it is worth, let's look at the total returns on the stocks since the 
day before the report (8-Jul-2011) up to the end of 2014 to see whether Moody's 
scoring system was broadly right. Kaisa's stock is
<a href="../dbpub/ctr.asp?i1=5511&amp;rel=0&amp;d1=7/8/2011">down 42.07%</a> , 
but it wasn't one of the top 5 companies singled out by the report, which tested 
61 companies with 20 possible red flags. The top 5 were: West China Cement Ltd 
(2233), <a href="../dbpub/ctr.asp?i1=6130&amp;rel=0&amp;d1=7/8/2011">down 69.76%</a>, 
Winsway Enterprises Holdings Ltd (1733),
<a href="../dbpub/ctr.asp?i1=6204&amp;rel=0&amp;d1=7/8/2011">down 92.14%</a>, 
China Lumena New Materials Corp (0067)
<a href="../dbpub/ctr.asp?i1=5134&amp;rel=0&amp;d1=7/8/2011">down 56.86%</a> 
(and suspended), 
Hidili Industry International Development Ltd (1393),
<a href="../dbpub/ctr.asp?i1=4900&amp;rel=0&amp;d1=7/8/2011">down 89.07%</a> 
(source: Webb-site Total Returns) and last but not least, LDK Solar, which was 
US-listed and is
<a href="http://www.bloomberg.com/news/2014-10-21/ldk-solar-affiliates-file-for-u-s-bankuptcy-protection.html" target="_blank">
now bankrupt</a>. We'd say that's a pretty good hit rate, even though industry 
factors are involved in some of the declines. For
<a href="../dbpub/alltotrets.asp?d1=2011-07-08&amp;d2=2014-12-31&amp;s=tretdn">
all HK-listed stocks</a>, the median (718th) stock in that period returned 
0.32%.</p>
<p>One can of course argue with Moody's methodology, but that kind of debate on 
which factors matter for future performance is what makes a market.</p>
<p>The Moody's appeal has yet to be heard, and the SFC's Decision Notice 
is not yet a public document, so we don't know what the precise allegations are, 
the arguments in their favour are or what Moody's full appeal will be, but we 
hope that the SFC has more grounds for complaint than a few errors in a report 
covering numerous companies, because it would be unreasonable to expect that a 
report on 61 companies with 20 different flag-tests would be correct on all of 
the 1220 tests.</p>
<h3>The lemon test</h3>
<p>The action follows an SFC <a href="../codocs/SFC141222.pdf">announcement</a> 
regarding another case on 22-Dec-2014. The SFC is taking Mr Andrew Left of
<a href="http://www.citronresearch.com/" target="_blank">Citron Research</a> to 
the Market Misconduct Tribunal, alleging market misconduct in relation to a 
negative research report on <a href="../dbpub/articles.asp?p=44714">Evergrande 
Real Estate Group Ltd</a> (3333) which he published on 21-Jun-2012.</p>
<p>The <a href="../codocs/MMTnotice141215.pdf">Notice to the MMT</a> was sparse 
in its content, so we don't yet know what the core of the allegations is and 
what Mr Left's defence will be. Under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s277.html" target="_blank">
Section 277</a> of the Securities and Futures Ordinance (<strong>SFO</strong>), 
market misconduct occurs if a person circulates false or misleading information 
that is likely to induce transactions or affect prices <u>
and</u> the person knows that, or is reckless or negligent as to whether, 
the information is false or misleading. So it is not enough to show that Mr Left 
was wrong in his opinions or allegations. the SFC will need to show that Mr Left 
either knew what he was saying was false or misleading, or that he was reckless 
or negligent as to whether it was false or misleading, and furthermore, that it 
was &quot;information&quot; and not just his opinions.</p>
<p>Keep in mind that &quot;information&quot; is defined in the SFO as including &quot;data, 
text, images, sound codes, computer programmes, software and databases, and any 
combination thereof&quot;. The word in general is taken to mean facts or purported 
facts, not opinions. &quot;I think XYZ is insolvent&quot; is not &quot;information&quot; but is an 
opinion which may be reasonably held even if it turns out to be wrong, and even 
if the analyst has misinterpreted the available facts. That's what makes a 
market.</p>
<p>The fact that Mr Left made a profit from short-selling Evergrande stock 
should not be relevant to the determination of this case, except as to motive. 
Similarly, if someone who owns a stock goes out and sings the praises of a 
company, he may also make a profit if other people agree with him and bid the 
stock higher. As long as he doesn't know that what he is saying is false or 
misleading, and reasonably holds his opinions, then our bullish analyst should 
have nothing to fear. If he turns out to be wrong in retrospect, then he has 
that in common with most professional stock analysts almost half of the time, 
and that is not a crime or misconduct.</p>
<p>We should note that although the MMT is a civil forum (requiring proof on the 
balance of probabilities), there is identical language in
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s298.html" target="_blank">
Section 298</a> of the SFO which would allow a prosecution and
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s303.html" target="_blank">up 
to 10 years </a>in jail after conviction on indictment (requiring proof beyond 
reasonable doubt).</p>
<h3>The risk of a chilling effect</h3>
<p>Free markets depend on free speech and the open exchange of opinions and 
analysis, whether it turns out to be right or wrong. The SFC will need to tread 
very carefully in this area and show good grounds for their actions in the SFAT 
and MMT, otherwise they are likely to have a chilling effect on critical 
research. That would be very bad for the market, for at least three reasons:</p>
<ol>
	<li>There is a systemic skew in investment bank/broker research which 
	produces far more &quot;buy&quot; or &quot;hold&quot; (don't sell) notes than actual &quot;sell&quot; 
	recommendations, because banks face conflicts of interest in seeking 
	business with companies and in maintaining open doors for their analysts. 
	Often the diplomatic way out is just to quietly drop coverage rather than 
	put out a &quot;sell&quot; note. So we need investors, short or long, to express their 
	opinions freely.</li>
	<li>In China, as with other emerging markets, there are vast problems with 
	corporate governance, fraud and corruption, and these need to be exposed, 
	partly to improve market efficiency and partly to deter such behaviour by 
	reducing the chance that it will remain unnoticed.</li>
	<li>One of Hong Kong's core competitive advantages over mainland China is 
	supposed to be the ability to speak freely.</li>
</ol>
<p><em>Webb-site Reports</em> is now in its 17th year of critical reporting on 
listed companies (amongst other things); we would hate to have to stop, so we 
will be watching these cases very carefully.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=44714">China Evergrande Group</a></li>
				
				<li><a href="/dbpub/articles.asp?p=49466">China Lumena New Materials Corp.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=60983">E-Commodities Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=41012">Hidili Industry International Development Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=53913">Longfor Group Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=131541">Moody's Investors Service Hong Kong Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=59790">WEST CHINA CEMENT LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2362187">Left, Andrew Edward</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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