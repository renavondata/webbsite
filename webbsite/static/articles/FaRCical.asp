
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

<script type="text/javascript">document.title="Putting the FRC in Farcical";</script>

	<div class="summary">In a shocking failure to recognise a basic and obvious accounting and auditing error, HK's Financial Reporting Council rejected our complaint. The listed company involved has now admitted the error. We call on the FRC's Process Review Panel to investigate how it deals with complaints.</div>

<h2 class="center">Putting the FRC in Farcical<br>
<span class="headlinedate">16 April 2015</span></h2>
<p class="revisedate"><a href="#update2">updated</a> 22-May-2015</p>
<p>All is not well at the <a href="../dbpub/orgdata.asp?p=37187">Financial 
Reporting Council</a> (<strong>FRC</strong>), HK's auditor investigator, which 
would also like (correctly, in our view) to take disciplinary matters away from 
the self-regulatory HK Institute of Certified Public Accountants. Browsing through freshly released annual reports last Friday (10-Apr-2015), we came upon 
the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0410/LTN20150410355.pdf" target="_blank">
2014 annual report</a> of <a href="../dbpub/articles.asp?p=1365">China Yunnan 
Tin Minerals Group Co Ltd</a> (<strong>CYTM</strong>, 0263). This is a member of 
what we call the "<a href="CNN.asp">Chung Nam Network</a>" of 
companies that we would never own, so it won't surprise you to know that its 
main assets consist of shares in other companies in the network. In 2014, CYTM booked net gains of HK$330.5m on 
its portfolio, and at the year end it had the following financial assets held as 
current assets, shown in note 24 of the audited financial statements:</p>
<img class="center" alt="" src="../images/CYTM1412n24.png">
<p>Now, read the words we highlighted carefully. It states that CYTM's holding 
in <a href="../dbpub/articles.asp?p=4822">Heritage International Holdings 
Limited</a> (<strong>Heritage</strong>, 0412) is more than 10% of CYTM's total 
assets, but represents 0.03% of the ordinary shares of Heritage. "FVTPL" is 
accounting-speak for "Fair Value Through Profit or Loss" and means that the 
listed shares are valued at market prices at the year-end.</p>
<p>CYTM had total assets of HK$1488.6m, so 10% of that is HK$148.86m, so that 
implies that the stake in Heritage is at least HK$148.86m. However, if it is 
only 0.03% of Heritage, then that implies that Heritage had a year-end market value of 
at least HK$496.2 
billion, making it bigger than say, Hutchison Whampoa Ltd. In fact, although we regard Heritage as a bubble stock, its
<a href="../dbpub/outstanding.asp?i=1030">market value</a> at 31-Dec-2014 was 
HK$6.48bn, nowhere near the implied figure. So CYTM's stake can't have been 0.03%, and must 
have been more like 3% of Heritage, a 
stake that would be substantially harder to liquidate in a hurry, so the error 
is material to readers of the accounts, particularly investors.</p>
<p>This was such a glaring error that we spotted it within minutes. At 
17:08 on Friday, 44 minutes after the annual report was filed at HKEx, we filed 
a complaint with the Stock Exchange requesting a correction, and we also 
filed the complaint with the FRC, because the auditor of CYTM,
<a href="../dbpub/adviserships.asp?p=32684">Pan-China (H.K.) CPA Limited</a>, 
should have spotted such as basic error, so we called on the FRC to investigate 
the accounting firm. The person who signed off the audit is Mr Lee Ping Kai. We 
gave the FRC the same facts stated above.</p>
<p>The response from the FRC, received on Tuesday (14-Apr-2015) afternoon, was a 
rejection of our complaint that is so 
breathtakingly stupid that we feel obliged to publish it in full:</p>
<div class="letterbox">
	<p>Dear Mr Webb</p>
	<p>I refer to your complaint 
	dated 10 April 2015 relating to the consolidated financial statements of China 
	Yunnan Tin Minerals Group Company Limited (stock code: 00263) (<strong>the 
	Company</strong>) and its subsidiaries for the 
	year ended 31 December 2014 (<strong>the 2014 
	Financial Statements</strong>).</p>
		<p>Note 24 to the 2014 Financial 
	Statements stated that the percentage of the Company's holding in Heritage 
	International Holding Limited was determined based on the issued share capital 
	of the investment instead of market capitalization and therefore there is no 
	evidence suggesting that the percentage is inappropriate. Accordingly, we 
	consider that there is no auditing irregularity in this respect and we will not 
	pursue your complaint further at this stage.</p>
	<p>Thank you for your attention.</p>
	<p>Yours faithfully</p>
	<p>Anna Lau<br>
	Associate Director<br>
	Investigation &amp; Compliance</p>
</div>
<p>We find it shocking that the FRC, when presented with a 
basic and 
obvious accounting and auditing error and all the facts to prove it, could not understand it, 
and even worse, inferred an irrelevant comparison with the issued share capital 
when none had been made. At 
least the Stock Exchange agreed with our complaint, because yesterday evening 
(15-Apr-2015), CYTM 
published a "clarification"
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0415/LTN20150415632.pdf" target="_blank">
announcement</a>. The audited accounts were indeed wrong, and the figure should 
have been 3.2% of Heritage, not 0.03%. Incidentally, CYTM again misnamed the 
investee, omitting the "s" from "Holdings".</p>
<p>We wonder how many other complaints have been wrongly rejected by the FRC, 
and we call on the
<a href="../dbpub/officers.asp?p=46828&amp;hide=Y">Process 
Review Panel</a> of the FRC to look into the process by which 
<a href="http://www.frc.org.hk/en/contact.php#03" target="_blank">complaints</a> 
from the public are handled, including the quality control and the number of persons involved in 
reviewing a complaint and reviewing the proposed response before a response is issued.</p>
<h3 id="update1">Update, 27-Apr-2015</h3>
<p>We have today received the following e-mail from the FRC:</p>
<div class="letterbox">
	<p>Dear Mr Webb<br></p>
	<p>Please be informed that we are 
	reconsidering your complaint dated 10 April 2015 relating to the consolidated 
	financial statements of China Yunnan Tin Materials Group Company Limited (stock 
	code: 00263) and its subsidiaries for the year ended 31 December 2014.</p>
	<p>Thank you for your attention.</p>
	<p>Yours faithfully</p>
	<p>Complaint Handling 
	Officer<br>Financial Reporting Council</p>
</div>
<h3 id="update2">Update, 22-May-2015</h3>
<p>We have today received the following e-mail from the FRC:</p>
<div class="letterbox">
<p>Dear Mr Webb</p>
<p>Further to our email of 27 April 
2015, the Financial Reporting Council has reviewed the disclosure in note 24 to 
the relevant financial statements. The Council agreed that there was a 
deficiency in the relevant disclosure and the issued share capital of Heritage 
International Holdings Limited held by China Yunnan Tin Minerals Group Company 
Limited and its subsidiaries was at least 2.3% as at 31 December 2014. The 
Council accepted that the note was not correctly analyzed in the first review by 
the complaint handling officer.<br><br>On reconsideration, the Council also 
noted that the disclosure deficiency in note 24 to the relevant financial 
statements has been corrected by the listed company concerned through its 
announcement dated 15 April 2015 and that the original misstatement would not 
affect the true and fair view of the relevant financial statements. The Council 
decided to advise the listed company concerned to act diligently in future when 
preparing financial statements and the auditor concerned to act diligently in 
future when providing professional services.<br><br>In view of the above, it is 
not considered appropriate that the Financial Reporting Council conduct an 
enquiry or an investigation into the non-compliance.</p>
<p>We take this 
opportunity to thank you again for bringing the matter to our attention.</p>
<p>If you have any question, please feel free to contact us.</p>
<p>Yours faithfully</p><p>Complaint Handling Officer<br>Financial Reporting Council</p>
</div>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=37187">Accounting and Financial Reporting Council</a></li>
				
				<li><a href="/dbpub/articles.asp?p=46828">Accounting and Financial Reporting Council Process Review Panel</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1365">GT GROUP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4822">SHANDONG HI-SPEED HOLDINGS GROUP LIMITED</a></li>
				
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