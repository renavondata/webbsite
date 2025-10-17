
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

<script type="text/javascript">document.title="China First Capital (1269): part 2";</script>

	<div class="summary">We continue our investigation into the UK joint venture, following a "clarification" announcement late on Christmas Eve.</div>

<h2 class="center">China First Capital (1269): part 2<br>
<span class="headlinedate">13 January 2019</span></h2>
<p>In our <a href="KSIedu.asp">article</a> of 7-Oct-2018, we raised 
questions about <a href="../dbpub/orgdata.asp?p=12117196">KSI Education Ltd</a> (<strong>KSIE</strong>), 
a 49:51 joint venture between <a href="../dbpub/articles.asp?p=133667">
China First Capital Group Ltd</a> (<strong>CFC</strong>, 1269) and a BVI 
company, <a href="../dbpub/orgdata.asp?p=22241178">Bonus First Holdings Ltd</a> (<strong>BF</strong>), 
the owner of which was not (and still hasn't been) disclosed. The transaction 
was
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2018/0615/ltn201806151081.pdf" target="_blank">
announced</a> on 15-Jun-2018. At 19:24 on Christmas Eve, 24-Dec-2018, when 
nobody was paying much attention (the market having closed at 12:00), CFC 
slipped out a "supplemental and clarification"
<a href="http://www3.hkexnews.hk/listedco/listconews/sehk/2018/1224/LTN20181224575.pdf" target="_blank">
announcement</a> which was clearly in response to the issues we raised.</p>
<p>We noted in the article that BF had only partly paid for its shares in KSIE, 
which contravened the articles of association of KSIE, which required all shares 
to be paid for in full. As if by magic, CFC now claims that on 6-Jul-2018, the
<a href="http://www3.hkexnews.hk/listedco/listconews/SEHK/2018/0706/LTN201807061215.pdf" target="_blank">
completion date</a> of the Investment Agreement, KSIE adopted new articles of 
association which removed the prohibition on issuing partly-paid shares, so hey 
presto, there was no contravention. The funny thing is that KSIE did not get 
around to
<a href="https://beta.companieshouse.gov.uk/company/11003471/filing-history" target="_blank">
filing the resolution</a> that changed the articles with UK Companies House (<strong>UKCH</strong>) 
until 24-Oct-2018. Not only that, but on 14-Aug-2018, KSEI filed a resolution on 
other changes to the articles of association made on 12-Jun-2018. If they had 
really made further changes on 6-Jul-2018 then they could have included them in 
the August filing 39 days later. So it appears likely that KSIE backdated the 
resolution to address the issue raised in our article.
<a href="https://www.legislation.gov.uk/ukpga/2006/46/section/26" target="_blank">
Section 26</a> of the UK Companies Act requires amended articles of association 
to be submitted to UKCH within 15 days, so in both filings, KSIE was in breach 
of that requirement.</p>
<p>CFC states that "due to an unexpected obstacle of [KSIE] in receiving 
remittance", BF had only settled GBP16.1m by the time of completion on 
6-Jul-2018, and that the description in the first announcement that the total 
amount (GBP30.6m) would be paid on completion was misstated "due to an 
inadvertent mistake in summarising the terms of the Investment Agreement" and 
that in fact BF had "30 Business Days" to come up with the money - which begs 
the question of why BF sent any money at all on completion. The clarification 
announcement states that by Christmas Eve, BF has paid in full, although CFC 
doesn't say when that happened.</p>
<p>We also noted in the article that KSEI had 4 directors, not 3 as claimed in the June 
announcement. CFC now claims that Mr Wilson Sea (<strong>Mr Sea</strong>) and Ms 
Li Dan (<strong>Ms Li</strong>) resigned from KSIE on 11-Jun-2018. How strange then that 
KSIE didn't get around to filing the termination forms with UKCH until 
22-Oct-2018, over 4 months later. Indeed, the notices of their <em>appointment</em> 
were filed on 9-Aug-2018, over a month after they purportedly resigned. The late filing 
of both is in breach of
<a href="https://www.legislation.gov.uk/ukpga/2006/46/section/167" target="_blank">
Section 167</a> of the UK Companies Act, which requires such filings to be made 
within 14 days. They also claim that Mr Chen Xiaowei (<strong>Mr Chen</strong>) 
was appointed as director on completion, 6-Jul-2018, to represent BF. Again, 
that filing was not made until 22-Oct-2018, in breach of Section 167.</p>
<p>The clarification announcement states that to replace Mr Sea and Ms Li,
<a href="../dbpub/positions.asp?p=17144855">Ms Sabrina Cheung Ting Wang</a> (<strong>Ms 
Cheung</strong>), CFC's "chief representative" in the UK, was appointed as a 
director of KSIE on 11-Jun-2018 (before the JV was signed) because KSIE 
understood that the bank account opening process could be accelerated if 
directors are British citizens. Ms Cheung is said to have "extensive working 
experience in the education industry and has a well-established network with 
reputable education institutes in the United Kingdom".</p>
<p>Webb-site has dug a little deeper into Ms Cheung's background. A person named 
"Ting Wang Cheung", also born in Apr-1977, was a
<a href="https://companycheck.co.uk/director/910184556/TING-WANG-CHEUNG/companies" target="_blank">
director or secretary</a> of two now-dissolved companies in the UK between 2004 
and 2008. Her address then, in West End Road, Frampton, Boston, Lincolnshire, 
was the same as another director/company secretary of those two companies,
<a href="../dbpub/positions.asp?p=22636140">Albert Cheung Yin Tak</a> (<strong>Mr 
Cheung</strong>), who is almost 18 years older than her. The English marriage 
index records a marriage in 2001 in Boston, Lincolnshire between an "Albert Y T 
Cheung" and a "Ting Wang". They are probably the same as Mr Cheung and Ms Cheung 
respectively. We don't know whether the two are still married, but she does know 
where to get a good meal. Mr Cheung runs "<a href="https://www.facebook.com/albertshongkong/" target="_blank">Albert's 
Hong Kong Restaurant</a>" (<a href="https://goo.gl/maps/mh6adfNBvjv" target="_blank">street 
view</a>) in Boston, and he was
<a href="https://www.thegazette.co.uk/notice/2886811" target="_blank">declared 
bankrupt</a> on 11-Oct-2017 on petition of the UK tax authorities. The order was
<a href="https://www.thegazette.co.uk/notice/3017770">annulled</a> on 
12-Apr-2018 after the debts were cleared.</p>
<p>CFC has still not disclosed who owns BF. KSIE has not made any change to its 
UK filing of "<a href="https://beta.companieshouse.gov.uk/company/11003471/persons-with-significant-control" target="_blank">Persons 
with significant control</a>" (<strong>PSC</strong>) since incorporation on 
9-Oct-2017, before the JV was set up, even though BF now purportedly owns 51% of 
KSIE. Ms Yao Zhen, who was the first director and subscriber of 1 share in KSIE, 
is still listed as the only PSC. We know nothing about Mr Chen, BF's 
representative. CFC did not mention Ms Yao's other companies or the reasons for 
them: the similarly-named
<a href="../dbpub/orgdata.asp?p=15289719">KSI EDU LTD</a>, and
<a href="../dbpub/orgdata.asp?p=15286026">KSI GLOBAL LTD</a>.</p>
<p>Meanwhile, if you're feeling hungry:</p>
<iframe src="https://www.google.com/maps/embed?pb=!4v1547375723096!6m8!1m7!1snZRWTZtfZrhUNJhA7tah-A!2m2!1d52.97619604608375!2d-0.02973687705436238!3f201.06!4f7.069999999999993!5f0.4000000000000002" width="100%" height="600" frameborder="0" style="border:0" allowfullscreen></iframe>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22241178">Bonus First Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=133667">China First Capital Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15289719">KSI EDU LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12117196">KSI EDUCATION LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15286026">KSI GLOBAL LTD</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=22455315">Chen, Xiaowei (1971-11)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=22636140">Cheung, Albert Yin Tak</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17144855">Cheung, Sabrina Ting Wang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15295441">Yao, Zhen (1971-02)</a></li>
				
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