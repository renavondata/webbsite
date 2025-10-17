
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

<script type="text/javascript">document.title="Kunfair Transactions";</script>

	<div class="summary">Exhibition organiser Kenfair has caught our attention with two questionable transactions, first a website upgrade disguised as an investment in a zero-interest non-repayable exchangeable loan note, and now the payment of $19m for non-exclusive rights to use a glorified phone book, from a director of the IPO sponsor. We sent an intrepid agent to fetch a copy.</div>

<h2 class="center">Kunfair Transactions<br>
<span class="headlinedate">28 January 2003</span></h2>
<p>We've now seen two questionable deals in a row (three if you count the IPO) for exhibition organiser Kenfair International
Holdings Ltd (<b>Kenfair</b>, 0223) which is enough to put the corporate
governance of this company in our black books.</p>
<h3>The IPO: cashing out</h3>
<p>Kenfair was listed on 10-Apr-02 in an IPO sponsored by Baron Capital Ltd. The
controlling shareholder is Capital Concord Profits Ltd (<b>CCP</b>), owned as to 50% by Mr Ip Ki Cheung, the Chairman, 30% by
Mr Cheung Shui Kwai, the Managing Director, and 20% by Mr Chan Siu Chung, the
only other executive director of Kenfair.</p>

<p>The <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020325/LTN20020325011.htm" target="_blank">prospectus</a>
 shows that of the 72m shares (40% of the enlarged capital)
offered at HK$1 each, half were &quot;old&quot; shares sold by CCP, raising <b>$31m</b> net of expenses, which were evenly split with the
company. The offer was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020403/LTN20020403088.doc" target="_blank">oversubscribed</a>
and the over-allotment option for 10.8m new shares was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020411/LTN20020411112.doc" target="_blank">exercised</a>
on 11-Apr-02, increasing the net proceeds to the company from $31m to $42m and
leaving CCP with 58.6% of Kenfair.&nbsp;</p>

<p>The stated reason for the IPO was <i>&quot;to enhance the capital base&quot;</i>
and <i>&quot;provide funding for future plans&quot;</i>. However, this business
is a cash cow with no need for funding. Kenfair's management had withdrawn a
total of <b>$119.1m</b> in dividends in the 3 years and 7 months to 31-Oct-01,
including $34.5m in the final 7-month period, which is more than the initial
intended proceeds of the IPO. So if they had just left that last dividend in the
company,
the IPO would have been unnecessary as far as the stated reasons go.</p>

<p>Also, in the year to 31-Mar-01,&nbsp; the Managing Director sold his Bowen
Road apartment to Kenfair, raising a further <b>$15.2m</b>. This apartment is
still provided for free as his director's quarters with a deemed rental value of $720k
p.a., which is not expensed through the profit and loss account.</p>

<p>Altogether then, with the IPO sales shares, the dividends, and the apartment
sale, the management has extracted <b>$165.3m</b> of cash since the start of
the IPO track record.</p>

<h3>Upgrading the website</h3>

<p>On 29-May-02, seven weeks after listing, Kenfair's first deal was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020531/LTN20020531014.pdf" target="_blank">announced</a>
- it was investing HK$23m on a <i>&quot;zero-interest non-recourse exchangeable
note&quot;</i>.&nbsp; If that sounds odd to you, it should. The <i>
&quot;non-recourse"</i> does not have the normal meaning that the parent
of the borrower doesn't guarantee the loan. What it means in this case is that the
loan note is
not repayable!</p>

<p>The note is exchangeable within 1 year into either 100% of Asian Online Ltd (<b>AOL</b>),
a BVI company with no initial assets, or 18% of&nbsp; International Information
Ltd (IIL), which owns AOL. IIL was wholly owned by Mr Ben Yu Ansheng (<b>Mr Yu</b>).
Our database shows a person of that name is an <a href="http://www.alt862.com/aboutalt/ebenyu.htm" target="_blank">Executive
Director</a> of <a href="http://www.alt862.com/" target="_blank">Asia Logistics
Technologies Ltd</a>  (<b>ALT</b>, 0862) and prior to that was VP of Corporate Development
for <a href="http://www.nwcyberbase.com" target="_blank">New World Cyberbase Ltd</a>
after being an investment banker.</p>

<p>IIL also owned ChinaEdeal Holdings Ltd (formerly China Global Capital Holding
Ltd), a Cayman company which operated <a href="http://www.chinaedeal.com" target="_blank">ChinaEdeal.com</a>
and its English counterpart <a href="http://www.globaledeal.com" target="_blank">GlobalEdeal.com</a>,
and had <i>&quot;strong partnerships&quot;</i> with China National Import &amp;
Export Corp (CEIEC) and China Electronic Chamber of Commerce.</p>

<p>
As a term of the deal, and here's the meat, AOL would upgrade Kenfair's website, <a href="http://www.kenfair.com/" target="_blank">Kenfair.com</a>, and all
the rights to the upgrade would belong to Kenfair, regardless of which
acquisition option they chose when the note is converted. The upgraded site was
formally launched on 18-Oct-02.</p>

<p>In effect, Kenfair agreed to pay $23m to upgrade its website (we'll leave you
to judge whether it was worth it) and get a
possible stake in IIL. However, if it had paid for the upgrade directly, then it
would either have capitalised it as an enhancement to intangible assets be amortised (charged to
the income statement) over its useful life (say, 3 years at $7.7m per year) or
it would have taken the entire $23m as an immediate expense. Instead, the $23m
was recorded in the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030107/LTN20030107037.HTM" target="_blank"> interim
balance sheet</a> at 30-Sep-02 as an &quot;Exchangeable
Note&quot; investment. So they get an upgrade to the website with no immediate
charge to the income statement.</p>

<p>The <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020624/LTN20020624050.pdf" target="_blank">shareholder
circular</a> contains a valuation report on IIL by &quot;independent&quot; valuer
<a href="http://www.bmi-appraisals.com/" target="_blank">BMI
Appraisals Ltd</a> (<b>BMIA</b>) at <b>$130m</b>, which of course means that 18%
of IIL was worth $23.4m. This was a discounted cashflow valuation based on
projections made by ChinaEdeal and a business plan <i>&quot;given...orally&quot;</i>.
You might think that for $23m they would bother to put the business plan in
writing, but hey, this is the internet. The discount rate used was 28% and the
projections were not disclosed. At the time, the net asset value of ChinaEdeal
was only <b>$0.21m</b> and it lost $1.95m in the 16 months to 30-Apr-02.</p>

<p>Since then, BMIA has also done similar work as an &quot;independent business
valuer&quot; for ALT (of which Mr Yu is a director), including a valuation of a
BVI company called Fusion Tech Holding Ltd at $100m when it had net assets of
just $0.11m, referred to in this <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021003/LTN20021003047.pdf" target="_blank">circular</a>
dated 27-Sep-02.</p>

<h3>Astonishing deal</h3>
<p>The latest deal was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20021219/LTN20021219025.PDF" target="_blank">announced</a>
on 18-Dec-02, in which Kenfair would buy a BVI company aptly named
Astonishing Profits Ltd (<b>Astonishing</b>) from Baron International Investment
Holdings Ltd (<b>Baron</b>). As part of the same deal, Baron would procure
another BVI company called Baron International Consultants Ltd to provide services involving the production of a
<i> &quot;strategic
business plan in the PRC&quot;,</i> finding, negotiating and dealing with a <i>&quot;strategic
business partner&quot;</i>  in the PRC and identifying <i>&quot;potential strategic business
opportunities&quot;</i>. Baron and the consultant are wholly owned by Joseph Wan Chuen-chung (<b>Joseph
Wan</b>).</p>
<p>The price on this deal is <b>$28.75m</b>, of which $5m is in cash and
$23.75m by the allotment of 19m new shares at $1.25 each, equivalent to <b>9.06%</b> of the
enlarged issued share capital. Of the total, $19m is apportioned to the
acquisition of Astonishing, and $9.75m for the services. $19m is the same figure that
&quot;independent valuer&quot; BMIA (yes, them again) came up with, based on
unpublished projections produced by Astonishing, using a discounted cash flow
model with an unspecified discount rate.</p>
<p>What the announcement did not mention is that&nbsp;vendor Joseph Wan is a
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Indi_Details.jsp?charset=ISO8859_1&ceref=ABF607&applNo=0002">director</a>
of Baron Capital Ltd, the Sponsor of Kenfair's listing. Now he is about to
receive $5m and become a 9% shareholder, at least temporarily. The deal contains no restrictions
on his ability to sell the shares and no statement on what he intends to do
with them. The holding is below the
current 10% disclosure threshold.</p>
<p>Astonishingly, Astonishing has no assets other than, the &quot;<b>Right</b>&quot;
which is:</p>
<blockquote>
  <p>&quot;a non-exclusive right to use the data including but not limited to
  telephone numbers and information on business enterprises contained in the
  annual editions of the Imperial Guide...&quot; .&nbsp;</p>
</blockquote>
<p>and the Imperial Guide is:</p>
<blockquote>
  <p>&quot;a business directory which contains the data of contact details of
  the enterprises in Beijing, the PRC&quot;.</p>
</blockquote>
<p>On 2-Aug-00, <i>&quot;Beijing Shang Wen Guang Gao Advertising Ltd and the
Editorial Committee of the Imperial Guide&quot;</i> assigned all the data
contained in the Imperial Guide to Xiong Zi Wen and Chen Jia Ju (<b>Licensors</b>)
in return for a
token fee of RMB1.00. The Licensors in turn licensed the Right to Astonishing for 10
years for an annual fee of RMB1.00.</p>
<p>Did you spot the words &quot;non-exclusive&quot;? This means the Licensors
could grant an identical right to anyone they choose. The announcement, under
&quot;reasons&quot; for the deal, states that <i>&quot;Copies of the Imperial
Guide are mainly distributed in Beijing and no copies of the Imperial Guide are
distributed in Hong Kong&quot;. </i>Which makes it sound somewhat exclusive,
except that anyone could stick one in their luggage and bring it back to HK.</p>
<h3>Yellow pages for all</h3>
<p>Note the choice of the word &quot;distributed&quot; rather than
&quot;sold&quot;. Yes, this is in fact a Beijing yellow pages, and is available
for free, which according to our detailed calculations, is a lot less than
$19m. Presumably collection of a copy gives you the non-exclusive right (along
with anyone else who has one) to &quot;use the data&quot; inside it - by reading
it, for example, or calling up the advertisers.</p>
<p>We sent an intrepid agent along to the publisher in Beijing, who came away
with a copy of the 2002-3 edition, which has 777 pages, including 114 pages of
colour adverts, city information and index, and 663 yellow pages, with about 70
entries per page, or around 46,000 in total. In fact, you don't need to go the
trouble of picking one up in Beijing, because the content appears to be online
at the publisher's website <a href="http://www.bjall.com" target="_blank">www.bjall.com</a>.</p>
<h3>The brief INED</h3>
<p>The Astonishing announcement stated that Joseph Wan is the brother of Thomas
Wan Chuen-fai (<b>Thomas Wan</b>), who was <a href="http://www.strategic.com.hk/media_release/media_clientid.asp?media_id=1108" target="_blank">appointed</a>
as an &quot;independent&quot; non-executive director of Kenfair on 18-Jul-02 and
<a href="http://www.strategic.com.hk/media_release/media_clientid.asp?media_id=1338" target="_blank">resigned</a>
on 10-Dec-02, as announced on 13-Dec-02, just five days before the Astonishing
deal.</p>
<p>As Thomas Wan was a director in the last year, the Astonishing deal with his
brother is a connected transaction requiring independent shareholders' approval
at a meeting on 30-Jan-03.
But don't get all excited now, because Kenfair management (through CCP) own 58.6% and
are allowed to vote, so it is a done deal.</p>
<h3>The circular</h3>
<p>After we pointed out the facts to the Stock Exchange, the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20030115/LTN20030115033.PDF" target="_blank">shareholders
circular</a> came out on 14-Jan-03 and did contain acknowledgement of Joseph
Wan's role in the IPO sponsor. We suggested to the Exchange that it might be
somewhat cheaper for Kenfair to call the publishers and ask them to send a copy
of the Imperial Guide by DHL rather than pay $19m to Joseph Wan.</p>
<p>The circular now claimed that Astonishing also has the</p>
<blockquote>
  <p>&quot;use of the information which is not contained in the annual edition
  of the Imperial Guide (such as who's who in the business enterprises, contact
  numbers and the nature of businesses of those enterprises)&quot;</p>
</blockquote>
<p>We would have thought that the <i> &quot;nature of businesses&quot;</i> would be fairly
obvious from the categories in the yellow pages (sorry, Imperial Guide) which in
English starts with &quot;Acupuncture/massage, moves through &quot;adult
shops&quot; and ends with &quot;Weights and measures&quot; and
&quot;Zhongguancun&quot; and also includes larger box advertisements. For
whatever reason, Kenfair says this information will <i>&quot;greatly facilitate
the development&quot;</i> of its PRC exhibition business.</p>
<p>Elsewhere in the circular, Hantec Capital Ltd, the Independent Financial
Adviser, spoke of the &quot;Rights&quot; obtained by Astonishing on 2-Aug-00 as being the: <i>&quot;non-exclusive
right to use the Private Version of the Imperial Guide&quot;&nbsp;</i> which <i>&quot;further
specifies the business scope, legal representative, person in charge, fax number
and website (if any) of each of the enterprises.&quot;</i></p>
<p>The circular also stated that Astonishing was <i>&quot;founded&quot;</i> by
the Licensors, the chief editors of the Imperial Guide, and reveals that they
sold it to Joseph Wan on 31-Aug-00 for <b>HK$1.9m</b>. So astonishingly, the value of Astonishing has increased
10-fold to $19m in a little over 2 years, without the company doing any business
activity whatsoever apart from preparing its 3-year business plan and financial
projections which are relied on by the valuer.</p>
<p>The directors of Kenfair ascribe this increase to the change in <i> &quot;market
circumstances in the PRC&quot;</i> sine Aug-00 due to the entry of the PRC into the
WTO and <i>&quot;that the whole PRC import and export is under a different
market&quot;</i>.</p>
<p>Firstly, China's final entry into WTO was hardly a surprise - China and the
US reached bilateral agreement on the subject on 15-Nov-99 (nine months before
Astonishing was sold to Joseph Wan) and paving the way for WTO entry . Secondly, the PRC economy has been growing
at about 7% per annum, and the export sector at maybe 20% per annum, but not by 1000% every 2 years! Indeed, if anything, the export sector will consolidate
into fewer, larger and more efficient companies as a result of WTO, which
reduces the difficulty in contacting them. There are also numerous other sources
of business information on China, such as the famous Kompass books for <a href="http://www.kompass.com.cn/" target="_blank">China</a>
and <a href="http://www.kompass.com/" target="_blank">globally</a> and the <a href="http://www.globalsources.com/" target="_blank">Global
Sources</a> directory.</p>
<p>The obvious question is this: why does Kenfair need to buy Astonishing for
$19m when it could obtain the same non-exclusive rights by dealing directly with
the Licensors. They only got $1.9m the last time round, and should be happy to
get some more money for another non-exclusive license to their Private Version
of Imperial Guide. It seems unlikely that they would charge more than the $19m
Mr Wan is charging.</p>
<h3>What a shame</h3>
<p>Underneath all this, Kenfair has a lucrative business with its trade shows,
particularly the annual October Hong Kong International Toys and Gifts Show
which until now has accounted for about 90% of the firm's annual revenues. It's
just a shame that they've indulged in such dubious transactions. Put the two
deals together and they have cost $28m in cash and 9% in dilution of existing
shareholders - if this is the shape of things to come, then the stock deserves
its lowly rating.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=16315">BMI APPRAISALS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15471">Elife Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9845">Joy Silver Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=15885">Wan, Joseph Chuen Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16582">Wan, Thomas Chuen Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13336">Yu, Ben Ansheng (1964)</a></li>
				
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