
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

<script type="text/javascript">document.title="Trouble and strife at Applied Development";</script>

	<div class="summary">An encrypted Court of Appeal judgment reveals a classic basket case of corporate governance problems at Applied Development (0519) - a case study of what can go wrong with small, family-run HK-listed companies.</div>

<h2 class="center">Trouble and strife at Applied Development<br>
<span class="headlinedate">18 January 2011</span></h2>
<p>Browsing the court judgments this weekend, our eyes alighted upon
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=74791&amp;currpage=T" target="_blank">
MKGWH v RKSH</a> (the <strong>Judgment</strong>, 12-Jan-2010) in the Court of Appeal. The initials were used because this 
case has its roots in a divorce case, but to any student of HK-listed small-caps 
it is quite obviously the case of Mimi Wong Kar Gee v Raymond Hung Kin Sang, and 
given the content of the Judgment, investors in the HK-listed company,
<a href="../dbpub/articles.asp?p=1942">Applied Development Holdings Ltd</a> (<strong>ADH</strong>, 
0519), have a right to know what is going on, hence this article, because the 
disclosures of ADH certainly haven't told you the full picture. What follows is 
exemplary of many of the corporate governance problems that plague small 
family-run listed companies in HK.</p>
<p><a href="../dbpub/positions.asp?p=1943">Mimi Wong Kar Gee</a> (<strong>Ms 
Wong</strong>) and <a href="../dbpub/positions.asp?p=1941">Raymond Hung Kin Sang</a> 
(<strong>Mr Hung</strong>) were married in 1973. Mr Hung founded the predecessor 
of ADH in 1976, and Ms Wong joined the group in 1977, according to the annual 
report. ADH has been listed since 1986. In an almost sarcastic nod to the Code 
on Corporate Governance, on 31-May-2005 Mr Hung
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20050531/LTN20050531103.pdf" target="_blank">
stepped down</a> from Chairman and remained Managing Director, while Ms Wong 
became Chairman. That is probably not what the authorities had in mind when they 
drafted
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/appendix_14.pdf" target="_blank">
Code Provision A.2.1</a> which says that the two roles should be separate. In 
reality, it makes no difference when the Chairman and MD are also the 
controlling shareholder(s).</p>
<p>Mr Hung and Ms Wong have three children, one of whom, 
<a href="../dbpub/positions.asp?p=28664">Marcus Hung Kai Mau</a>, has been an 
Executive Director since 16-Aug-2005 when he was 22. Ms Wong petitioned for 
divorce in 1999. In Jun-1999, a decree nisi was granted, but the decree absolute was not 
granted until Mar-2010 on Mr Hung's application.</p>
<p>The Judgment bring to light the following points:</p>
<ol>
	<li>Under the Company's bye-laws, the Chairman is not required to retire by 
	rotation. This breaches Code Provision A.4.2 of the
	<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/appendix_14.pdf" target="_blank">
	Code on Corporate Governance</a> in Appendix 14 of the Listing Rules, which 
	requires retirement by rotation for all directors at least every 3 years. 
	Despite that, the
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100907/LTN20100907233.pdf" target="_blank">
	2010 annual report</a> (p20) says &quot;The Company has complied 
	with the provisions in the Code on Corporate Governance&quot;. This is obviously 
	<strong>false</strong>. The annual report on page 23 states: &quot;All Directors...are subject to 
	retirement by rotation at least once every three years&quot;. That too is 
	<strong>false</strong>. In the 
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091028/LTN20091028096.pdf" target="_blank">2009 annual report</a>, 
	it did state on page 24 that &quot;the Chairman will not be subject to retirement 
	by rotation&quot;. In the corresponding paragraph in 2010, that was omitted, but 
	there has been no change to the bye-laws since 2009.</li>
	<li>As part of her remuneration as a director, Ms Wong lives in 2 (or 3 - 
	see below) apartments 
	in a building on the Peak, of which ADH owns 4 out of 6 apartments. She has 
	lived in the apartments for the past 6-7 years. A look at the annual reports 
	confirms this - in the year to 30-Jun-2010, she had rent-free accommodation 
	with a rateable value of $2.241m (2009: $2.379m). That's on top of salaries 
	and other benefits of $3.315m, a discretionary bonus of $134k, share options 
	worth $1.6m and MPF contributions of $12k, taking her total pay to $7.302m.</li>
	<li>In Dec-2010, in the course of communications with the Stock Exchange of 
	Hong Kong Ltd (<strong>SEHK</strong>) regarding a Very 
	Substantial Disposal (<strong>VSD</strong>) (<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101214/LTN20101214502.pdf" target="_blank">announced</a> 
	on 14-Dec-2010), SEHK took the view that since Ms Wong was no longer an ED 
	and thus accommodation was not provided under her remuneration package, the 
	licence for her occupation after Jun-2010 constituted a continuing connected 
	transaction.</li>
	<li>At a board meeting on 17-Dec-2010, ADH decided to terminate the license 
	by one month's notice, given on 18-Dec-2010 and expiring on 18-Jan-2011, 
	today.</li>
	<li>On 21-Dec-2010, Mr Hung requested ADH to &quot;consider all possible options 
	for [Ms Wong] to continue living at [the Peak property]&quot;. Apparently he had 
	given an undertaking to the court on 17-Dec-2010 (the same day as the board 
	meeting) to take steps to procure that Ms Wong could remain at the property 
	including persuading the board to grant a licence, and his payment of the 
	licence fee.</li>
	<li>On 24-Dec-2010, the INEDs wrote to Mr Hung, indicating that after Ms 
	Wong's re-designation to non-executive director, she was a bare licensee. 
	The INEDs also said &quot;that she had not been participating in the Company's 
	operations since 2000&quot;. If that is the case, then why was she paid so much? 
	The same INEDs were a majority of the members of the remuneration committee, 
	so they should know. They also said that the license fee 
	being paid for the property was below market.</li>
	<li>On the same day, ADH received advice from its solicitors Baker &amp; 
	McKenzie setting out the non-compliance with the Listing Rules regarding the 
	licence and advising rectifying actions, including seeking independent 
	shareholders' approval. ADH considered this to be &quot;too costly and less 
	preferable to a termination of the licence&quot;. </li>
</ol>
<h3>Severn Villa</h3>
<p>According to the annual report, ADH owns flats 1A, 1B, 2B and 3B of Severn 
Villa, 3 Severn Road, The Peak. The 4-storey (including carport) property was
<a href="https://bmis.buildingmgt.gov.hk/eng/showbuilding.php?id=55914" target="_blank">built</a> in 1982. 
The properties were acquired through a listed then-subsidiary now known as
<a href="../dbpub/orgdata.asp?p=4954">JLF Investment Co Ltd</a> (<strong>JLF</strong>, 
0472) in Sep-2001 for about HK$61m. ADH sold its stake in JLF in a deal 
struck on 1-Dec-2003, and at the same time, ADH acquired from JLF a company 
called iQuorum Cybernet Ltd, subsidiaries of which owned properties (including 
the Severn Villa Properties), antiques, and shares of ADL.</p>
<p>The JLF
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20040112/LTN20040112062.pdf" target="_blank">
circular</a> dated 12-Jan-2004 includes a valuation report as at 31-Oct-2003. 
The total gross floor area of the 4 units in Severn Villa is 6,200 sq ft, plus a 
1,550 sq ft roof on block B. The valuation was put at only HK$38m. At the time, 
the property was vacant and under renovation, with completion expected in early 
2004, and it was intended that the Chairman of ADH (then Mr Hung) would live in 
2 of the units. The circular also includes an antique valuation report of 142 
antiques.</p>
<p>The VSD
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101214/LTN20101214502.pdf" target="_blank">
announcement</a> of 14-Dec-2010 contains a vague paragraph about Ms Wong's 
occupation of the apartments. It says that she occupied 3 of the 4 units owned 
by ADH (not 2 of 4 as mentioned in the Judgment) and that pursuant to a license 
fee agreement (the date of which is not mentioned) the Severn Villa Properties 
(not a defined term) &quot;began to generate its rental income of approximately 
HK$122,000, not formed as a director remuneration&quot; for the period from 
10-Jun-2010 to the 30-Jun-2010 year-end. It states &quot;The terms of the license fee 
agreement have been agreed at arm length's basis since January 2004 when Ms Wong 
was an executive director of the Company and entitled to be provided a free 
accommodation by the Company.&quot; In more 
garbled English, it said:</p>
<blockquote>&quot;No matter that the Company will further follow up any actions 
in respect of this continuing connected transaction as required by and complied 
with Chapter 14A of the Listing Rules immediately.&quot;</blockquote>
<p>What the heck does that mean? We cannot decipher it, but can tell you that 
there has been no announcement or circular seeking independent shareholders' 
ratification of the connected transactions.</p>
<h3>A free home for life?</h3>
<p>It is notable that according to the Judgment (para 11), the Deed of Divorce 
dated 20-Nov-2001 included an agreement that the apartments will be registered 
in the name of the Company but would be &quot;for [Ms Wong] to reside in for her 
lifetime&quot;. Investors might wonder whether that would be a fair use of company 
assets after she was no longer working for the company - after all, it was 
presumably not a term of the divorce that she must always work for ADH. It appears that the 
assets of ADH itself were being treated since 2001 as marital assets, rather than just the 
couple's shareholding in ADH. We fail to see how this was in the interests of 
those shareholders who were never married to Mr Hung. </p>
<p>Furthermore, it is unclear how ADH could ever have sold the properties if Mr 
Hung was obliged to procure ADH to make them available to Ms Wong for her lifetime. 
That brings us to interesting claims in the accounting policies...</p>
<h3>Accounting policies</h3>
<p>For the year to 30-Jun-2008 onwards, new accounting standards required ADH to 
state the critical judgments made in applying accounting policies. They then 
included the following wording each year:</p>
<blockquote>&quot;The Group's investment properties in Hong Kong with a 
carrying value of [X] are currently used as directors' quarter[s]. However, it 
is the Group's intention to hold the properties for capital appreciation but not 
for own use. The Group has appointed a property agent to seek for potential 
buyers in the market. Accordingly, the properties have been accounted for as 
investment properties instead of property, plant and equipment....</blockquote>
<blockquote>The Group's plan is to sell the properties to the market. 
Until the date the disposal is taken place, the properties would be occupied by 
the directors on a temporary basis. Therefore, no rental income is expected to 
be generated from the properties up to their disposal.&quot;</blockquote>
<p>This policy had no doubt been silently followed in earlier years before they 
had to explain it, because they had always been accounted for as investment 
properties, and the directors had lived in them since at least 2004, after the 
renovation. The policy allowed ADH to book the investment revaluation through 
the income statement, rather than holding the properties as premises used for 
staff quarters, at depreciated cost. This made ADH's profitability appear a whole lot 
better than it would have been otherwise. Yet if these properties were only 
occupied on a &quot;temporary basis&quot; and the directors intended that ADH would sell 
them, then how is that consistent with the 2001 divorce agreement that Ms Wong 
would continue to live in them during her lifetime?</p>
<p>But that's not all.</p>
<h3>The curious case of the blue-glazed vase</h3>
<p>On 25-Sep-2008, Mr Hung sent an e-mail to Ms Wong and others about the 
need for ADH to improve its financial position. He suggested selling antiques. 
In 2009, ADH produced an internal control manual which provided certain 
procedures to be followed before its assets can be deal with. According to the 
Judgment, Ms Wong did not follow these procedures when an antique vase was sold 
through an auction house for $2.6m on 8-Apr-2010. It is probably
<a href="http://www.sothebys.com/app/live/lot/LotDetail.jsp?lot_id=159589671" target="_blank">
this one</a>, which went for $3.14m including Sotheby's exorbitant commissions, 
or what they euphemistically call &quot;buyer's premium&quot;, about 20%. The net price 
for the vase was $2.496m - indicating that a further 4% was paid by the seller. Notably 
Sotheby's expected price on that vase, if we have found the right one, was only 
$0.8-1.0m.</p>
<p>The Judgment says that on 14-Apr-2010, according to an &quot;internal report of Misappropriation&quot; (the
<strong>Internal Report</strong>), a member of staff of ADH &quot;discovered&quot; the 
sale via the auctioneer's website. This strikes us as somewhat odd - you might 
wonder why a member of staff spends time browsing the hundreds or thousands of 
items on the site - unless they suspected or knew that the vase was up for sale 
in the first place.</p>
<p>On 15-Apr-2010, Mr Hung sent a &quot;handwritten note by email&quot; (presumably, an 
image of handwriting) to Ms Wong, copied to their son and the Company Secretary, 
saying that ADH still lacked cash, and asking for the proceeds of the Sotheby's 
vase sale as well as arranging the sale of some paintings and another vase. Ms 
Wong apparently gave (or said she would give) instructions to Sotheby's for the 
money to be paid into ADH's bank account, but then she countermanded that and 
told them to put the payment &quot;on hold&quot;.</p>
<p>On 26-May-2010, Mr Hung's solicitors wrote to his wife's claiming that she 
had arranged for the sale of the vase &quot;without the Company's consent or prior 
knowledge&quot; and demanding that she authorize payment by Sotheby's of proceeds to 
ADH. Why didn't ADH just authorize Sotheby's directly? Perhaps Sotheby's thought 
they were acting for her personally and would not take instructions from ADH. 
Also, why were Mr Hung's solicitors, and not ADH's solicitors, writing to her 
about the company's assets?</p>
<p>On 2-Jun-2010 (according to the Internal Report), Sotheby's informed ADH that 
the proceeds had been put into Ms Wong's personal account.</p>
<p>On 4-Jun-2010, Ms Wong's solicitors replied denying sale without consent, 
denying having taken the proceeds, but acknowledging that she had not instructed 
Sotheby's to release the proceeds to ADH, because ADH owed her $3.1m, including $2.65m 
in salary from Oct-2008 to May-2010. She wanted to deduct this from the auction 
proceeds. She also claimed that certain ADH funds were not being properly 
accounted for. She said accountants would be instructed to investigate.</p>
<h3>Removal of Ms Wong as Chairman</h3>
<p>On 8-Jun-2010, ADH circulated a board resolution (attaching the Internal 
Report) for removing Ms Wong as Chairman and director. That was invalid. The 
Judgment doesn't say why, but we guess that ADH's bye-laws require unanimous 
consent for written resolutions. So a board meeting was convened for 
10-Jun-2010. Ms Wong appeared with her solicitors and as Chairman declared it 
&quot;cancelled&quot;, as there were initially too few directors present (&quot;inquorate&quot;). 
After she left, the meeting apparently took place by telephone conference. 
According to the minutes, the board considered the Internal Report and resolved 
to remove Ms Wong as Chairman and re-designate her as non-executive director.</p>
<p>The company
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100610/LTN20100610122.pdf" target="_blank">
announcement</a> of this move is remarkably bland. It simply states that the 
28-year old son has been appointed Chairman and that Ms Wong has been 
redesignated as non-executive director. It says &quot;The redesignation...is 
considered by the Board to be in the best interests of the Company and its 
shareholders as a whole&quot;. The announcement contained no hint of the strife 
behind the scenes, and says:</p>
<blockquote>&quot;there are no other matters relating to the appointment of Mr. 
Marcus Hung as chairman of the Board or the appointment of Ms Wong as a 
non-executive director of the Company that needs to be brought to the attention 
of the shareholders&quot;</blockquote>
<p>Given the allegations on both sides, we regard that as <strong>false and misleading</strong>, 
and call on the SFC to investigate.</p>
<h3>The secret Investigation Committee</h3>
<p>The next day, 11-Jun-2010, Ms Wong complained to SEHK challenging the power 
of the board to remove her and listing her allegations against Mr Hung regarding 
company funds unaccounted for.</p>
<p>On 15-Jun-2010, a board meeting decided to set up an Investigation Committee 
(<strong>IC</strong>) comprising the 3 INEDs, to investigate, with the 
assistance of forensic accountants, (1) the allegation of Ms Wong's unauthorised 
sale of the vase and (2) Ms Wong's complaint to SEHK about PRC rentals, which 
she said were not properly accounted for.</p>
<p>Investors were never told about these allegations or the existence of the 
Investigation Committee. We don't know who the &quot;forensic accountants&quot; were. 
According to the Judgment, On 
9-Jul-2010, there was an &quot;acrimonious&quot; board meeting, including Ms Wong, in 
which the IC report was considered. The IC found that (1) the sale of the vase 
was not in compliance with ADH's internal control procedures and was 
unauthorised, and (2) there was no misappropriation of PRC rentals.</p>
<p>Eventually on 28-Jul-2010 Ms Wong instructed Sotheby's to pay the proceeds 
into ADH's account. The ADH accounts for the year ended 30-Jun-2010 record in 
the cash flow statement &quot;proceeds from the sale of an antique&quot; at $2.496m and 
&quot;gain on disposal of an antique&quot; of $2.196m, implying a book cost of $300k.</p>
<p>Incidentally, the 2010 annual report contains the usual &quot;Corporate Governance 
Report&quot; and states that during the year, a review of internal controls &quot;showed 
that the internal controls system operated, on the whole, satisfactorily.&quot; 
Again, no disclosure of the alleged unauthorised sale of the vase, and no 
mention of the IC or the forensic accountants.</p>
<h3>Removal from the board</h3>
<p>As a consequence of her removal as Chairman, Ms Wong, now just an ordinary 
director, was subject to re-election at the Annual General Meeting. The AGM
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100907/LTN20100907219.pdf" target="_blank">
circular</a> regarding the re-elections was dated 8-Sep-2010. Finally, some 
light was shining on dark places. Page 7 states:</p>
<blockquote>&quot;(i) On 3 August 2010, [ADH] commenced a legal action against 
Ms. Wong seeking a return of a number of antiques and artwork which are the 
Company's assets and which in the past have been placed in the custody of Ms. 
Wong and which she has not returned to the Company; and</blockquote>
<blockquote>(ii) On 24 August 2010, Ms. Wong commenced a legal action 
against [Mr Hung] and [ADH] seeking, among other things, to inspect certain 
books of accounts, statutory records and documents of the Company.&quot;</blockquote>
<p>The net book value of the antiques and artwork was put at HK$1.14m. The 
&quot;other assets&quot; in the ADH group balance sheet at 30-Jun-2010 were $1.546m, 
representing &quot;antiques held for long-term investment purposes&quot; (see note 16), so 
she held most of them. The fair value of these assets is probably much more than 
the book value, if the vase is any guide.</p>
<p>The AGM was scheduled for 22-Oct-2010. Fearing that she would be voted out, 
in Aug-2010 she applied for an injunction. The hearing took place in 
mid-September 2010 (again, no announcement from ADH) and on 7-Oct-2010, the 
judge ordered Mr Hung to take all necessary steps, including voting at the AGM, 
&quot;to restore Ms Wong to an executive directorship of [ADH] and thereafter 
continuing as an executive director&quot;.</p>
<p>On 15-Oct-2010, Mr Hung was granted leave by the same Court to appeal. 
So when the meeting began, he
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20101022/LTN20101022436.pdf" target="_blank">
proposed an adjournment</a> to mid-January 2011, which was passed without 
objection. The Court of Appeal heard the case on 4-Jan-2011, and in the Judgment on 12-Jan-2011 
it set aside the lower ruling, stating that this was a public company, not a 
family company, and accepting an undertaking from Mr Hung not to vote the Family 
Shares at the AGM.</p>
<h3>Questionable options and voting</h3>
<p>On 21-Oct-2009, the board of ADH decided to conditionally grant options (the <strong>2009 Options</strong>)to subscribe a total of 44.43m 
shares (5.09% of ADH) at $0.29 per share to Mr Hung (22.7m), Ms Wong (13.33m) 
and their son (8.4m). That was the day of the annual results, but there was no 
mention of it, and it was not until a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091028/LTN20091028120.pdf" target="_blank">
circular</a> dated 29-Oct-2009 that shareholders were told. <strong>The failure 
to announce the conditional grant on 21-Oct-2009 was a breach of </strong>
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_17.pdf" target="_blank">
<strong>Listing Rule 17.06A</strong></a><strong> (introduced on 1-Jan-2009), and 
we urge the Stock Exchange to investigate.</strong> This is particularly serious 
given the size of the grant.</p>
<p>The somewhat flimsy excuse for the grant was &quot;After considering 
the past contribution to the Group from the above Directors, the Remuneration 
Committee...proposed the grant...as their reward&quot;. Strange, given that the family 
already had a controlling interest in the firm, and given that options are 
supposed to be an incentive to future performance rather than a reward for the 
past.</p>
<p>Past performance had been pretty crappy anyway: Mr Hung already held options 
to subscribe 45,611,141 shares with an exercise price of $0.54 for 5 years granted 
on 25-Apr-2006 (the <strong>2006 Options</strong>). This was a massive grant 
itself, for shares equivalent to 5% of existing issued shares, so, being more 
than both 0.1% and $5m, it was subject, under the Listing Rules, to independent 
shareholders' approval with a
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060522/LTN20060522087.pdf" target="_blank">
circular</a> dated 19-May-2006. It was
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060608/LTN20060608058.pdf" target="_blank">
approved</a> on 7-Jun-2006 with a turnout equivalent to <strong>78.24%</strong> 
of the shares eligible to vote. The 2006 Options were cancelled without 
explanation or announcement at some time during the 6 months to 30-Jun-2009, 
when the share price was far lower than the exercise price.</p>
<p>For the vote on the 2009 Options, the family (including a trust) held a total of 
421,205,640 shares, and ADH itself owned 34,329,000 shares through a 
wholly-owned subsidiary, making a total of 455,534,640 shares (52.17%). These 
should all have been excluded from voting, and ADH claimed that they were. This 
would leave 417,683,186 shares eligible to vote.</p>
<p>However, the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091124/LTN20091124217.pdf" target="_blank">
poll results</a> on 24-Nov-2009 show that 319,765,160 shares voted in favour of 
the 3 options grants and 239,400 against, a total turnout of 320,004,560 shares, 
or <strong>76.61%</strong> of the shares eligible to vote. Both the turnouts for 
the 2006 Options vote and the 2009 Options vote are exceptionally high, 
particularly for a small-cap without much institutional ownership. For all 
the other resolutions at the 2009 AGM, on which the family was allowed to vote, the turnout was 
330,222,616 - that's only an additional turn-out of 10,218,056 shares, or 1.17% 
of ADH. If the family trust didn't vote in favour of the option grants, then it 
apparently didn't vote in favour of anything else either. But there were no other 
shareholders over the 5% disclosure threshold in ADH.</p>
<p>Compare that with the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110114/LTN20110114329.pdf" target="_blank">
poll results</a> at the adjourned 2010 AGM on Friday (14-Jan-2011). There, Mr 
Hung had undertaken to the Court of Appeal not to vote the Family Shares at the 
AGM, so you would expect that the public turn-out would be similar to 2009. But 
the highest turnout from other shareholders was only 53,488,137 shares, on 
resolutions 1 and 2b. That's only about one sixth of the purported number of 
&quot;independent&quot; shares which were voted in favour of the options in 2009 
and 2006.</p>
<p>It is difficult to avoid the inference that at least some of the family's 
shares were voted in favour of the 2006 Options and the 2009 Options. We call on 
the SFC to investigate whether ADH's and the directors' claims that the shares 
were not voted were false and misleading.</p>
<h3>An INED with a bogus degree</h3>
<p>And in the words of Steve Jobs, &quot;there's one more thing&quot;. In the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091028/LTN20091028120.pdf" target="_blank">
circular</a> of 24-Oct-2009, it was stated that Mr Lo Yun Tai, an INED since 
5-Mar-1998, would not offer himself for re-election at the AGM. That would 
reduce the number of INEDs below the 3 required by the Listing Rules. Despite 
knowing that, it was not until 4 months later, on 24-Feb-2010, that ADH got 
around to
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100222/LTN20100222132.pdf" target="_blank">
appointing</a> a replacement, <a href="../dbpub/natperson.asp?p=56538">Su Ru Jia</a> (<strong>Mr Su</strong>).</p>
<p>And what a high-calibre individual he is. He &quot;holds a MBA degree from 
International East-West University of America&quot; they said. That would be
<a href="http://hawaii.gov/dcca/ocp/udgi/lawsuits/int_east" target="_blank">this 
one</a> (<strong>EWU</strong>), an unaccredited diploma mill which was 
purportedly operated out of Hawaii until the Department of Commerce &amp; Consumer 
Affairs sued it in 2002. For more on that, see our other story today -
<a href="eastwest.asp">Guangdong Investment's unaccredited MBAs</a>.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4954">New Silkroad Culturaltainment Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1942">Novautek Technologies Group Limited (BM)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=28664">Hung, Marcus Kai Mau</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1941">Hung, Raymond Kin Sang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=56538">Su, Ru Jia</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1943">Wong, Mimi Kar Gee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
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