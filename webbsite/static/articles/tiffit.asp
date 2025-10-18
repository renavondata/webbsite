
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

<script type="text/javascript">document.title="Tiffit's collapse";</script>

	<div class="summary">We look at the collapse of Tiffit Securities and what lessons the SFC can learn from it. In our view, they should have shut this firm down and banned its operator 3 years ago, after a second regulatory offence and a criminal prosecution. The owner and his firms were also in trouble in Australia in 2001 and 2002</div>

<h2 class="center">Tiffit's collapse<br>
<span class="headlinedate">21 July 2006</span></h2>
<p>The SFC has issued a
<a href="../codocs/SFC060718.pdf">
restriction notice</a> on <a href="../dbpub/articles.asp?p=35499">
Tiffit Securities (Hong Kong) Ltd</a> (<b>Tiffit</b>), a smallish broker with 
700 active cash clients and no margin clients. The notice said:</p>
<blockquote>
	<p>&quot;the SFC uncovered a material shortfall in the securities held by Tiffit 
	on behalf of its clients and breach of the Securities and Futures (Financial 
	Resources) Rules...</p>
	<p>It appears to the SFC that Tiffit has dissipated, transferred or 
	otherwise dealt with clients' property in a manner prejudicial to the 
	interest of its clients and that there might be further such dissipation, 
	transfer or dealing.&quot;</p>
</blockquote>
<p>Should we be surprised by this turn of 
events? Not really, and nor should the SFC. As we shall show, they could have 
shut down Tiffit three years ago.</p>
<p>Two of the Responsible (or some would say, irresponsible) Officers of Tiffit 
are Mr Kwok Wood Yan (<b>Mr Kwok</b>), who reportedly owns the brokerage, and Ms 
Fong Shik Yee (<b>Ms Fong</b>).</p>
<div class="regbox">
	Regulatory note: The SFC has to approves all owners of 10% or more of any 
	brokerage or other intermediary, so they know who owns them. That 
	information is currently secret. It should be made public in an online 
	register, so that investors can check who they are ultimately dealing with. 
</div>
<p>Mr Kwok formerly traded under the unincorporated 
name of Tai Fat Securities Company, and on 19-Jul-01, he was
<a href="../codocs/SFC010719.pdf">
reprimanded</a> and Ms Fong, who worked for him, was suspended for 1 week. The 
SFC found that for 5 years, the brokerage had repeatedly pledged client shares 
to finance its business without any written authorisation from the clients, or 
with expired authorisations. Mr Kwok promised to clean up his act but, as you 
will see, he didn't.</p>
<p>Tiffit was incorporated on 25-Aug-00. On Christmas Eve 2004, the SFC
<a href="../codocs/SFC041224.pdf">
reprimanded</a> Tiffit and suspended Mr Kwok and Ms Fong. Ms Fong's suspension 
began immediately and ran for 3 months and 15 days to 7-Apr-05, while Mr Kwok's 
suspension was helpfully deferred to start the day Ms Fong was allowed back, 
running for 7 months from 8-Apr-05 to 7-Nov-05. The penalties related to earlier 
failures to maintain the required level of liquid capital and to tell the SFC 
about it, between Aug-01 and 26-Jul-02, when the auditors discovered that the 
financial statements omitted a $4m bank overdraft, <i>&quot;thereby causing the SFC 
to believe Tiffit was financially sound when it was not&quot;</i>. These were 
criminal offences for which the pair and Tiffit pleaded guilty and were
<a href="../codocs/SFC030818.pdf">
convicted</a> on 18-Aug-03, when Tiffit and Mr Kwok were each fined just $22k and Ms Fong was fined 
only $7k, plus costs. </p>
<p>Tiffit now has 4
<a target="_blank" href="../dbpub/SFClicensees.asp?p=35499&amp;s=roldn&amp;d=2006-07-17&amp;a=0">
Responsible Officers</a>, including Mr Kwok and Ms Fong. The latest to join, Ms 
Teresa Wong Shue Yung (<b>Ms Wong</b>), became a Responsible Officer of Tiffit on 6-Jul-06, just 
12 days before Tiffit was shuttered. Ms Wong has a history too. On 12-Dec-05, 
she was
<a href="../codocs/SFC051212.pdf">
reprimanded</a> by the SFC and fined $30k for internal control failings at Luen 
Fat Securities Co Ltd, where she was a Responsible Officer. The SFC found, 
amongst other things, that the brokerage had re-pledged securities of certain 
margin clients to banks without valid authority, and had <i>&quot;transferred&quot;</i> 
interest accrued on client money to its own account without client consent. So 3 
out of the 4 Responsible Officers of Tiffit have a regulatory record.</p>
<p>Mr Kwok has also been in trouble with the Australian securities regulator, ASIC. On 18-Jan-02, Tiffstock.com Pty Ltd (<b>Tiffstock</b>) and its directors, 
Mr Kwok and Mr Rocky Cheung Kan Ming (<b>Mr Cheung</b>)
<a target="_blank" href="http://www.asic.gov.au/asic/ASIC_PUB.NSF/print/02/17%20%20Tiffstock.Com%20to%20stop%20dealing%20in%20securities">
gave</a> an
<a target="_blank" href="http://www.asic.gov.au/asic/pdflib.nsf/LookupByFileName/017029033.pdf/$file/017029033.pdf">
enforceable undertaking</a> to ASIC not to deal in securities without a licence. 
They had been promoting HK stocks and Tiffit's services to Australians without a 
licence. According to the National Names Index, Tiffstock was
<a target="_blank" href="http://www.search.asic.gov.au/cgi-bin/gns030c?acn=096_873_166&amp;juris=9&amp;hdtext=ACN&amp;srchsrc=1">
deregistered</a> as a company on 14-Mar-04.</p>
<p>Before that undertaking, in 2001, another company, Tiffit Securities (Australia) Ltd (<b>Tiffit 
Australia</b>) was
<a target="_blank" href="http://www.asx.com.au/about/pdf/disciplinary_circulars/438c_01.pdf">
fined</a> AU$100k (about HK$400k) by the National Adjudicatory Tribunal of 
Australia, for breaches of Australian Stock Exchange Business Rules in 2000, in 
part for lodging false Capital Liquidity Ratio Returns - in other words, the 
same kind of offence for which Mr Kwok and Tiffit was prosecuted in HK in 2003. 
Tiffit Australia was wholly-owned by Tai Fat Securities (Australia) Pty Ltd, of 
which Mr Kwok was the major shareholder and another shareholder was Mr Cheung. 
The details of an event which led to the capital adequacy breach are described 
in a New South Wales Supreme Court
<a target="_blank" href="http://www.lawlink.nsw.gov.au/scjudgments/2004nswsc.nsf/aef73009028d6777ca25673900081e8d/84b63a25e192e524ca256f1500049afa">
case</a> in 2004. Interestingly, the fine levied in Australia was some 9 times 
the total fine against Tiffit and Mr Kwok in Hong Kong, which says something about our regulatory standards. 
Administrators were appointed to Tiffit Australia on 19-Dec-01, although it is 
unclear whether that was voluntary. It was
<a target="_blank" href="http://www.search.asic.gov.au/cgi-bin/gns030c?acn=008_081_758&amp;juris=9&amp;hdtext=ACN&amp;srchsrc=1">
deregistered</a> on 6-Nov-05 and its parent was
<a target="_blank" href="http://www.search.asic.gov.au/cgi-bin/gns030c?acn=089_241_823&amp;juris=9&amp;hdtext=ACN&amp;srchsrc=1">
deregistered</a> on 22-Jan-06.</p>
<p>It seems to <i>Webb-site.com</i> that the SFC has been far too lenient with 
Tiffit, Mr Kwok and Ms Fong. This week's collapse would have been avoided if 
they had been banned from the industry in 2003 after the second offence in HK, 
rather than given enforced holidays which were staggered to allow the firm to 
remain in operation.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=35499">TIFFIT SECURITIES (HONG KONG) LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=49445">Cheung, Rocky Kan Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=35500">Fong, Shik Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=35501">Kwok, Wood Yan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=35502">Wong, Teresa Shue Yung</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=104">Broker failures</a></li>
				
				<li><a href="/dbpub/subject.asp?c=105">Broker regulation</a></li>
				
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