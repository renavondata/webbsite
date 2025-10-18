
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

<script type="text/javascript">document.title="Veto Aeon Credit loan to parent";</script>

	<div class="summary">We urge Aeon Credit (0900) to withdraw its proposal to lend money to its parent, instead pay a special dividend of the funds which are clearly surplus to requirements. and to announce the consolidation of its greater China business and stop the parent competing with the child. If not withdrawn, then we urge independent shareholders to vote against, and to watch out for the timing of the notice period and vote before the Chinese New Year holidays.</div>

<h2 class="center">Veto Aeon Credit loan to parent<br>
<span class="headlinedate">22 January 2013</span></h2>
<p><a href="../dbpub/orgdata.asp?p=3034">AEON Credit Service (Asia) Co Ltd</a> (<strong>ACSA</strong>, 
0900.HK) has too much money. How do we know this? Because on 11-Jan-2013 it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0111/LTN20130111653.pdf" target="_blank">
announced</a> a proposal to lend up to HK$600m to its immediate parent company, 
AEON Credit Holdings (Hong Kong) Co., Ltd (<strong>ACH</strong>), using part of 
its unused borrowing facilities, for 3 years, the maximum period allowed for 
ongoing connected transactions under the Listing Rules. The proposal, unless 
withdrawn, is subject to independent shareholders approval at an EGM to be 
convened soon.</p>
<p>The loan is equivalent to about 28% of its shareholders' funds of 
$2,144m at 20-Aug-2012. ACH is 100%-owned by AEON Credit Service Co., Ltd. (<strong>ACSJ,
</strong>8570.JP) of Japan, which in turn is 45.63% owned by AEON Co., Ltd (<strong>AEON</strong>, 
8267.JP). AEON also owns 71.64% of <a href="../dbpub/orgdata.asp?p=3035">AEON 
Stores (Hong Kong) Co., Ltd</a> (<strong>ASHK</strong>, 0984.HK).</p>
<p>Loans to controlling shareholders are always a bad idea. The controlling 
shareholder, through its power to control the composition of the board, can in 
practice decide whether to repay the loan or seek rollover. If a controlling 
shareholder gets into financial difficulties, it is more likely to repay its 
bankers than it is to repay a company it controls. Its bankers may even have a 
security pledge over the listed company's shares.</p>
<p>If a company has surplus capital beyond its foreseeable requirements, then 
the golden rule is that this should be returned to <em>all </em>shareholders by 
way of a dividend, not to <em>one </em>shareholder by way of a soft loan. Loans 
to controlling shareholders are an abuse of company funds.</p>
<p>ACSA is in the business of consumer credit, on which it normally makes a 
decent spread. In the year to 20-Feb-2012, it had interest income of $1,010m and 
interest expenses of just $118m, on outstanding loans of $4775m. That's an 
average interest rate of about 21% on the loans, ignoring the near-zero rate on 
time deposits. But for a loan to its parent, it proposes to charge only 0.75% 
above its unspecified &quot;Cost of Funds&quot;, which is probably only about 2% p.a.. 
ACSA says that &quot;the Company&quot; (presumably, its directors) &quot;considers it desirous 
to grant the Loan Facility to ACH to generate a reasonable return for the 
Group&quot;. Desirous for ACH, perhaps, but not for minority shareholders, given the 
risks involved.</p>
<p>Setting aside the issue of whether lending money to a controlling 
shareholder is a bad idea, the terms are lousy. ACH does not even offer any 
security, and the interest rate is not reasonable compared to the rate on 
consumer loans. If ACH wishes to borrow money, then it should go directly to the 
banks and pay market rates.</p>
<p>Another concern for ACSA shareholders is what this says about the parent's 
strategy in greater China. ACH wants to use the money to invest in its own &quot;PRC 
Business&quot; outside of ACSA, defined as micro-finance, leasing and consumer 
finance. That puts it into competition with ACSA, and reduces the potential for 
ACSA to expand beyond its mature HK business. ACH also has wholly-owned 
subsidiaries in Taiwan doing credit cards and hire purchase. If AEON wishes to 
regain investors' confidence after this proposal is either withdrawn or 
defeated, then it should announce a consolidation of all its greater China 
business into ACSA and sign a non-compete undertaking, removing the conflicts of 
interest.</p>
<h3>Who can vote</h3>
<p>ACSA is owned 51.94% by ACH, 13.37% by ACSJ and 0.90% by ASHK, so that is a 
total of 66.22% that cannot vote, leaving independent shareholders with 33.78%. 
Of this, latest disclosures show that at 29-Jun-2012, DJE Investment S.A. (<strong>DJE</strong>)
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=188721&amp;lang=EN&amp;dia=Y" target="_blank">
held</a> 8.01%, and at 20-Nov-2009, Aberdeen Asset Management (<strong>Aberdeen</strong>)
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=126189&amp;lang=EN&amp;dia=Y" target="_blank">
held</a> 8.00%, a combined 16.01%, almost half of the float. So if they both 
oppose the deal, then it should fail, while if one opposes and the other 
supports, then the matter will be decided by other public shareholders. 
Incidentally, the bulk of the DJE holding is in the
<a href="http://www.dje.de/DE_en/fonds/portfoliostruktur/LU0188847478-LuxTopic-PACIFIC-P/" target="_blank">
LuxTopic Pacific fund</a>, which also has a holding in ASHK, another 
over-capitalised member of the AEON group, and these are the 1st and 3rd-largest 
positions comprising about one sixth of the fund, so they have a big interest in 
getting this right.</p>
<h3>Tight timing</h3>
<p>The announcement was filed at 22:59 on Friday 11-Jan, just one minute before 
the HKEx filing system shut down for the weekend, minimizing publicity (until 
now). The target date for sending out the circular is Fri-1-Feb-2013, in which 
case the 14-day notice period would include the first weekend followed by the 
5-day weekend of Chinese New Year (9-13-Feb). The notice period must be at least 
14 clear days, excluding the day of the notice and the meeting, so the meeting 
could be held on Sat-16-Feb or later. Proxy forms have to be filed 48 hours 
before the meeting, potentially meaning 9 a.m. on Thursday 14-Feb, the first day 
after the holidays, which in practice means they would need to be filed before 
the holidays, by Friday 8-Feb. Add on a couple of days for mailing time, and for custodians to 
transmit instructions to sub-custodians and then to the registrar or CCASS, and 
you end up with a <strong>voting window of only 3 working days from 4-6-Feb.</strong></p>
<h3>Action required</h3>
<p>First, via this article, Webb-site calls on ACSA to withdraw this outrageous 
proposal and apologise with deep bows for insulting investors' intelligence. 
This family-first approach, where parent companies raid the savings accounts of 
their listed children, may be the way things are done in Japan, but it is 
unacceptable corporate governance in Hong Kong. Imagine the uproar if Li Ka-shing 
were to seek to borrow a quarter of Cheung Kong's net assets as ACH is doing 
with ACSA.</p>
<p>Second, we urge ACSA to immediately declare a special dividend, payable as 
soon as possible, of at least HK$600m, or <strong>at least $1.44 per share</strong>, 
which is clearly an amount which it has available as unused borrowing 
facilities. ACH will get its fair share of this.</p>
<p>Third, ACSA should announce that it will be the vehicle for AEON's credit 
business in greater China and propose reasonable terms for the injection of all 
competing businesses into ACSA, together with a non-compete undertaking from 
AEON and ACSJ.</p>
<p>If ACH ignores this call and sends out the circular, then in the interest of 
fairness we urge them to extend the notice period to include at least 10 clear 
business 
days in Hong Kong, in accordance with Provision E.1.3 of the
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/appendix_14.pdf" target="_blank">
Code on Corporate Governance</a>, and we urge the Stock Exchange Listing Division to require 
this, otherwise shareholders will not have a reasonable opportunity to vote. We also urge all independent shareholders, including Aberdeen and DJE, to 
vote against the proposal and protect themselves and their clients from abuse, 
and to vote early, avoiding the risk of failed instructions caused by the 
Chinese New Year holidays.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3034">AEON CREDIT SERVICE (ASIA) COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3035">AEON STORES (HONG KONG) CO., LIMITED</a></li>
				
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