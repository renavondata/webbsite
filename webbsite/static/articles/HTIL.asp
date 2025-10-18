
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

<script type="text/javascript">document.title="Vodafone's potential US$2bn+ claim against Hutch";</script>

	<div class="summary">After selling its Indian business to Vodafone in 2007, HTIL shrank itself by distributing proceeds, as well as its HK business, to shareholders, leaving far less in net tangible assets than the US$2bn+ Indian capital gains tax claim now levied against Vodafone. HTIL was privatised last month. If the tax is upheld, Vodafone may claim it back under an HTIL indemnity. How much is that worth now, and will HWL shareholders carry the can?</div>

<h2 class="center">Vodafone's potential US$2bn+ claim against Hutch<br>
<span class="headlinedate">23 June 2010</span></h2>
<h3>Background</h3>
<p>On 12-Feb-2007, <a href="../dbpub/orgdata.asp?p=22764">Hutchison Telecommunications International Ltd</a> (<strong>HTIL</strong>)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070212/LTN20070212169.pdf" target="_blank">announced</a> the sale of CGP Investments (Holdings) Ltd (<strong>CGP</strong>, 
Cayman) to Vodafone International Holdings B.V. (Netherlands), a wholly-owned 
subsidiary of <a href="http://www.vodafone.com" target="_blank">Vodafone Group Plc</a> (<strong>Vodafone</strong>) for US$11.08bn 
(HK$86.57bn). CGP held a 66.9848% interest in 
Hutchison Essar Ltd (<strong>HEL</strong>, India), a mobile telecoms operator. A
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070221/LTN20070221077.pdf" target="_blank">
circular</a> to HTIL shareholders was dated 21-Feb-2007. The next day, HTIL
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070222/LTN20070222092.pdf" target="_blank">
announced</a> an intended special dividend of HK$6.75 per share.</p>
<p>On 15-Mar-2007, HTIL
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070316/LTN20070316049.pdf" target="_blank">
announced</a> that it would pay US$415m (HK$3.24bn) to Essar Communications 
(India) Ltd (<strong>ECIL</strong>), which owned a 21.9% interest in HEL, to 
settle various claims of rights in relation to the sale, reportedly including 
pre-emption rights. The sale
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070509/LTN20070509051.pdf" target="_blank">
completed</a> on 8-May-2007, when Vodafone and HTIL also agreed that Vodafone 
would retain US$352m in lieu of &quot;certain potential claims&quot; against HTIL. HITL 
booked a gain of HK$69.34bn (US$8.89bn) on the sale.</p>
<p>The HK$6.75 special dividend was formally
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20070523/LTN20070523021.pdf" target="_blank">
declared</a> on 22-May-2007, distributing <strong>HK$32.23bn</strong>. 18 months 
later, on 12-Nov-2008, HTIL
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20081112/LTN20081112116.pdf" target="_blank">
announced</a> another special dividend of HK$7, distributing <strong>HK$33.68bn</strong>. 
On 4-Mar-2009, HTIL
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090304/LTN20090304666.pdf" target="_blank">
announced</a> the proposed distribution of the entire share capital of
<a href="../dbpub/orgdata.asp?p=48857">Hutchison Telecommunications Hong Kong 
Holdings Ltd</a> (<strong>HTHK</strong>, 0215) as a dividend. HTHK operates a 
mobile telecoms business in HK and Macau, and a fixed-line business in HK. It 
was listed on 8-May-2009. The distribution further shrank the shareholders' 
equity of HTIL from HK$19.11bn to HK$9.05bn, down from a pro forma $92.33bn 
immediately after the sale of CGP.</p>
<p>The final published balance sheet of HTIL at 31-Dec-2009 put its net assets at 
HK$11.97bn, but that included goodwill and other intangible assets of HK$2.63bn, 
leaving net tangible assets of HK$9.34bn.</p>
<p>On 8-Jan-2010, HTIL
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100108/LTN20100108019.pdf" target="_blank">announced</a> its proposed privatisation by a scheme of arrangement in which it 
cancelled the 39.65% of the issued shares not owned by 
<a href="../dbpub/orgdata.asp?p=366">Hutchison Whampoa Ltd</a> (<strong>HWL</strong>, 
0013) for HK$2.20 per share, payable by a wholly-owned subsidiary of HWL, 
valuing HTIL at HK$10.59bn. The privatisation
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100525/LTN20100525017.pdf" target="_blank">
completed</a> on 24-May-2010.</p>
<h3>Potential US$2bn+ tax liability</h3>
<p>As you may have observed, the disposal by HTIL of CGP did not involve any 
transfer of assets in India. CGP was incorporated in the Cayman Islands, so the 
sale of CGP was entirely offshore. However, the Indian tax authorities don't see 
it that way, and have launched a claim estimated at some US$2bn (HK$15.6bn) 
plus interest, for capital gains tax on the transaction. 
They say that it is the underlying assets which matter. If the claim is upheld, 
then it has wide-reaching implications for foreign investment in India.</p>
<p>Since HTIL has no assets in India, they are going after Vodafone for not 
withholding and paying the tax on the transaction. Vodafone, of course, does 
have assets in India which could be pursued in settlement of a claim. It is 
contesting the claim in the Indian courts.</p>
<p>The India Economic Times
<a href="http://economictimes.indiatimes.com/articleshow/1817975.cms" target="_blank">
reported</a> on 28-Mar-2007, before the deal completed, that the tax authorities 
were asserting a claim. The Indian Income Tax Department (<strong>IT Department</strong>, 
as it is known) issued a &quot;show cause&quot; letter in 2007 asking Vodafone to explain 
why it should not be taxed for failure to deduct tax from the purchase payment. 
Vodafone filed a writ petition against the notice, challenging its validity and 
legality in the Bombay High Court, which dismissed the petition on 3-Dec-2008. 
See the press release of the Central Board of Direct Taxes
<a href="http://www.incometaxindia.gov.in/archive/CBDTPressRelease_04122008.pdf" target="_blank">
here</a>. Vodafone appealed to India's Supreme Court, which in Jan-2009 sent the 
case back to IT Department with an instruction to first decide whether or not it 
had jurisdiction. On 31-May-2010, the IT Department issued a reported 761-page 
ruling saying that it did. On 7-Jun-2010, Vodafone
<a href="http://uk.reuters.com/article/idUKTRE6560VF20100607" target="_blank">
filed an appeal</a> with the Bombay High Court, which has
<a href="http://in.reuters.com/article/idINIndia-49126420100608" target="_blank">
deferred</a> the case to 8-Jul-2010.</p>
<h3>HTIL's indemnity to Vodafone</h3>
<p>Now, why does all this matter to HTIL? Well, it turns out that in the original 
sale, HTIL indemnified Vodafone against a tax claim. This was not mentioned at 
the time in the announcement or circular regarding the transaction. It might 
have appeared in the agreement which was &quot;available for inspection&quot; in an office in Tsing Yi, 
New Territories, HK, for 14 days in Feb-2007, but we bet that nobody went to see it.</p>
<p class="regbox">Regulatory note: again, we urge that the Listing Rules 
be amended to require &quot;documents available for inspection&quot;, including material contracts, to 
be uploaded to the central web site at HKEx and left there permanently. Making 
them available only for physical visits is a joke.</p>
<p>HTIL was also listed on NYSE (ticker HTX), so it had to file a &quot;Risk Factors&quot; 
statement not required under HK Listing Rules. In its
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080509/LTN20080509307.pdf" target="_blank">
2007 Form 20-F</a>, filed on 9-May-2008, it said:</p>
<blockquote>
	<p>&quot;We may be subject to claims or have to make payments as a 
	result of warranty or indemnity obligations assumed in connection with the sale 
	of interests relating to [CGP] to Vodafone. Furthermore, the Indian tax 
	authorities may consider the gain arising from this sale to be taxable in India.</p>
	<p>The Indian tax authorities have initiated an attempt to 
	investigate certain aspects of such sale, focusing on whether Vodafone should 
	have withheld tax from the acquisition proceeds. Vodafone has taken court action 
	in India to quash such attempt.</p>
	<p>We believe that the sale is not taxable in India and therefore 
	neither is any Indian tax payable by us nor was Vodafone required to withhold 
	any Indian tax. Accordingly, we have not provided for any claims or Indian tax 
	liabilities in connection with the sale. However, we cannot assure you what the 
	final outcome will be. If we eventually make any such payments or suffer any 
	Indian tax on this sale, it may have a material adverse effect on our financial 
	position.&quot;</p>
</blockquote>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090527/LTN20090527486.pdf" target="_blank">
2008 20-F</a>, filed on 27-May-2009, said:</p>
<blockquote>
	<p>&quot;In addition, the Indian tax authorities may consider the gain 
	arising from this sale to be taxable in India. The Indian tax authorities have 
	initiated an investigation into Vodafone's obligations to withhold tax from the 
	acquisition proceeds. Vodafone disputed the jurisdiction of the Indian tax 
	authorities in this matter. The Indian Supreme Court ruled, in proceedings 
	initiated by Vodafone, that the question of jurisdiction should be determined by 
	the Indian tax authorities in the first instance, and in the event the 
	authorities make a determination against Vodafone, it may appeal to the Indian 
	High Court.</p>
	<p>We have received legal advice and believe that the sale is not 
	taxable in India, and therefore, no Indian tax is payable by us. Accordingly, we 
	have not provided for any claims or Indian tax liabilities in connection with 
	the sale. However, there can be no assurance what the final outcome will be. If 
	we eventually make any such payments or suffer any Indian tax on this sale, it 
	may have a material adverse effect on our financial position and results of 
	operations.&quot;</p>
</blockquote>
<p>Following the privatisation on 24-May-2010, HTIL, if it still exists, is a 
wholly-owned subsidiary of HWL. HTIL, which was incorporated in the Cayman 
Islands, ceased to have a place of business in HK on 5-Jun-2010, according to 
the HK Companies Registry. As noted above, even before the privatisation, its 
net tangible assets had been reduced by the dividends to HK$9.3bn, far less than 
the potential tax claim from Vodafone. Most of those dividends went to HWL as 
controlling shareholder of HTIL. Now that HTIL is a 100% HWL subsidiary, it is 
possible that further distributions of its assets to HWL have been, or may be, 
made - there is no requirement for public disclosure of any intra-group 
reshuffling.</p>
<p>Vodafone shareholders should be concerned about this. In the event that India 
is successful in its tax claim, Vodafone may have a struggle to recover the 
<span lang="en-gb"></span>tax from HTIL under the indemnity. It may even have to sue HWL and/or the 
directors and officers of HTIL for distribution of the assets of HTIL when they 
knew that there was a potential claim for tax, as shown by the Risk Factors 
statements in their own filings. The Indian tax case, and any litigation from 
Vodafone that follows it, is likely to drag on for years. We don't know whether 
Vodafone is using part of its US$352m retention monies to fight the case.</p>
<p>True it may be that HTIL took a view, and received legal advice, that the 
sale is not taxable in India, so we can understand why the directors did not 
record it as a contingent liability in the balance sheet. However, it is another 
thing not to make any mention of it in the notes of the audited financial 
statements, and then to pay out so much by way of dividends as to leave HTIL 
unable to satisfy the amount of tax claimed by India which might be recovered 
under the indemnity. It is equally odd that HWL has not seen fit to mention this 
risk either in its own financial statements. Former HTIL investors may be glad to have escaped this 
liability through the dividends and privatisation, but HWL may not be so lucky.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=22764">HUTCHISON TELECOMMUNICATIONS INTERNATIONAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366">Hutchison Whampoa Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17329">VODAFONE GROUP PUBLIC LIMITED COMPANY</a></li>
				
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