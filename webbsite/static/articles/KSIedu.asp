
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

<script type="text/javascript">document.title="China First Capital (1269) and a questionable joint venture";</script>

	<div class="summary">Webb-site finds serious problems with CFC's statements about a GBP60m UK start-up joint venture with a BVI company, the owner of which is not disclosed, which has only partly paid for its share of the JV.</div>

<h2 class="center">China First Capital (1269) and a questionable joint venture<br>
<span class="headlinedate">7 October 2018</span></h2>

<p>Scanning through announcements during a much wider and ongoing investigation, 
Webb-site came across a curious one by <a href="../dbpub/articles.asp?p=133667">
China First Capital Group Ltd</a> (<strong>CFC</strong>, 1269), which on 
15-Jun-2018
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0615/LTN201806151081.pdf" target="_blank">
announced</a> that it was entering into a 49:51 UK joint venture with a BVI 
company, <a href="../dbpub/orgdata.asp?p=22241178">Bonus First Holdings Ltd</a> (<strong>BF</strong>), the owner of which was 
not disclosed.</p>
<p>The JV, <a href="../dbpub/orgdata.asp?p=12117196">KSI Education Ltd</a> (<strong>KSIE</strong>), 
had not commenced business and had net assets of GBP1, with 1 issued share held 
by <a href="../dbpub/positions.asp?p=15295441">Yao Zhen</a> (<strong>Ms Yao</strong>), 
about whom nothing was disclosed, save that she is an "Independent Third Party". 
CFC would issue 74.5m shares valued at HK$4.15 each (GBP29.4m in total) in 
exchange for 29.4m new shares (49%) of KSIE, while BF would subscribe GBP30.6m 
in cash for 30.6m shares (51%). So that's a hefty GBP60m start-up in the UK 
education sector - although it's not clear what KSIE would do with the CFC 
shares to monetize them.</p>
<p>The announcement stated:</p>
<blockquote>"Completion of the Investment Agreement shall take place after all 
the conditions precedent to the Completion are fulfilled and on the date <strong>
when the total consideration payable by [CFC] and [BF] is satisfied</strong>." 
(our bold)</blockquote>
<p>On 6-Jul-2018, CFC
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2018/0706/LTN201807061215.pdf" target="_blank">
announced</a> that Completion took place that day and the new CFC shares had 
been issued to KSIE.</p>
<h3>BF only partly paid for its shares in KSIE</h3>
<p>Unlike opaque HK, the UK companies registry has no paywall and 
documents are <a href="https://beta.companieshouse.gov.uk/" target="_blank">freely available online</a>. So we checked and found serious problems 
with CFC's statement. In a
<a href="../codocs/KSIE180806SH01.pdf" target="_blank">Return of Allotment of 
Shares</a> filed on 6-Aug-2018 (one month after Completion), KSIE states "No 
shares allotted other than for cash". That's false because shares were allotted in 
exchange for new CFC shares. More importantly, the 30.6m KIE shares allotted to 
BF were only paid partly paid, at GBP0.5229 per share, with GBP0.4771 per share 
(of par value GBP1) unpaid. So BF only put in GBP16m, leaving a GBP14.6m 
shortfall.</p>
<p>Page 2 of the filing states: "Every share has full rights in the company with 
respect to voting, dividends and distributions". However, this is in conflict 
with Article 21 of KIE's
<a href="../codocs/KIE180612articles.pdf" target="_blank">Articles of 
Association</a>, titled "All shares to be fully paid up", which states:</p>
<blockquote>"No share is to be issued for less than the aggregate of its nominal 
value and any premium to be paid to the company in consideration for its issue".</blockquote>
<p>So it appears that the issue of part-paid shares to BF was invalid under the 
Articles of Association of KIE, and at most, the GB16m paid should be regarded 
as a deposit for the future issue of shares. But if those shares were not legally issued, 
then they don't count and CFC owns almost 100% (save 1 share) of KIE, so it has 
just issued shares to its own subsidiary. </p>
<p>So the "total consideration payable" by Bonus First on Completion had not in 
fact been satisfied as CFC claimed. BF has only put up 26.7% of the GBP60m 
target capital, but now has 51% of the voting rights in KIE (if the share issue 
was valid). CFC injected shares valued at GBP29.4m, but due to the cash 
shortfall, CFC's 49% share is worth only GBP22.25m unless and until BF pays up, 
leaving CFC with a GBP7.15m loss.</p>
<h3>4, not 3, Directors of KSIE</h3>
<p>The first announcement also stated:</p>
<blockquote>"Upon Completion, the board of directors of [KSIE] shall comprise of 
three directors and each of [CFC], [BF] and Ms. Yao shall nominate one director 
to [KSIE]."</blockquote>
<p>This wasn't true either. In fact, upon Completion,
<a href="../dbpub/officers.asp?p=12117196">there were 4 directors</a>. Ms Yao 
was appointed upon incorporation on 9-Oct-2017. Wilson Sea (<strong>Mr Sea</strong>) 
and Ms Li Dan (<strong>Ms Li</strong>) were appointed on 4-Jun-2018, 11 days 
before the JV was announced, and <a href="../dbpub/positions.asp?p=17144855">Sabrina Cheung Ting Wang</a> (<strong>Ms Cheung</strong>) 
was appointed on 11-Jun-2018, 4 days before the JV was announced. So even at the 
announcement stage, there were 4 directors. Mr Sea is Chairman of CFC and Ms Li 
is an ED of CFC. So, you must be wondering, who represents BF, if anyone? We 
thought it might be Ms Cheung, but she has been described in a CFC
<a href="http://www.cfcg.com.hk/en/media_detail.php?id=4334" target="_blank">
press release on 30-Aug-2016</a> as "partner of First Capital Fund", next to 
"Jeff Zhang, President of <a href="../dbpub/orgdata.asp?p=22241243">First Capital Fund Management Ltd</a>", which is a 100% 
subsidiary of CFC. So it seems that CFC has 3 of the 4 directors on the board.</p>
<p>On 11-Jun-2018, 4 days before the JV was announced, the Articles of 
Association of KIE <a href="../codocs/KIE180611res.pdf" target="_blank">were 
amended</a> to stipulate that as long as Ms Cheung remains a director, she will 
be Chairman; that the Chairman has a casting vote on board resolutions; and that 
her appointment can only be terminated by a special resolution (75% vote) of 
shareholders, giving CFC (with 49% of the voting rights) a veto on her removal.</p>
<p>All of this begs the question of whether KIE is in practice a subsidiary of 
CFC, either because it has majority representation on the board or because the 
part-paid share issue to BF was invalid.</p>
<h3>About BF</h3>
<p>We still don't know who owns BF, and other than Ms Yao, there has been no UK filing regarding 
"Persons with Significant Control" of KSIE, which is required at the 25% level. 
However, we note that BF was a "cornerstone investor" in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2018/0629/ltn201806291480.pdf" target="_blank">
prospectus</a> dated 30-Jun-2018 of
<a href="../dbpub/orgdata.asp?p=13903189" target="_blank">Kinergy Corporation 
Ltd</a> (3302), and that CFC's 100% subsidiary,
<a href="../dbpub/adviserships.asp?p=2452643">First Capital Securities Ltd</a>, was 
a "Joint Bookrunner and Joint Lead Manager" in the IPO. The prospectus failed to 
state who owned BF.</p>
<h3>Ms Yao owns two more UK KSI companies</h3>
<p>Finally, we note that on 22-May-2018, Ms Yao incorporated two more UK 
companies as their sole director and sole shareholder. They are
<a href="../dbpub/orgdata.asp?p=15289719">KSI EDU LTD</a> and
<a href="../dbpub/orgdata.asp?p=15286026">KSI GLOBAL LTD</a>. We don't know what 
she plans to do with those, nor why KSIE is not their initial shareholder, given 
that it was incorporated first.</p>
<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22241178">Bonus First Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=133667">China First Capital Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2452643">China Sunrise Securities (International) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=22241243">First Capital Fund Management Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13903189">KINERGY CORPORATION LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15289719">KSI EDU LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12117196">KSI EDUCATION LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15286026">KSI GLOBAL LTD</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
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