
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

<script type="text/javascript">document.title="Cooking with Gas";</script>

	<div class="summary">We describe how Grand Field (0115) spent HK$63m on a 75% stake in a company which owned nothing other than a right to invest in a piped gas joint venture, which had lost its business license even before the acquisition was completed. One of the men behind this deal also features in our next story, on Kwong Hing (1131), so stay tuned!</div>

<h2 class="center">Cooking with Gas<br>
<span class="headlinedate">4 March 2004</span></h2>
<p>Grand Field Group Holdings Ltd (<b>Grand Field</b>, 0115) a 
group engaged in property development and investment in Guangdong, went public in 
1999 by taking over the listing of Chintex Oil and Gas Company 
Ltd (<b>Chintex</b>), which was one of Hong Kong's longest suspended stocks.</p>

<p>Chintex was suspended from trading in Sep-89. It had invested in 
two oil refinery projects on the same site in Zhanjiang, PRC 
which were seized by order of the mainland courts in Mar-91, resulting in 
write-offs of HK$241m and leaving Chintex with no business. Chintex was once 
chaired by Chim Pui Chung (<b>Mr Chim</b>), a former Hong Kong legislator who went to 
jail for an unrelated forgery offence.</p>

<p>Grand Field
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19990902/LTN19990902028.HTM">took over</a> the shell in a scheme of arrangement and gave Chintex holders 80 
shares in Grand Field for every 2,000 shares in Chintex, leaving the former 
owners of Chintex with 2.1% of Grand Field. Grand Field then took over the listing, effective 
13-Oct-99, over 10 years after Chintex was suspended.</p>

<p>Now we hit the fast-forward button three years to the subject of 
this article.</p>

<p>On 4-Jun-02, Grand Field
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020604/LTN20020604072.doc">
announced</a> that it had conditionally agreed on 30-May-02 to buy 75% of 
Sino Richest&nbsp; Ltd (<b>Sino Richest</b>) from 3 vendors, for HK$63m, to be 
satisfied by the issue of 315m shares in Grand Field at $0.2 each, representing 
15.4% of the enlarged Grand Field. The shares were issued at a 33% premium to 
the market price of $0.15.</p>

<p>The shares were acquired from Ivan Wong Chi Keung (<b>Mr Wong</b>, 15%), and from 
two BVI companies - Worldgate Developments Ltd, owned by Mr&nbsp; Lin 
Xian Guo (<b>Mr Lin,</b> 30%) and Logistic China Enterprises Ltd, owned by Mr Zeng Qing Chun (<b>Mr Zeng,</b> 30%) respectively. The remaining 25% of 
Sino Richest would be held by Mr Zeng's company. Mr Wong is something of a deal 
maker and you will be hearing more about him in our next article.</p>

<p>So what did Sino Richest own, that made it worth so much? Well, 
not much. It was only incorporated on 3-May-02, less than 4 weeks before the 
agreement with Grand Field. On 25-May-02 it signed an agreement with a Chinese-named entity 
(no translation was offered in the announcement) to establish a joint venture to develop and construct gas 
pipelines in Chongqing, China. Sino Richest would own 80% of the JV, which 
was planned to have a registered capital of HK$30m. At 30-May-02 Sino Richest had unaudited net 
liabilities of HK$18,380.</p>

<p>The announcement contained absolutely no explanation of who Mr 
Wong, Mr Lin and Mr Zeng were, or why it was that Grand Field could not have 
entered into the deal on its own. Grand Field was, in effect, paying these men a 
$63m premium for the right to invest $18m in 60% of a gas project. That's a 350% 
finder's fee!</p>

<p>A condition of the deal was the obtaining of a valuation report 
valuing the JV at not less than $95m. The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020712/LTN20020712073.pdf">
circular</a> to Grand Field shareholders dated 8-Jul-02 contained a valuation report on the JV, assuming it 
had been fully invested, by B.I. Appraisals Ltd, signed by a William C.K. Sham 
(an unfortunate name in the circumstances), 
which valued the JV on a discounted cash flow basis at HK$106m. However, this 
report had so many 
assumptions that, in our view, it was worthless to investors. The assumptions 
included:</p>

<ul>
  <li>assuming that the projections outlined in the Business Plan 
provided will materialize; and</li>
  <li>assuming that the projections outlined in the Business Plan 
provided are reasonable, reflecting market conditions and economic fundamentals.</li>
</ul>

<p>The Business Plan was presumably provided by the vendors. 
Including these assumptions in the valuation was like saying &quot;the numbers add 
up,&nbsp; provided that the numbers are real&quot;. At $106m, this valuation 
implied that Grand Field's 60% effective interest in the JV would be worth 
$63.6m, just a fraction above the consideration for the deal. What a 
coincidence.</p>

<p>But wait a minute. The valuation assumed that the business <u>had 
been funded</u>, whereas Sino Richest had in reality not yet contributed the 
HK$24m of capital 
needed to fund its 80% stake in the JV. The circular fudged this issue, but it 
is clear from subsequent disclosures that Grand Field was buying a shell which 
had not invested any money  in the JV.</p>

<p>On 
27-Feb-03, Grand Field
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030227/LTN20030227080.pdf">
announced</a> that Sino Richest (which was now a 75% subsidiary) had not proceeded with the JV because the China 
party had <i>&quot;failed to transfer the ownerships of their assets&quot;</i> as 
their share of the capital injection, and consequently the JV's business license from the Chongqing Government
<i>&quot;no longer had effect&quot;</i>. Grand Field didn't put a date on this lapsing, but 
a later 
announcement revealed that the licence actually lapsed on 10-Sep-02 (three months 
after the licence was issued). Grand Field had been silent about this problem 
for over 5 months, even speaking optimistically about the JV in their interim 
results published on 19-Sep-02, when they
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020920/LTN20020920073.pdf">
wrote</a>:</p>

<blockquote>

<p>&quot;the Chongqing JV is in a good position to bring substantial 
profit contributions to [Grand Field] in the future.&quot;</p>

</blockquote>

<p><b>Why did they think that the JV was <i>&quot;in a good position&quot;</i> 
when its license had lapsed 9 days earlier?</b> The strangest thing about the timing of this deal is that 
according to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030515/00115/F114.pdf">
note 29</a> of the 2002 annual report, the acquisition did not actually complete 
until December 2002. <b>So why did Grand Field go ahead, knowing that the business 
licence had already lapsed? Were they buying gas, or hot air?</b></p>

<p>In the 27-Feb-03 announcement, although the JV was now dead, Grand Field was still optimistic in disaster, 
and said it was 
liaising with local government officials in the hope of pursuing the piped gas 
business on its own in Chongqing. This turned out to be a pipe-dream.</p>

<p>On 28-Apr-03 the auditor of Grand Field, Charles Chan, Ip &amp; Fung CPA Ltd (<b>CCIF</b>), 
thought they could smell gas, and 
issued a qualified
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030515/00115/F108.pdf">
audit report</a> for the year ended 31-Dec-02. They wrote:</p>

<blockquote>

<p>&quot;the evidence available to us was limited: during the year [Grand 
Field] acquired a subsidiary [Sino Richest] and the acquisition generated goodwill on 
consolidation of approximately HK$63,006,000...Although the acquisition was 
based on independent valuation report, there were no financial due diligence 
procedures or audited financial statements at the date of acquisition. We have 
been unable to carry out any audit procedures to ascertain the fair value of the 
identifiable assets and liabilities of the subsidiary.&quot;</p>

</blockquote>

<p>This is hardly surprising, because apparently the only thing 
Sino Richest owned was a contractual right to pursue a joint venture which was 
now dead and for which the business licence had lapsed before the year end, yet the 
directors of Grand Field had included the JV as an intangible asset in the accounts. 
Were they cooking with gas?</p>

<p>For this intangible asset, Grand Field had paid Mr Wong and his fellow vendors $63m in 
shares. CCIF said about the deal:</p>

<blockquote>

<p>&quot;we have not obtained all the information and explanations that 
we considered necessary for the purpose of our audit...and we were unable to 
determine whether proper books of account had been kept.&quot;</p>

</blockquote>

<p>On 11-Aug-03, Grand Field
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030812/LTN20030812017.pdf">
announced</a> that on 31-Jul-03 it had sold its stake in Sino Richest  to Mr Zeng for 
$32m, and was no longer pursuing gas in Chongqing. The announcement did not 
specifically say whether this payment was in cash or some other kind, but said that 
<i>&quot;the sum&quot;</i> had been 
received by the Company. It booked a loss of $31m on the sale in the Jun-03
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030918/LTN20030918132.pdf">
interim results</a>.</p>

<h3>Auditors replaced</h3>

<p>The 2002
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030515/00115/F107.pdf">
directors' report</a> said that CCIF would be proposed for re-appointment as 
auditors at the AGM, and the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030515/00115/F104.pdf">
Notice of AGM</a> said the same thing (item 3, to re-appoint auditors), but 
something changed. In an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030827/LTN20030827088.pdf">
announcement</a> on 27-Aug-03, Grand Field said that Chu and Chu were 
appointed as auditors that day, <i>&quot;in accordance with the resolution in the 
Annual General Meeting held on 26th June, 2003&quot;.&nbsp; </i>It is not clear 
what they meant by this - either the re-appointment of CCIF was voted down 
(which was not announced) or Chu and Chu were proposed instead (in which case, 
was notice given to shareholders?), or CCIF declined to be re-appointed at the 
AGM. We simply don't know. The Listing Rules still don't specifically require 
companies to announce the outcome of shareholder meetings, although in new rules 
from 31-Mar-04, they will have to announce the outcome if a poll is demanded.</p>

<h3>Missing Disclosures of interests</h3>

<p>As a side note, the 30-Jun-03
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030929/00115/F101.pdf">
interim report</a> names as shareholders Worldgate Developments Ltd and 
Logistics China Enterprises Ltd, each holding 126m shares, which they received 
when they each sold 30% of Sino Richest to Grand Field. But the report did not 
include any deemed holding by Mr Lin or Mr Zeng, if indeed they still own the 
two companies.</p>

<h3>Coming soon...</h3>

<p>This was not the first time Mr Wong had sold a tropical igloo. 
In our next story, we'll tell you about the connection between Mr Wong and
<a target="_blank" href="../dbpub/articles.asp?p=3003">Kwong Hing International Holdings (Bermuda) 
Ltd</a> (1131), one of several listed companies with which he has done similar 
deals.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16425">B.I. APPRAISALS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4802">GRAND FIELD GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20246">Logistic China Enterprises Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10434">Chim, Pui Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49969">Sham, William Chi Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=14331">Wong, Ivan Chi Keung</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=92">Accounting problems</a></li>
				
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