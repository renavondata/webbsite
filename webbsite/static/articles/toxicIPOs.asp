
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

<script type="text/javascript">document.title="Toxic IPOs in HK";</script>

	<div class="summary">In this epic article, we take you through the IPOs of at least 14 listed companies, 3 of which have already led to criminal charges. We explain the inter-relationships between the companies, sponsors, lead managers, auditors and the INEDs. Before you buy another IPO, stop and read this article.</div>

<h2 class="center">Toxic IPOs in HK<br>
<span class="headlinedate">21 March 2005</span></h2>
<p class="revisedate"><a href="#update1">Update</a> 26th March 2005</p>
<p>This is a complicated story, and we thought about writing it in 
several parts, but then you might miss the big picture, so here it is in one 
long epic tract. Read it slowly or you'll get a headache. If you want to take it 
a bit at a time, the links below, in alphabetic order, take you to the sections featuring the 
main listed companies in this story. These are the main 15, but you will discover 
others as we go along:</p>
<ul>
	<li><a href="#kimEng">B&amp;S Entertainment</a></li>
	<li><a href="#FAF">China Financial Industry Investment Fund</a></li>
	<li><a href="#datasys">Datasys</a></li>
	<li><a href="#FCGWYF">Fu Cheong</a></li>
	<li><a href="#globalLink">Global Link Communications</a></li>
	<li><a href="#kimEng">Global Trend Intelligent Technologies</a></li>
	<li><a href="#FCGWYF">Gold Wo</a></li>
	<li><a href="#grandtop">Grandtop</a></li>
	<li><a href="#infoComm">Info Comm</a></li>
	<li><a href="#WWrontex">Rontex</a></li>
	<li><a href="#stylandNetwork">Styland/Ever-Long</a></li>
	<li><a href="#FAF">Thiz Technology</a></li>
	<li><a href="#tigerTech">Tiger Tech</a></li>
	<li><a href="#WWrontex">Wonderful World</a></li>
	<li><a href="#FCGWYF">Yue Fung</a>&nbsp;</li>
</ul>
<h3 id="grandtop">Grandtop</h3>
<p>Our story begins, once upon a time, with
<a target="_blank" href="../dbpub/articles.asp?p=16609">Grandtop International 
Holdings Limited</a> (<b>Grandtop</b> 2309) which listed on the SEHK main board 
on 12-Nov-02 and is engaged in the provision of marketing and compliance monitoring 
services and sales support services, to garment manufacturers in HK with 
production facilities situated in HK and/or the PRC and with the US being their 
principal export market, so the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021030/LTN20021030059.htm">
prospectus</a> says.</p>
<p>The &quot;sales support services&quot; involved the use of permanent 
textile quota for exports to the US, allocated to the group by the Trade and 
Industry Department of HK, but of course, the quota expired at the end of 2004 
when the WTO required quota to be scrapped. Grandtop claimed this wouldn't 
matter much because its customers would still want its services for marketing and compliance monitoring of factories.</p>
<p>The group's permanent quota was held by Sun Tai Hing Garment Making Co Ltd, 
founded in HK on 10-Mar-1966 by Mr Siu Ban and his son, Mr Siu Kwok Yin. Manufacturing 
ceased in the 1980s and the company <i>&quot;concentrated its principal activity on 
the provision of sales support services to Hong Kong garment and fashion 
manufacturers who are required to export &quot;Hong Kong Origin&quot; garment products to 
the US.&quot;</i></p>
<p>This is a common feature of many old HK textile firms. HK's textile industry 
boomed when families fled Shanghai in the 1949 communist takeover and set up 
factories in HK, but in the 1980s they got priced out of the market by 
rising labour costs in HK and the development of Southern China's industrial 
base. So many of these firms spent the last 15 years or so just renting 
out their export quota so that products largely made in mainland China could use 
spare HK 
quota. In this way, HK switched from low-end production to attaching labels. 
Some of Hong Kong's wealthiest tycoons benefited hugely from this wheeze, which 
was perfectly legal.</p>
<p>Some years prior to Grandtop's IPO, Siu Ban and son left the business. Grandtop was 
chaired by Garry Siu Kwok Kin (<b>Mr Siu</b>), another son. It's not what you would call a 
labour intensive business - Grandtop had just 10 employees, including its two 
senior managers who are the Chairman's elder brother and sister. There were 3 
executive directors, including the Chairman and his nephew. The third director, 
accountant Edvon Sze Yeung Lung (<b>Mr Sze</b>) was recruited in May-02, just 6 
months before the IPO.</p>
<p>The IPO reporting accountant, which remains the auditor, was
<a target="_blank" href="http://www.hic.com.hk/">HLB Hodgson 
Impey Cheng</a> (<b>HLB</b>). The Sponsor was 
<a href="../dbpub/articles.asp?p7352">CSC Asia Ltd</a> (<b>CSCA</b>), the 
Co-sponsor was <a target="_blank" href="http://www.firstasia.com.hk">First Asia 
Finance Group Ltd</a> (<b>FAF</b>), and the Lead Managers and Book-runners 
included <a target="_blank" href="../dbpub/articles.asp?p=11190">Ever-Long Securities 
Co Ltd</a> (<b>Ever-Long</b>). Bear those names in mind, because they come up 
often in this story.</p>
<p>The IPO was of 60m shares at HK$1, of which 40% were old shares and 60% 
new. This netted the founders about HK$18.8m, plus $6m special dividend 
before the IPO for a total of $24.4m, while the company received 
<b>$28.2m</b>. At the time, the listing rules required a newly listed company to have 
at least 3 shareholders for every $1m of issue, with a minimum of 100 
shareholders. In Grandtop's case, that meant a minimum of 180 holders. The 
public
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021106/LTN20021106080.pdf">
made</a> only 28 applications in the IPO, employees made 2 applications, while 
Ever-Long arranged for 149 placees. Throw in the controlling shareholder, who 
retained 75%, and you have exactly 180 holders.</p>
<h4 id="infoComm">Investment in Info Comm</h4>
<p>In its prospectus, Grandtop disclosed 
that in the year to 31-Mar-02, <i>&quot;as advised by certain 
securities brokers and bankers&quot;</i> it bought 15,900,000 shares of GEM-listed exhibition 
organiser <a target="_blank" href="../dbpub/articles.asp?p=14233">Info Communication Holdings Ltd</a> 
(<b>Info Comm,</b> 8082) at $0.345 per share. Info Comm was listed on 2-Nov-01. 
The Grandtop prospectus does not disclose that the listing Sponsor of Info Comm 
was CSCA, the same sponsor as for Grandtop. Furthermore, the auditor of 
Info Comm was HLB, the same auditor as for Grandtop. There was no word on 
whether any of the <i>&quot;certain securities brokers&quot;</i> were involved in either 
the Grandtop or Info Comm IPO.</p>
<p>Info Comm's IPO at $0.25, a historic P/E of 25, was massively over-priced 
relative to pre-IPO placings done a few days earlier at 80-95% discount, all
<a target="_blank" href="http://www.hkgem.com/newlistings/prospectuses/e_8082pro-20011029chap05.pdf">
disclosed</a> in the prospectus. The allotment
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20011031/00000MC20011031201515Y.pdf">
announcement</a> shows that 98.04% of the IPO went to just 5 placees. As if by 
magic, the stock ascended to a high of $0.72 in Jan-02, or a P/E of 72, before 
beginning a long slide down.</p>
<p>On 31-Mar-02, the year-end of Grandtop, Info Comm closed at $0.345 per share, 
the same price that Grandtop had paid. However, by the time of the prospectus 
finalisation, on 22-Oct-02, Info Comm had collapsed to $0.035, which in our view 
was much closer to its then fair value. It recorded EPS of $0.0054 in the year to 
Mar-02, so it was then on a P/E of 6.5x. Despite this 90% collapse in market 
price versus cost, the directors and the reporting accountants of Grandtop, HLB, 
agreed that there had been no permanent diminution in value and so it was 
recorded in the prospectus at the cost of $5.52m. The moon really is made of 
cheese, you know.</p>
<h4>Other listed investments</h4>
<p>According to the Grandtop
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030731/LTN20030731131.htm">
annual report</a> for the year to 31-Mar-03, 
the company purchased $1m of unidentified HK-listed securities. The market value 
of its investments at the year end was $1.292m. We know that Info Comm was 
quoted at $0.036, so that holding had a market value of $0.572m. By deduction, 
the value of the other shares purchased was $0.720m, down 28% on their purchase 
price. However, they were sold in the following year for $1m. No provision was 
made on the Info Comm investment, and HLB gave a clean audit 
report.</p>
<p>On 19-Nov-03, Grandtop
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031119/LTN20031119062.pdf">
announced</a> that Mr Siu had died on an unspecified 
date. He was only about 42 years old. He was replaced as Chairperson by his wife, Jenny Tsai Lai Wa.</p>
<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040802/LTN20040802172.htm">
annual report</a> for the year to 31-Mar-04 shows that Grandtop spent <b>$25.74m</b> (almost as much as the IPO proceeds) on unidentified HK-listed 
securities classified as non-current assets at cost. This together with the Info Comm 
shares took its total investment to $31.26m, but the market value at year-end 
was only $8.926m. We know that Info Comm closed at $0.079 on 31-Mar-04, valuing 
the stake at $1.256m, so this means that the other shares Grandtop bought were 
worth only $7.67m, and had lost <b>70%</b> in value since they were purchased. 
No provision was made, and HLB gave a clean audit report.</p>
<p>The
annual report describes the securities as <i>&quot;various shares which are 
listed on both main board and GEM&quot;</i> and claims that <i>&quot;The Board has taken 
detailed research on the investee companies and made any investments before 
obtaining the Board approval&quot;</i> (there may be a &quot;not&quot; missing there).<br>
<br>
The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050103/02309/EWF101.pdf">
interim report</a> for the 6 months to 30-Sep-04 shows that Grandtop acquired 
further unidentified &quot;trading securities&quot; with a fair value at 30-Sep-04 of 
$5.36m. As interim reports are only required to contain condensed cash flow statements, we cannot tell what they paid for the securities. By 30-Sep-04, the book 
value of the securities held by Grandtop was 39% of shareholders' funds, and 
still investors have no idea what the stocks are.</p>
<h4>Advances to agents</h4>
<p>Another chunk of cash left Grandtop's control soon after listing, when it 
made <i>&quot;advances to certain independent agents&quot;</i> of $18.87m purportedly for 
setting up various overseas representative offices including Beijing, Harbin and 
Shenyang in the PRC and New York and Los Angeles in the US, under a 4-year 
non-cancellable agency agreements. This outlay is being amortised on a 
straight-line basis for 4 years starting on 1-Dec-02, 18 days after the 
IPO, since 4 months' worth of amortisation occurred in the year to 31-Mar-03. 
The agents have not been identified.</p>
<h4>Grandtop's board</h4>
<p>On 28-Sep-04, to satisfy the amended listing rules, Grandtop appointed a third INED, Ewing Fu Wing Kwok (<b>Mr Fu</b>), 
the financial controller of <a target="_blank" href="../dbpub/articles.asp?p=13664">Sino Union 
Petroleum &amp; Chemical International Ltd</a> (0346), the auditor of which also 
happens to be HLB, having
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030626/LTN20030626111.pdf">
taken over</a> from Ernst &amp; Young on 24-Jul-03, almost 4 months after the year end they 
were to audit.</p>
<p>On 8-Oct-04, Mr Sze, the only 
non-family executive director of Grandtop,
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20041008/LTN20041008066.pdf">
resigned</a>, and on 14-Oct-04 he and Mr Fu were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20041018/GLN20041018024.pdf">
appointed</a> as Chairman and INED respectively of
<a target="_blank" href="../dbpub/articles.asp?p=13482">Riverhill Holdings Ltd</a> (<b>Riverhill,</b> 
8127), another company in the Styland network which featured in our
<a target="_blank" href="riverhill.asp">story</a> on 8-Aug-02 and is now under investigation by 
the SFC. The stock has been suspended since 24-Jul-03. On 29-Nov-04, Riverhill
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20041208/GLN20041208007.pdf">
appointed</a> HLB as its auditor.</p>
<p>We leave Grandtop for a moment, but shall return to it <a href="#grandtop2">
later</a> in this story.</p>
<h3 id="stylandNetwork">The Styland network</h3>
<p>Loyal readers may recall that Ever-Long is owned by <a target="_blank" href="../dbpub/articles.asp?p=4978">
Styland Holdings Ltd</a> (<b>Styland</b>, 0211). In July and August 2002, we 
published a series of articles revealing how Styland and a network of other listed 
companies had engaged in a series of highly questionable transactions. 
Eventually the regulators caught up with the firm, and on 20-Dec-02 the Stock 
Exchange sent a letter to Styland <i>
&quot;requesting the Company to provide information on certain matters.&quot;</i></p>
<p>In a mammoth 46-page
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030605/LTN20030605012.pdf">
announcement</a> on 3-Jun-03, Styland said it had, due to <i>&quot;inadvertent 
omission&quot;</i> 
overlooked the Listing Rule requirements for disclosure of 8 connected 
transactions and one discloseable transaction, 6 of which should have been 
subject to independent shareholders' approval. Several of these deals had been 
covered in our earlier articles. In addition, Styland said that pursuant to a 
notice dated 20-Mar-03, the SFC was conducting an inquiry into <i>&quot;certain 
matters&quot; </i>under Section 29A of the old Securities and Futures Commission 
Ordinance (for a list of companies known to be under investigation by the SFC, 
see our <a target="_blank" href="../pages/SFCwatch.asp">SFC Watch</a> page). The stock 
has been
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040421/LTN20040421062.HTM">
suspended</a> since 21-Apr-04, <i>&quot;pending announcement of a possible rights 
issue&quot; </i>which never came. The annual report dated 21-Jul-04 said the SFC 
inquiry was <i>&quot;not yet concluded&quot;</i>, and that is the last we heard about the 
investigation.</p>
<p>Despite all this, Styland, through its subsidiary Ever-Long, remain very much 
in business.</p>
<h3 id="WWrontex">Wonderful World, Grandtop and Rontex</h3>
<p>Now we turn to <a target="_blank" href="../dbpub/articles.asp?p=5142">Wonderful World Holdings 
Ltd</a> (<b>WW</b>, 0109), formerly known as Digital World Holdings Ltd, which 
featured as part of the Styland network in our story
<a target="_blank" href="digitalmess.asp">Digital Mess</a> on 21-Jul-02.<br>
<br>
Fast-forward the story to 2004. WW
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=12518&amp;lang=EN&amp;dia=Y">
disclosed</a> a holding of 5.12% in Grandtop effective 27-Jan-04. WW's 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041028/LTN20041028074.htm">annual 
report</a> for the year ended 30-Jun-04 shows that it held 5.43% of Grandtop and 
also 4.98% of Rontex International Holdings Ltd (<b>Rontex</b>, 1142). That 
stake
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=25129&amp;lang=EN&amp;dia=Y">
increased</a> to 5.23% on 21-Dec-04. According to the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021028/LTN20021028057.htm">
prospectus</a>, Rontex is <i>&quot;engaged in the sourcing, manufacture and sale of 
garments, principally woven wear, knitwear and sweaters for men, to countries in 
South America, which include mainly Chile and Peru.&quot;</i></p>
<p>Rontex was listed on 8-Nov-02, just 4 days before Grandtop. And guess what - the 
Sponsor was CSCA, the co-sponsor was FAF, the reporting accountant was HLB, and 
the Lead Manager and Book Runner was Styland's Ever-Long - the same 4 firms which worked 
on the Grandtop IPO. Isn't it amazing that of all the stocks it could have 
bought, WW would choose to invest in two firms listed 4 days apart by the same 
team?</p>
<p>Before we continue, let's just note that CSCA
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040202/LTN20040202060.pdf">
acted</a> as &quot;independent financial adviser&quot; to WW's independent board committee 
in a recent open offer.</p>
<p>Like Grandtop, the Rontex IPO was of 60m shares at $1, of which 40% were old 
shares and 60% new. This netted the founders about $18.6m, plus $10m special 
dividend before the IPO for a total of $28.6m, while raising <b>$27.9m</b> for 
Rontex. Since then, it has done two bonus share 
issues, effectively an 8:1 stock split, so the split-adjusted IPO price was 
$0.125. In our view, the stock was ramped by persons unknown, reaching a daily 
high of $0.99 on 21-Jan-04, up 692% and representing a Mar-03 P/E of 49. It is now quoted at $0.135, down 86.4% 
since then.</p>
<h4>Advance to agent</h4>
<p>According to the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030731/LTN20030731130.htm">
annual report</a>, some time between the IPO and 
31-Mar-03, Rontex appointed an <i>&quot;independent third party&quot;</i> in the PRC <i>
&quot;to pursue and arrange for the establishment of a new subsidiary to engage in 
the manufacture and sale of garment products in the PRC&quot;</i>. Rontex advanced 
this unnamed man <b>$18.2m</b> which was still recorded under &quot;prepayments and 
deposits&quot; in the latest 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041231/01142/EWF101.pdf">interim report</a> to 30-Sep-04. He's taking his time, and 
we wonder why it was necessary to pay him all this money up front for land, 
buildings and machinery which had not then been identified.</p>
<h4>Listed investments</h4>
<p>Rontex has also been investing in the stock market. In the two years to 31-Mar-01, 
before the IPO, 
it invested a total of $38.1m in listed shares <i>&quot;as advised by certain 
securities brokers and bankers&quot;</i> - now pay attention, where have you heard 
that phrase before? In the Grandtop prospectus. Rontex incurred losses of about 
$9.4m on these investments. The whole portfolio was disposed of at carrying 
value in Apr-01, so the prospectus says. Despite the size of these investments, 
the prospectus says that <i>&quot;the Directors had relied heavily on the advice of 
those securities brokers and did not actively participate in the investment 
decisions&quot;</i>. The prospectus did not state whether any of those brokers were involved in the Rontex IPO.</p>
<p>In the 6 months to 30-Sep-03, 
Rontex acquired $6.6m of HK-listed shares, and in the following 6 months another 
$3.346m, for a total cost of $9.946m, with a market value of $8.966m at 
31-Mar-04. These are held as non-current assets so no loss was recognised. By 
30-Sep-04, it held <b>$17.846m</b> of non-current investment securities at cost 
(15.6% of shareholders' funds), with no details provided on what they are or 
what the market value was, because interim reports under the Listing Rules don't 
require that.</p>
<h4>Unlisted investments</h4>
<p>In another curious development, in the 6 months to 31-Mar-04, Rontex paid <b>
$15m</b> cash to an &quot;independent third party&quot; in return for an option for an 
unspecified period to acquire an unspecified stake at an unspecified price in an 
unspecified company which has an unspecified business but is <i>&quot;pursuing to be 
listed in the American Stock Exchange&quot;</i>. Strangely, it says that if the 
listing takes place, then the option will be revoked and the $15m will be 
refunded, presumably removing the upside potential. Auditors HLB signed off on 
the Mar-04 annual report without qualification.</p>
<p>All told, the 3 items we have mentioned add up to $51.05m, or 44.6% of 
shareholders' funds at 30-Sep-04. We shall come back to Rontex
<a href="#rontexINEDs">later</a> in this story.</p>
<h3 id="stylandLoans">Styland's loans</h3>
<p>Now we return to Styland, and an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041011/LTN20041011120.pdf">
announcement</a> on 11-Oct-04 regarding the margin finance loans by Ever-Long, 
each exceeding 5% of the market capitalisation of Styland. The client names in 
the announcement are mostly BVI companies, so they won't mean much to you, but with a bit of research we can 
reveal information on the beneficial owners of some of them.</p>
<p>Victorious Ltd is a wholly-owned subsidiary of
<a target="_blank" href="../dbpub/articles.asp?p=2133">Sino-i Technology Ltd</a> (0250), which is 
controlled by Mr Yu Pun Hoi (<b>Mr Yu</b>). Victorious Ltd hold shares in
<a target="_blank" href="../dbpub/articles.asp?p=941">South Sea Holding Co Ltd</a> (0680). Another 
client, Rosewood Assets Limited, was wholly-owned by Mr Yu at 30-Jun-04. On 
27-Oct-04 Styland made a further
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041027/LTN20041027107.pdf">
announcement</a> of a larger exposure to Victorious Ltd.</p>
<p>Styland group had lent $38.64m to Rich Delta Development Ltd (<b>RDD</b>) and 
$1.01m to its beneficial owner. We can tell you that this is Mr Sunny Mak Chi 
Yeung (<b>Mr Mak</b>), the former Chairman of <a target="_blank" href="../dbpub/articles.asp?p=1670">
Renren Holdings Ltd</a> (<b>Renren</b>, 0059), another company in the Styland 
network. He resigned on 29-Dec-04, after he had
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041103/LTN20041103044.pdf">
sold</a> through RDD his 46.16% stake in Renren to Mr Yu Pan, a mainland 
property developer, for $34.77m - so maybe Styland got some of its loan back. We 
don't know of any relationship between Yu Pan and Yu Pun Hoi.</p>
<p>Another client, Dynamic Rich Ltd, is a wholly-owned subsidiary of WW, and 
probably held the shares in Grandtop and/or Rontex mentioned above. It had a 
margin loan of $7.286m against a portfolio of listed shares worth $57.02m as of 
31-Mar-04.</p>
<p>You won't find any of these beneficial owners' names in the Styland 
announcement, because the Listing Rules don't require such useful information to 
be disclosed. The disclosure of beneficial owners in such announcements should 
be required, because otherwise the use of shell companies makes the names 
meaningless and they might as well not be disclosed at all.</p>
<h3 id="grandtop2">Has Grandtop been sold?</h3>
<p>On 20-Dec-04, Styland
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041220/LTN20041220185.pdf">
announced</a> margin loans to Huge Gain Development Ltd (<b>Huge Gain</b>), a 
client. And guess what they didn't tell you? Huge Gain is the controlling shareholder of Grandtop. 
Styland group had made loans totalling $5.07m to Huge Gain, secured on shares 
worth $134.99m at 25-Nov-04. </p>
<p>This ties in with a
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=27089&amp;lang=EN&amp;dia=Y">
disclosure</a> by Ever-Long Capital Ltd that it had a security interest in 
50.21% of Grandtop as at 7-Feb-05. Effective the same day, Huge Gain
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=27139&amp;lang=EN&amp;dia=Y">
disclosed</a> a short position in 50.21% of Grandtop, which would indicate that 
it has entered into some kind of sale or granted some kind of option over its 
controlling shareholding, but strangely, there has been no announcement by 
Grandtop. Effective 5-Mar-05, Huge Gain's short position reduced by 9.38%, 
perhaps indicating that those shares had been disposed of. Some kind of 
announcement should be made.</p>
<p>On 7-Mar-05, Styland
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050307/LTN20050307091.pdf">
announced</a> that it had made a new term loan to Huge Gain of $9.6m, secured 
against listed shares worth $47.03m at 2-Mar-05, at an interest rate of 20% 
p.a..</p>
<h3 id="FCGWYF">Yue Fung, Gold Wo and Fu Cheong</h3>
<p>The independent non-executive directors of Grandtop at the time of IPO were Mr 
Poon Kuai Cheong (<b>Mr Poon</b>) and Miss Emmy Lo Wing Yan.</p>
<p>Our database reveals that Mr Poon was an INED of printed circuit board maker <a href="../dbpub/articles.asp?p=15412">Fu Cheong 
International Holdings Ltd</a> (<b>Fu Cheong</b>, 0916) which listed on 
27-Mar-02. Mr Poon resigned on 18-Dec-02, the day after the Independent 
Commission Against Corruption (<b>ICAC</b>)
<a target="_blank" href="../codocs/ICAC021217.pdf">announced</a> that it had 
raided the company. The ICAC raid of Dec-02 was part of an investigation of 
alleged fraudulent listings which also involved
raids on
<a target="_blank" href="../dbpub/articles.asp?p=13651">Gold Wo International Holdings Ltd</a> (<b>Gold 
Wo,</b> 0090, delisted), a maker of melamine tableware and silicon rubber keypads, and 
calculator maker <a target="_blank" href="../dbpub/articles.asp?p=2992">Yue Fung International 
Group Holdings Ltd</a> (<b>Yue Fung</b>, 0965, delisted).</p>
<h4>Yue Fung</h4>
<p>Yue Fung was listed on 8-Oct-97. The Sponsor was Pacific Challenge Capital 
Ltd and the reporting accountants were Ernst &amp; Young 
(<b>E&amp;Y</b>), but the auditors of the main subsidiaries for the first two years 
of its track record were Li Wing Kei &amp; Co., named after founder Ricky Li Wing 
Kei (<b>Mr Li</b>). He was associated with another company which collapsed 
spectacularly but no criminality was alleged in that case. He was the Deputy Chairman of <a target="_blank" href="../dbpub/articles.asp?p=5007">Guo Xin 
Group Ltd</a> (1215, then Wah Lee Resources) from 1-Oct-96 to 11-Aug-99. That 
company, then an air conditioner distributor, listed on 17-Jan-97 and 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000502/LTN20000502038.doc">went bust</a> 
in 2000 before its current incarnation.</p>
<h4>Gold Wo</h4>
<p>Gold Wo listed on 12-Apr-01. Its IPO was sponsored by 
<a href="../dbpub/orgdata.asp?p=8529">Kim Eng Capital 
(Hong Kong) Ltd</a>, (<b>KECHK, </b>now known as KE Capital (Hong Kong) Ltd), and immediately after the IPO Gold 
Wo was 20.5% owned by Yue Fung. The reporting accountants were E&amp;Y, 
but the auditors of the subsidiaries for the years ended 31-Mar-98 and 31-Mar-99 
respectively were Clement C.W. Chan &amp; Co and Roger B.L. Wan &amp; Co, headed by 
Roger Wan Bing Leung (<b>Mr Wan</b>) . The stock was ramped, leading to a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010807/LTN20010807016.doc">
concentration warning</a> on 6-Aug-01. The price reached a new high that month, 
up 520% from its IPO.</p>
<p>On 7-Jan-02, Gold Wo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020108/LTN20020108042.doc">
proposed</a> a toxic convertible bond with a floating conversion price, and it's 
financial adviser on that deal was Ernst &amp; Young Corporate Finance Ltd, owned by 
Gold Wo's auditor. You might think that was a conflict of interest, but they 
obviously didn't. In the end, Gold Wo
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020206/LTN20020206073.doc">
adjourned</a> the 6-Feb-02 EGM needed to approve the deal (as well as a share 
split) claiming lack of a quorum, and when the meeting was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020218/LTN20020218013.doc">
reconvened</a> on 15-Feb-02, there was no mention of the proposal in the 
resulting announcement. On 5-Mar-02, one of the bond subscribers
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020305/LTN20020305066.doc">
tried</a> to terminate the subscription agreement,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020313/LTN20020313015.doc">
followed</a> on 12-Mar-02 by the other. The issue did not proceed, and that was 
the last we heard of it.</p>
<p>There's also a Styland connection here: Ever-Long acted as financial adviser 
to Gold Wo in a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020530/LTN20020530097.pdf">
rights issue</a> in May-02, and as arranger of a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020627/LTN20020627014.pdf">
placing</a> of new shares on 26-Jun-02. </p>
<p>The first and last
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020729/LTN20020729171.htm">
annual report</a> after Gold Wo's IPO, for the year ended 31-Mar-02, contained 2 
mysterious outlays of cash. $10m was paid as a deposit for acquisition of an 
unlisted equity investment and $14m paid for another unlisted equity investment 
which they than planned to sell at cost. No details were given of either 
investment. The total of $24m was just a bit less than the net IPO proceeds of 
$25.4m. E&amp;Y gave it a clean audit report.</p>
<p>The two INEDs of Gold Wo, who both
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021220/LTN20021220126.pdf">
resigned</a> on 19-Dec-04 after the ICAC raid, were Henry Wong Wing Hang (<b>Mr 
Henry Wong</b>) and Wong Kai Tat (<b>Mr K T Wong</b>).
<a target="_blank" href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/member.asp?id=555879">
Mr Henry Wong</a> was a partner in law firm
<a target="_blank" href="http://www.wktoco.com/">W.K. To &amp; Co</a>, and is now a 
partner of
<a target="_blank" href="http://www.hklawsoc.org.hk/pub_e/memberlawlist/member_firm.asp?id=63746&amp;ftype=L">
Michael Li &amp; Co.</a> He is also an INED of <a href="../dbpub/articles.asp?p=16414">LeRoi Holdings Ltd</a> 
(0221). By a very unlucky coincidence that stock has been suspended since 
27-Feb-04 pending an ICAC investigation. However, this fung shui did not deter 
Haywood Investments Ltd (0905) from appointing him as an INED on 25-Aug-04. We 
note that Michael Li &amp; Co, is
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040505/00905/F101.pdf">
listed</a> as legal adviser to Haywood, so we question his independence. As 
regards Mr K T Wong, he is an executive director of T S Telecom Technologies Ltd 
(8003), which by coincidence
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20041011/GLN20041011016.pdf">
appointed</a> HLB as auditors on 11-Oct-04. He also held INED positions at 
G-Prop (Holdings) Ltd (0286) from 3-Jan-01 to 4-Jun-02 and briefly at Daqing 
Petroleum and Chemical Group Ltd (0362) from 30-Sep-04 to 21-Dec-04.</p>
<p>Gold Wo was suspended on 16-Dec-02, ordered to be wound up on 14-Jun-04 and 
delisted on 30-Sep-04.</p>
<h4>Fu Cheong</h4>
<p>Fu Cheong listed on 27-Mar-02. Its IPO was also sponsored by KECHK, the same 
sponsor as Gold Wo, 
and the Lead Manager and Book-runner was CSC Securities (HK) Ltd, from the same 
group as CSCA, sponsor of Grandtop and Rontex.</p>
<p>Yue Fung owned 30% of I. World Ltd, a BVI company which owned 82% 
of
<a target="_blank" href="http://www.sec.gov/cgi-bin/browse-edgar?company=Score+One&amp;CIK=&amp;filenum=&amp;State=&amp;SIC=&amp;owner=include&amp;action=getcompany">
Score One, Inc.</a>, a Nevada company traded on the OTCBB in the US. This in 
turn owned 58% of Fu Cheong. The prospectus track record included 3 calendar 
years to 2000. The reporting accountants were E&amp;Y, but the auditors for all the subsidiaries (except one in the 
mainland) for the first two years of the track record were HLB. The stock has been suspended since 16-Dec-02.</p>
<h4>ICAC brings charges</h4>
<p>We first warned readers about Yue Fung's questionable dealings in a <i>
Webb-site.com</i> <a target="_blank" href="yuefung.asp">story</a> on 23-Nov-00. 
The rubber key maker and PCB maker we referred to in that article later became 
listed as Gold Wo and Fu Cheong respectively. Yue Fung was suspended on 
16-Dec-02, provisional liquidators were appointed on 25-Apr-03 and it was 
delisted on 20-Jan-05.</p>
<p>On 14-Jul-03, the ICAC
<a target="_blank" href="../codocs/ICAC030714.pdf">charged</a> 
the Chairman, Vice Chairman and another director of Gold Wo together with Mr Li 
and Ms. Kwok Shuk Wah (<b>Ms Kwok</b>), an executive director of Fu Cheong who also ran her own 
company, Win Dragon Consultants Ltd, with conspiracy to defraud in relation to 
the listing of Gold Wo and letters of credit totalling over $290m. 
An alleged co-conspirator, who was not charged, was Mr Michael Young Chi Shan (<b>Mr 
Young</b>), the 
financial controller of Gold Wo. An additional
<a target="_blank" href="../codocs/ICAC030819.pdf">charge</a> 
of theft was filed against the Chairman and Mr Li on 19-Aug-03. On 17-Dec-03, 
the ICAC <a target="_blank" href="../codocs/ICAC031217.pdf">arrested and charged</a> Mr Wan on one count of conspiracy to defraud.</p>
<p>On 8-Dec-04, the ICAC
<a target="_blank" href="../codocs/ICAC041208b.pdf">announced</a> 
that the Chairman of Fu Cheong, Mr Ho Wing Cheong (<b>Mr Ho</b>) and Mr Albert 
Chan Wing Kui (<b>Mr Chan</b>), the financial controller of Fu Cheong, had been charged together 
with Mr Li and Ms Kwok with conspiracy to defraud in relation to the listing of Fu Cheong 
and in the case of Mr Ho and Mr Chan alleged fraudulent applications for letters of credit facilities. 
In the same announcement, the ICAC said that the former Chairman, Vice Chairman 
and a clerk of Yue Fung had been charged for alleged with conspiracy in relation 
to alleged letter of credit fraud involving over $174m.</p>
<p>We'll return to KECHK, the listing sponsor of Gold Wo and Fu Cheong,
<a href="#kimEng">later</a> in this story.</p>
<h3 id="rontexINEDs">Rontex's INEDs</h3>
<p>Now guess what - the two INEDs of Rontex at the time of its IPO were Mr 
Chan, the financial controller of Fu Cheong, and Mr Young, the 
financial controller of Gold Wo. Both
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021223/LTN20021223091.PDF">
resigned</a> from Rontex on 18-Dec-02, in the wake of the ICAC raids. It was just 40 days after Rontex listed, 
which we believe (round of applause, please) is a Hong Kong record for the shortest time taken to lose both 
your INEDs after listing.</p>
<h3 id="FAF">First Asia Finance</h3>
<p>Earlier on in this story (if you are still with us), we mentioned that FAF 
was the co-sponsor of both the Grandtop and Rontex IPOs. What else have they 
been involved with? Let's take a look.</p>
<h4>CFIIF and Thiz</h4>
<p>On 27-Sep-02, a start-up investment company then called First Asia Capital 
Investment Ltd and now called <a target="_blank" href="../dbpub/articles.asp?p=17131">China Financial 
Industry Investment Fund Ltd</a> (<b>CFIIF</b>, 1227) was listed on the main 
board under Chapter 21 of the Listing Rules.</p>
<p>The Chairman of CFIIF was and is Albert Li Sze Tang (<b>Mr Albert Li</b>), who was also Chairman of Thiz Technology Group 
Ltd (<b>Thiz</b>, 8119), a Linux play that has somewhat thizzled out. Thiz was 
sponsored by CSCA and listed on GEM on 27-Jul-01 at $1.19 per share. At the 
time, Thiz shared an office with FAF. After a 10:1 stock split and 2 rights 
issues, the stock now trades at $0.015. One of the INEDs of Thiz, Mr Kwok Ming 
Wa, was also an INED of CFIIF at the time of both IPOs. Mr Albert Li, who
<a target="_blank" href="http://www.hkgem.com/prices/sdi/20020719a.html">sold</a> 
a few shares in Jul-02,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20021204/GLN20021204008.pdf">
resigned</a> from Thiz and
<a target="_blank" href="http://www.hkgem.com/prices/sdi/20021209a.html">sold</a> 
most of his remaining shares on 4-Dec-02.</p>
<p>Apparently at least one of the customers of Thiz takes literally the idea 
that Linux should be a free operating system, because in the 2 years to 
31-Mar-04, Thiz provided for a combined $24.2m in doubtful debts and still had 
$24.4m of receivables aged over 360 days at the end of it, and another $10.2m 
aged over 180 days. That's a total of $58.8m, compared with combined turnover of 
$101.6m for the two years. The largest customer in the 2 years, which is 
probably the same customer, accounted for 72.95% and 41.69% of the turnover, or 
a total of $62.4m. Despite
<a target="_blank" href="http://www.hkgem.com/rule/gemrule/GEM-Ch17(E).pdf">GEM 
Listing Rule 17.15</a> requiring disclosure of substantial advances, we can't 
find any record of one by Thiz disclosing who this customer is.</p>
<p>Virtually none of the old receivables had been collected by 30-Sep-04, when 
$34.7m (net of provisions) was aged over 360 days. This compares with 
shareholders' funds at that date of $20.9m. Uh-oh!</p>
<p>Following the IPO of CFIIF, it was 12% owned by 
First Asia Financial Holdings Ltd, which was 60% owned by Mr Albert Li and 40% 
by his wife. The IPO Sponsor was Kingsway Capital Ltd (<b>Kingsway</b>) and FAF was one of the underwriters. The investment manager was 
Hantec Asset Management Ltd, which featured in our story about the
<a target="_blank" href="kencocif.asp">Baron Network</a> on 14-Apr-04. One of 
the Joint Co-lead Managers of the IPO was Whole Win Securities Ltd (<b>Whole Win</b>). 
The significance of this will be seen shortly.</p>
<p>On 
25-Mar-03, HLB was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030326/LTN20030326101.pdf">
appointed</a> as auditor of CFIIF.</p>
<p>In our view, CFIIF was ramped, closing at $1.59 on 12-Mar-04 (8.4x net asset value) before 
being suspended pending a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040419/LTN20040419204.pdf">
concentration warning</a> on 19-Apr-04. Of course, when trading resumed, it 
crashed, as the substantial shareholders bailed out. Today it is quoted at $0.183, down 88.5% since then. 
The original IPO price was $0.50, and the net asset value at 28-Feb-05 was $0.10 
per share, down 80%. We'll come back to CFIIF in a moment, but first, let's look 
at some other deals involving FAF.</p>
<h4 id="globalLink">Global Link</h4>
<p>FAF was also the Financial Adviser and Joint Lead Manager in the IPO of 
telecommunications software provider
<a target="_blank" href="../dbpub/articles.asp?p=16925">Global Link Communications Holdings Ltd</a> (<b>Global 
Link</b>, 8060) which was listed on GEM on 13-Nov-02, the day after Grandtop 
and, like CFIIF, was sponsored by Kingsway. 52% of the placing was old shares, 
and 48% new shares. 97.54% of the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20021112/GLN20021112009.pdf">
placing</a> went to the top 10 placees including 33.59% to Mr Kenny Leung Kin 
Man (<b>Mr Leung</b>), then a director of Whole Win, which was one of the Joint 
Lead Managers, and 7.26% to his brother, Mr Leung Kin Fun.</p>
<p>As if by magic, the stock soared, 
leading to a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030904/GLN20030904014.pdf">
concentration warning</a> published on 4-Sep-03 and a crash. Peaking at $1.49 on 
27-Jun-03, it is now at $0.065, down 95.6% since then.</p>
<p>Related to this, it emerged that on 1-Apr-03, when the new 5% disclosure 
threshold kicked in, Mr Leung held 7.56% 
of CFIIF and 7.56% of Global Link (yes, identical percentages) and failed to disclose either 
of them on time, leading 
to a minor
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=04PR116">
fine</a> at Eastern Magistracy. Another shareholder, Siu Wai Keung, had acquired 
7.69% of Global Link and was
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=04PR208">
fined</a> for non-disclosure, as
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=04PR180">
was</a> Mr Caric Lee Shi Tat, who had acquired 5.79% of CFIIF.</p>
<h4 id="tigerTech">Tiger Tech</h4>
<p>Another stunning deal involving FAF was thin-client solution provider <a target="_blank" href="../dbpub/articles.asp?p=18154">
Tiger Tech Holdings Ltd</a> (8046), listed on GEM on 16-Apr-03. FAF acted as 
Financial Adviser and Lead Manager, while CSCA again acted as sponsor. 99% of 
the IPO was 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030414/GLN20030414002.pdf">placed</a> with 25 placees, and 90% went to the top 10, 
including 
15% to CFIIF. The placing 
price was $0.30 per share, but as if by magic, it quickly quadrupled and peaked out at $1.46 
on 24-Jul-03. It has been suspended since 10-Jun-04 due to an ownership dispute, 
and was last quoted at $0.071, down 95.1% from its high.</p>
<h4>The CFIIF portfolio</h4>
<p>When CFIIF published its first annual report for 31-Dec-02, it was revealed 
that the investment portfolio consisted of <a target="_blank" href="../dbpub/articles.asp?p=17034">Changchun Da Xing Pharmaceutical Co 
Ltd</a> (<b>CDXP</b>, 8067), Global Link, <a target="_blank" href="../dbpub/articles.asp?p=10491">Hua Lien International (Holding) Co Ltd</a> 
(0969), Thiz, <a target="_blank" href="../dbpub/articles.asp?p=14951">WLS Holdings Ltd</a> (<b>WLS</b>, 8021) and Warderly 
International Holdings Ltd (<b>Warderly</b>, 0607).</p>
<p>CDXP, Thiz, WLS and Warderly were 
all sponsored by CSCA. FAF was a co-lead 
manager in the CDXP deal and Financial Adviser on the IPOs of Global Link and 
Warderly. Is it pure coincidence that Hantec just happened to pick these stocks?</p>
<h4>Other work</h4>
<p>In Dec-02, FAF
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20021218/GLN20021218005.pdf">
acted</a> as &quot;independent financial adviser&quot; in a major transaction and rights 
issue by <a target="_blank" href="../dbpub/articles.asp?p=15098">B.A.L. Holdings Ltd</a> (8079, then 
Rainbow International Holdings Ltd), and in Aug-03, FAF also
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030805/GLN20030805009.pdf">
acted</a> as &quot;independent financial adviser&quot; in a major and connected 
transaction by <a target="_blank" href="../dbpub/articles.asp?p=14791">M Dream Inworld Ltd</a> (<b>Inworld</b>, 
8100). Both Rainbow and Inworld were members of the Styland network that 
featured in our stories of 2002. HLB was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030619/GLN20030619009.pdf">
appointed</a> as auditor of Inworld on 6-Jun-03.</p>
<p>After earning its wings as Co-sponsor on Grandtop and Rontex, the Stock 
Exchange allowed 
FAF to act as Sponsor on two Chapter 21 investment companies - China Northern Enterprises 
Investment Fund Ltd (2324), listed on 27-Oct-03, which actually looks like it 
might be a genuine fund, and Grand 
Investment International Ltd (<b>Grand Investment</b>, 1160), listed on 
2-Apr-04, where the jury is still out because we have yet to see an annual 
report which will reveal the portfolio.<br>
<br>
The investment manager of Grand Investment is Avanta Investment (International) 
Ltd (<b>Avanta</b>), which also took over the same role with CFIIF after 
it crashed and renamed, and <a target="_blank" href="../dbpub/articles.asp?p=16610">Garron International Ltd</a> (1226), which was also the subject of a stock 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021212/LTN20021212153.pdf">ramp</a> 
and crash before Avanta became the manager. </p>
<h3 id="kimEng">Kim Eng, Global Trend and B&amp;S</h3>
<p>
What about KECHK, the sponsor of Gold Wo and Fu Cheong? Perhaps it was just bad 
luck. After all, anyone can make a mistake. Or two in a row. What else did they 
do? Let's take a look.</p>
<h4>
Global Trend</h4>
<p>
Three months after Fu Cheong, KECHK sponsored the IPO of
<a target="_blank" href="../dbpub/articles.asp?p=17441">Global Trend Intelligent Technologies Ltd</a> 
(<b>Global Trend</b>, 0691), listed on 28-Jun-02. The IPO was also sponsored by 
CEF Capital Ltd. The reporting accountants were E&amp;Y.</p>
<p>
On 7-Jun-03, the ICAC
<a target="_blank" href="../codocs/ICAC030607.pdf">announced</a> 
that it had made arrests and commenced investigations. On 2-Sep-04, the Chairman 
of Global Trend, Mr Xu Peixin and an executive director Mr Cai Yaijuan were
<a target="_blank" href="../codocs/ICAC040902.pdf">jailed</a> 
for 4 years and 3.5 years respectively, after being found guilty of conspiracy 
to use false instruments. The court heard that the men had falsified accounting 
and business records and successfully duped their auditor, E&amp;Y, into signing off 
on their first and last post-IPO
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030507/LTN20030507081.htm">
accounts</a>, for the 2002 calendar year. The stock was suspended on 9-Jun-03, 
and it was delisted on 10-Mar-05. </p>
<h4>
B&amp;S</h4>
<p>
Six weeks after Global Trend's IPO, KECHK sponsored the IPO of movie-production 
and distribution firm <a target="_blank" href="../dbpub/articles.asp?p=18157">B&amp;S Entertainment 
Holdings Ltd</a> (<b>B&amp;S</b> 8167), which listed on GEM on 6-Aug-02. The 
reporting accountants were E&amp;Y, but the auditors of the subsidiaries for part of 
the track record up to 31-Dec-00 were C.F. Li &amp; Co., whose proprietor is Mr Li 
Chi Fai. On 9-Feb-04, he was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040209/GLN20040209017.pdf">
appointed</a> as an INED of B&amp;S, apparently satisfying the Stock Exchange's 
lax rules on independence.</p>
<p>
You can guess for yourself what the &quot;B&quot; and &quot;S&quot; stand for. The top 25 placees
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020802/00000MC20020801235832P.pdf">
took</a> 92% of the placing. The IPO at $0.50 per share, in our view, was 
ridiculously over-priced, valuing the company at $200m and a Jun-01 P/E of 236. 
Turnover that year was just $28.3m. The stock meandered for over a year, then 
took off in early 2004, reaching a high of $1.00 on 8-Mar-04. This valued the 
company at $400m, or a Jun-03 P/E of 217.</p>
<p>
Even by HK standards, when it came, the crash of B&amp;S was spectacular, falling 
94% in an hour on 23-Aug-04. After that, a person called Fu Hau Ching
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=5462&amp;lang=EN&amp;dia=Y">
claimed</a> to have bought 70m shares (17.51%) on the exchange on 20-Aug-04 at 
an average of $0.79. That can't be right, because volume that day was only 
3.368m. He/she also
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=5481&amp;lang=EN&amp;dia=Y">
claimed</a> to have sold 50.032m shares on 23-Aug-04 at an average of $0.423, 
which is more likely to be true. 4 months later, on 13-Dec-04, B&amp;S finally 
offered some insight into what happened. The firm
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20041213/GLN20041213025.pdf">
said</a> that two of the original shareholders, BVI companies called Baserich 
and Amerose, had sold their entire 70m shares but had not been paid for them, 
and the lawyers, for some unknown reason, had seen fit to release the shares 
from escrow. The purchaser could not be contacted, the shares had been deposited 
with the high court, and the whole matter had been reported to the
<a target="_blank" href="../pages/CCBwatch.asp">Commercial Crime Bureau</a> where it 
was still under investigation.</p>
<p>
Shortly after the stock crash, the controlling shareholder of B&amp;S faced demand 
for repayment of a loan it had guaranteed, and as a result on 9-Sep-04 it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20041006/GLN20041006014.PDF">
sold</a> its 42.60% stake for just $2m, or $0.01174 per share, to a BVI shell 
70% owned by Mr Leo Lee Man Kwong, a partner of law firm
<a target="_blank" href="http://www.lawfirm.com.hk/">Chan, Lau &amp; Wai</a>, financed by a loan from Kingston Securities Ltd secured against the shares.</p>
<h4>
KECHK's new sister</h4>
<p>
On 16-Dec-03, the owner of KECHK, Kim Eng Holdings (Hong Kong) Ltd,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031217/LTN20031217021.pdf">
announced</a> a change of control and was eventually renamed <a href="../dbpub/articles.asp?p=5140">
VXL Capital Ltd</a> (<b>VXL</b>, 0727). As a result, most of the staff of KECHK 
were transferred on 1-Jan-04 to a fellow subsidiary, 
<a href="../dbpub/orgdata.asp?p=24751">Kim Eng Corporate Finance 
(Hong Kong) Ltd</a> (<b>KECF</b>), which was then sold by the listed company to its 
departing parent, Kim Eng Holdings Ltd (<b>KEHL</b>). VXL still owns KECHK, 
which was renamed to KE Capital (Hong Kong) Ltd on 16-Apr-04 and is still 
licensed, but it has been quiet since the takeover and VXL has a 
put option to sell KECHK back to KEHL within a year, once it can find some other 
line of business to maintain its listing. On 29-Mar-04, KECHK
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040329/GLN20040329082.PDF">
resigned</a> as sponsor of B&amp;S due to lack of qualified staff. In Nov-04, KECF 
acted as financial adviser to B&amp;S on the takeover.</p>
<h3 id="datasys">Datasys</h3>
<p>
Apart from Info Comm, Grandtop, Rontex, Thiz and Tiger Tech&nbsp;, what other notable IPOs has CSCA worked on? 
Well here's one that deserves a mention.</p>
<p>
On 16-Aug-02, about 3 months before Rontex, <a target="_blank" href="../dbpub/articles.asp?p=16724">
Datasys Technology Holdings Ltd</a> (<b>Datasys</b>, 8057), a developer of <i>&quot;IT 
solutions for power and government administration industries&quot;</i>, was listed on GEM. 
The Sponsor was CSCA, and the reporting accountant was E&amp;Y. 98% of the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20020814/00000MC20020814203318Y.pdf">
placing</a> went to the top 25 placees.</p>
<p>
It didn't take Datasys long to get into trouble. It's first listing rule breach 
came for being late on its first annual report for the year to 31-Dec-02. When 
the report came, it emerged that the directors had
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20031023/GLN20031023015.pdf">
failed</a> to repay prior to listing loans from the company, contrary to the 
statement in the prospectus.</p>
<p>
On 30-Dec-03, the day before the year-end, three of the six executive directors 
and an INED
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20031230/GLN20031230018.pdf">
resigned</a>, and then the Chairman
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040324/GLN20040324009.pdf">
quit</a> on 8-Mar-04.</p>
<p>
The next problem came with the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20040621/GLN20040621010.pdf">
annual report</a> for the year ended 31-Dec-03, when E&amp;Y disclaimed their 
opinion. They reported that the balance sheet included <i>&quot;various cash advances 
to third parties&quot;</i> and the auditors had <i>&quot;not been provided with adequate 
evidence to support the nature and commercial substance for these cash 
advances.&quot; </i>They said that due to the high turnover of senior management and 
directors <i>&quot;certain underlying books and records of the Group were either 
lost, or could not be located&quot; </i>(tell us the difference)<i>.</i></p>
<p>
Perhaps the management is in the same condition, because the stock has been suspended since 17-May-04 and they haven't put out 
any announcements since 16-Aug-04. That means their third quarter report has 
been overdue since 14-Nov-04, but the lack of any announcement regarding this 
delay suggests a deeper problem.</p>
<h3>HLB and E&amp;Y</h3>
<p>
Every listed company, good or bad, is entitled to an auditor, so being the auditor of 
a dodgy company does not imply any wrong-dong by the auditor. But we note that HLB has 
a particular affinity for companies in the Styland network and others that have 
run into a spot of bother, sometimes taking up the job after other firms have 
quit in the wake of scandal. For example, apart from Riverhill and Inworld, it 
has taken over the audit of <a target="_blank" href="../dbpub/articles.asp?p=16426">Tungda Innovative 
Lighting Holdings Ltd</a> (8229) and <a target="_blank" href="../dbpub/articles.asp?p=4979">Sun Man 
Tai Holdings Co Ltd</a> (0433).</p>
<div id="update1" class="regbox">
  <b>Update: 26-Mar-05<br>
  </b>In 2002, there was a battle for control of
  GEM-listed
  <a target="_blank" href="../dbpub/articles.asp?p=15232">International Capital Network Holdings Ltd</a> 
  (<b>ICNH</b>, 8004, now in provisional liquidation), another company in the Styland network. Two BVI 
  shareholders, one owned by WW and the other by Ms Mona Leung Yuk Kit, a former 
  Styland
  <a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020502/LTN20020502118.doc">
  employee</a>, requisitioned a shareholders' general meeting in an effort to 
  appoint 7 candidates (including Ms Leung and two directors of WW) as directors to take board control of ICNH.<p>
The requisitioning shareholders published an
<a target="_blank" href="../codocs/8004_020508notice.pdf">announcement</a> dated 
7-May-02. In it, they stated that one of the candidates, Mr Li Wing Kei, 
was at that time <i>&quot;the technical director of HLB Hodgson Impey Cheng&quot;</i>. 
This establishes a connection between HLB and Mr Li at a time 
which was 6 months before the IPOs of Rontex and Grandtop. As mentioned 
above, Mr Li has been charged by the ICAC in connection with the Gold Wo and Fu 
Cheong IPOs.</p>
  <p>
Another candidate, Mr Li Chak Hung, was a director of garment maker Gemzboh 
Holdings Ltd (<b>Gemzboh</b>, 1192, now Titan Petrochemicals Group Ltd) from 
29-Apr-98 until 1-Jun-01. Gemzboh listed on 17-Jun-98. The reporting accountant 
was E&amp;Y, but Li Wing Kei &amp; Co acted as auditors of most of the subsidiaries of 
Gemzboh for the first 2 years of its 3-year track record.</p>
  <p>
Mr Li Chak Hung is a partner of Li, Lai &amp; Cheung CPA. On 26-Sep-03, they were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030926/LTN20030926156.pdf">
appointed</a> as auditors of Styland, replacing E&amp;Y.</p>
</div>
<p>
As for E&amp;Y, while again no wrong-doing has been alleged, it does seem to us to 
have been somewhat accident-prone, having acted as reporting accountants in the 
IPOs of Gold Wo, Fu Cheong and Global Trend.</p>
<p>
There is probably a more fundamental problem here. Being a reporting 
accountant in an IPO is not much of an assurance to investors if the reporting 
accountant was not the auditor of the subsidiaries during the track record 
period. Although it is possible for the reporting accountant to review the 
paperwork, they cannot travel back in time and be present at year-end stock 
takes or fixed asset checks, nor can they always reach counterparties from 3 
years ago to verify the genuineness of purported invoices, receipts or other 
paperwork. While it would impose some preparation obligations, we think that the 
rules should be amended to require the reporting accountants to have acted as 
auditors for all the main subsidiaries of IPO candidates throughout the track 
record period.</p>
<h3>Round-up</h3>
<p>
If you've made it to the end of this story, then we hope you have learned 
something about the way the IPO industry works in Hong Kong. It is one reason 
why your editor has never participated in a small-cap IPO here, despite 
specialising, as an investor, in small-caps, and making decent returns in 
finding wheat in the chaff. If newly listed companies are going to implode, they 
usually do so within the first 2 years. After all, why wait?</p>
<p>
In the case of Grandtop and Rontex, the lack of detail in their investment 
portfolio disclosures and the advances to unidentified third party agents raises 
obvious questions. In Grandtop's case, the refusal to recognise any permanent 
diminution in value in its equity portfolio despite plunges in market value is 
also questionable, and so is HLB's willingness to sign off on such 
things.</p>
<p>
The regulators should amend the Listing Rules to require fully identified and 
detailed disclosure in listed company accounts of any equity holding which 
accounts for 5% or more of net assets.</p>
<p>
The concern regarding Rontex is compounded by the fact that not just one, but 
both INEDs at the time of IPO later quit and were implicated in ongoing ICAC 
investigations involving alleged IPO fraud at Gold Wo and Fu Cheong. How exactly 
did Rontex pick its INEDs?</p>
<p>
Then there is the SFC investigation into Styland's previous behaviour, and the 
fact that its securities arm, Ever-Long, was the Lead Manager and Book-runner in 
the Grandtop and Rontex IPOs, together with the fact that the Styland group has 
been lending money to the controlling shareholder of Grandtop and had a pledge 
over the shares, and most recently, that the controlling shareholder has 
disclosed a short interest, indicating that they may be under option or sold.</p>
<p>
At Thiz, there is a worrying lack of disclosure over the massive receivables, 
and at Datasys, there is a worrying lack of disclosure of any kind, having been silent 
since Aug-04.</p>
<p>
As for KECHK, it was involved in no less than 4 duff deals in a row - Gold Wo, 
Fu Cheong, Global Trend and B&amp;S, the first 3 of which have ended with criminal 
charges against directors of the issuers while the fourth ended in a spectacular 
stock crash. We would avoid any future company sponsored by that firm or its new 
sibling, KECF. The same goes for FAF and CSCA - any future IPO involving them in 
our view deserves a &quot;handle with care, contents may be toxic&quot; label.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11972">AVANTA INVESTMENT MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18187">Capital VC Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17034">CHANGCHUN DA XING PHARMACEUTICAL COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16610">China Investment and Finance Group Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15352">CINDA INTERNATIONAL ASSET MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=24751">CNI GLOBAL CAPITAL LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7352">CSC ASIA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16724">DATASYS TECHNOLOGY HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16655">E&P Global Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5346">Ernst & Young (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11190">EVER-LONG SECURITIES COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12196">FIRST ASIA FINANCE GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15412">FU CHEONG INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16953">Fullshare Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16925">GLOBAL LINK COMMUNICATIONS HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17441">GLOBAL TREND INTELLIGENT TECHNOLOGIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13651">GOLD WO INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=20649">Goldstone Capital Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5142">Good Resources Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18154">Heng Xin China Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11883">HLB Hodgson Impey Cheng Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10491">HUA LIEN INTERNATIONAL (HOLDING) COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17922">Li, Lai & Cheung</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17131">National Investments Fund Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=18157">Neo Telemedia Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8529">Optima Capital Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14233">Qing Hua Holding Group Company Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13482">RIVERHILL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4978">STYLAND HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13767">THIZ TECHNOLOGY GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5858">TITAN PETROCHEMICALS GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14951">WLS HOLDINGS LIMITED (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2992">YUE FUNG INTERNATIONAL GROUP HOLDING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=16609">ZO Future Group</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=44814">Chan, Albert Wing Kui</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16568">Ho, Roy Wing Cheong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16570">Kwok, Connie Shuk Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=20927">Leung, Kenny Kin Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=24769">Leung, Kin Fun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13204">Li, Albert Sze Tang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8839">Li, Ricky Wing Kei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=5804">Wong, Dickson Kai Tat</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13995">Wong, Henry Wing Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=16659">Young, Michael Chi Shan</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=92">Accounting problems</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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