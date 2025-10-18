
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

<script type="text/javascript">document.title="Official: Richard Li doesn't control PCCW";</script>

	<div class="summary">The Government-appointed Broadcasting Authority says that Richard Li doesn't control PCCW - who knew? This exposes a huge loophole in the law on cross-media ownership, which can be avoided simply by passing your shareholdings into a trust. We call on the Government to either scrap the law, which is outdated in the internet age, or close the loophole by amending it.</div>

<h2 class="center">Official: Richard Li doesn't control PCCW<br>
<span class="headlinedate">2 June 2008</span></h2>
<p class="center"><em>&quot;I have no intention to reduce my stake in PCCW&quot;</em><br>
- Richard Li, quoted in SCMP, 30-May-08</p>
<p>What do you mean, <em>&quot;my stake&quot;</em>, Richard? The reason we ask is that the 
Government-appointed <a target="_blank" href="http://www.hkba.hk/">Broadcasting Authority</a> (<strong>BA</strong>) last month
<a target="_blank" href="http://www.info.gov.hk/gia/general/200805/02/P200805020135.htm">
announced</a> the outcome of a review of whether Richard Li Tzar-kai (<strong>Mr 
Li</strong>), Chairman of PCCW Ltd (<strong>PCCW</strong>, 0008) had infringed 
the cross-media ownership provisions of Part 2 of Schedule 1 of the
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&amp;Start=559&amp;Count=59&amp;Expand=559.1#559.1">
Broadcasting Ordinance</a> by simultaneously holding stakes in both PCCW, which 
owns <a target="_blank" href="http://www.now-tv.com/">PCCW Media Ltd</a> (<strong>PCCWM</strong>), a 
pay-TV business, and <a target="_blank" href="http://www.hkej.com/">Hong Kong Economic Journal Co.</a> (<strong>HKEJ</strong>), 
publisher of a Chinese newspaper (which still has no online version).</p>
<p>Mr Li is the settlor (the founder) of certain trusts which own 100% of Pacific Century 
Group Holdings Ltd (<strong>PCGH</strong>), which in turn owns about 75% of 
Pacific Century Regional Developments Ltd (<strong>PCRD</strong>), listed in 
Singapore, which in turn holds about 23% of PCCW. PCCWM is an indirect 
wholly-owned subsidiary of PCCW. So in theory, Mr Li does not own any shares in 
PCGH and hence none in PCCW. Yet he obviously still thinks of it as <em>&quot;my 
stake in PCCW&quot;</em>.</p>
<p>The BA concluded that Mr Li has not infringed the cross-media restrictions, because he 
was not a &quot;voting controller&quot;, either <em>de jure</em> (in law) or <em>de facto</em> 
(in practice), of 15% or more of the voting shares in PCCW Media Ltd (<strong>PCCWM</strong>). 
Therefore it was not necessary to decide what his status was in relation to 
HKEJ, since no common ownership occurred.</p>
<p>The BA said that the trustees of the trusts (whoever they are) are <em>
&quot;discretionary professional trustees who have no legal obligation to consult any 
third party when exercising the rights to vote&quot;</em> shares of PCGH. That comes 
as no surprise. Most of the tycoons in Hong Kong have established trust 
structures which hold the controlling stake in their companies, and in every 
case the trustees would swear to be independent. But having <em>&quot;no legal 
obligation to consult&quot;</em> the founder is not the same thing 
as being prohibited from doing so.</p>
<p>The main purposes of such trusts was to avoid estate duty and perhaps to 
avoid any future legal claims such as divorce, litigation or bankruptcy. Estate 
duty (Hong Kong's death tax) has now been abolished, partly because all the 
tycoons would have avoided it anyway through trust structures, so it would only 
hit the lazy rich or the middle classes who had not established trusts.</p>
<p>For 
trusts to hold up in court, the trustees must be independent. But the commercial 
reality is that they will nearly always follow the wishes of the &quot;settlor&quot;, the 
person who transferred his assets into the trust in the first place. Such wishes 
include 
the purchase or sale of assets, the distribution of income or capital, or the 
voting of shares. If trustees did not follow such wishes then they would rapidly 
find themselves out of a job. Why do you think it is, year after year, that the 
trustees always vote the shares of such companies in favour of all the 
resolutions proposed by the board, which is typically chaired by the tycoon who 
founded the trust?</p>
<h3>Precedent in other regulations and laws</h3>
<p>The Listing Rules and the Takeover Code both recognised long ago that trusts 
are under the effective control of their settlors. The definition of 
&quot;associates&quot; of an individual under
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_1.pdf">
Listing Rule 1.01</a> (yes, the first rule in the book) includes:</p>
<blockquote>&quot;(iii) the trustees, acting in their capacity as such 
trustees, of any trust of which he or any of his family interests is a 
beneficiary or, in the case of a discretionary trust, is (to his knowledge) a 
discretionary object...&quot;</blockquote>
<p>The
<a target="_blank" href="http://www.sfc.hk/sfcRegulatoryHandbook/EN/displayFileServlet?docno=H495">
Takeover Code</a> deems that &quot;related trusts&quot; of a director are presumed to be 
acting in concert with him:</p>
<blockquote>&quot;(2) a company with any directors (together with their close 
relatives, related trusts and companies controlled by any of the directors, 
their close relatives or related trusts)...&quot;</blockquote>
<p>and last but not least, interests in shares held by a trust are deemed to be 
interests of the settlor for the purpose of the disclosure requirements under 
the
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&amp;Start=568.1.1&amp;Count=455">
Securities and Futures Ordinance</a>:</p>
<blockquote>&quot;322 (4) Where property is held on trust and an interest, or 
short position, in shares is comprised in that property-<br>
(a) a beneficiary of the trust...is taken to have such an interest or short 
position...; and<br>
(b) in the case of a discretionary trust, the founder of the trust is taken to 
have an interest or short position...&quot;</blockquote>
<h3>What the Government should do</h3>
<p>The BA's interpretation of the Broadcasting Ordinance, assuming it is legally 
correct, has exposed a huge loophole in the law. By the BA's argument, no tycoon 
who has settled his assets into a trust controls the company you thought he 
controlled. It flies in the face of the <em>de facto </em>understanding of who 
controls these companies. It would, for example, allow Mr Li's father Li Ka-shing 
to say that, because he does not control Cheung Kong (Holdings) Ltd (a trust 
does), he is not a voting controller of
<a target="_blank" href="http://www.metroradio.com.hk/">Metro Broadcast 
Corporation Ltd</a>, a radio station owned 50:50 by Cheung Kong and Hutchison 
Whampoa Ltd (which itself is 49% owned by Cheung Kong).</p>
<p>In this day and age, with the wide availability of information on the 
internet, including international newspapers and streaming TV and radio, it is 
debatable whether we should continue with cross-media ownership restrictions 
between broadcasters and newspapers. Many societies have rolled back such laws, 
and instead focus on general competition issues under the umbrella of a 
competition law, such as whether a merger or common control would be likely to 
damage competition. <em>Webb-site.com</em> favours this approach.</p>
<p>But if we are going to continue with this law, then the loophole should be 
removed by amending the law to include founders or beneficiaries of trusts as 
being deemed voting controllers of any shares held by that trust. Furthermore, 
any ambiguity over intermediate companies should be removed. From the bottom-up, 
if a licensee is a subsidiary of another company, then the 15% test should also 
apply to the parent company. From the top-down, the law should take the same 
approach as the SFO does - namely that if you hold one third or more of a 
company, then you are deemed to control any shares it owns, and so on down the 
chain, until you get to the stake in the licensee company or its parent, where 
the 15% test applies.</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=21018">BROADCASTING AUTHORITY</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1148758">HONG KONG ECONOMIC JOURNAL COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=979">Pacific Century Regional Developments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=740">Li, Richard Tzar Kai</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=103">Broadcasting</a></li>
				
				<li><a href="/dbpub/subject.asp?c=52">Newspapers</a></li>
				
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