
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

<script type="text/javascript">document.title="The FSDC: under development";</script>

	<div class="summary">The Financial Services Development Council is apparently still under development itself. Confusion reigns over what form it will take, how it will be funded (if at all), and even the identity of persons appointed to it. We'll try to add some clarity.</div>

<h2 class="center">The FSDC: under development<br>
<span class="headlinedate">24 January 2013</span></h2>
<p>The Financial Services Development Council is apparently still under 
development itself. Confusion reigns over what form it will take, how it will be 
funded (if at all), and even the identity of persons appointed to it. We'll try 
to add some clarity.</p>
<p>On 27-Jun-2012, four days before he took office, HK Chief Executive C Y Leung
<a href="http://www.info.gov.hk/gia/general/201206/27/P201206270661.htm" target="_blank">
set up</a> the <a href="../dbpub/officers.asp?p=1928474">Preparatory Task Force 
on the Financial Services Development Council</a> (<strong>PTF</strong>), 
chaired by the multi-purpose <a href="../dbpub/positions.asp?p=4285">Laura Cha 
Shih May-lun</a> and with 3 other non-government members, barrister
<a href="../dbpub/positions.asp?p=34683">Laurence Li Lu Jen</a>,
<a href="../dbpub/positions.asp?p=70731">Tse Yung Hoi</a>, Deputy CEO of Bank of 
China International, and former Jardine Taipan
<a href="../dbpub/positions.asp?p=1200">Alasdair Morrison</a> (misspelled in the 
press release as Alastair, but whose real name is Allister). The task force 
consulted widely, including your editor David Webb, and issued a
<a href="http://www.fstb.gov.hk/fsb/topical/ptf-fsdc_report(dec2012)_e.pdf" target="_blank">
report</a>.</p>
<p>In his Policy Address on 16-Jan-2013, the CE
<a href="http://www.policyaddress.gov.hk/2013/eng/p36.html" target="_blank">
announced</a> the immediate establishment of the FSDC. The next day, the 
Government
<a href="http://www.info.gov.hk/gia/general/201301/17/P201301170401.htm" target="_blank">
announced</a> the membership, including all 4 members of the PTF and 17 other 
non-Government members. On its news portal on 17-Jan-2013, the Government
<a href="http://www.news.gov.hk/en/categories/finance/html/2013/01/20130117_145251.shtml" target="_blank">
said</a>:</p>
<blockquote>&quot;The council will be formed as a company limited by guarantee 
to project an independent image as well as enhance its operational flexibility, 
transparency and governance.&quot;</blockquote>
<p>But in a media briefing yesterday, 22-Jan-2013, Mrs Cha was
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=130393&amp;con_type=1" target="_blank">
quoted</a> in <em>The Standard</em> as follows:</p>
<blockquote>&quot;As for whether the council could be set up in the form of a 
company limited by guarantee, she said so far this is just a suggestion. &quot;We are 
open to opinion on how it should be formed.&quot;&quot;</blockquote>
<p>So after 6 months of pondering it remains unclear what form the FSDC will 
take, even though its members, or possibly its board of directors, have already 
started their 2-year terms on 17-Jan-2013. So far, no company limited by 
guarantee has been incorporated with the FSDC's name. You can check the
<a href="../dbpub/incHKcaltype.asp" target="_blank">latest HK 
company registrations</a> in the Webb-site Who's Who database (use the drop-down 
boxes to select type). Let us know if you spot it in the wild.</p>
<p>As we said in our meeting with the PTF back on 24-Aug-2012, the main role of 
the FSDC should be to act as a consultative and advisory body, tapping the 
expertise and experience of its members, providing feedback on government 
proposals (and stopping the bad ones from seeing the light of day) and making 
suggestions to facilitate industry development, such as removing impediments and 
increasing efficiency, while at the same time enhancing free and fair markets 
between the consumers and providers of financial services.</p>
<p>If the FSDC had existed 5 years ago, when Financial Secretary
<a href="../dbpub/positions.asp?p=24948">John Tsang Chun Wah</a> and Secretary 
for Financial Services <a href="../dbpub/positions.asp?p=18733">Ceajer Chan Ka 
Keung</a> started
<a href="http://www.info.gov.hk/gia/general/200811/26/P200811260288.htm" target="_blank">
banging the drum</a> for the &quot;exponential growth in Islamic finance&quot;, then the 
collective wisdom would undoubtedly have advised the ministers that this was a 
waste of time and effort, or at most a very low priority, given the low demand 
in HK for Islamic financial products. There would probably be a lot more demand 
in HK for catholic financial products, if such things existed - but wait, they 
do - they are called &quot;financial products&quot;, and are quite popular with other 
religions and with atheists too. It is only Islamic finance that twists itself 
in knots to create products which walk and talk like bonds and mortgages but 
purport to satisfy sharia law (which in essence requires only profit-sharing 
equity, not interest-bearing debt).</p>
<p>Let's face it, we have a Financial Secretary who is a career civil 
servant and a Secretary for Financial Services who was an 
academic-cum-administrator. Neither of them has private sector experience in 
financial services, so if they had good advice from an expert council, and 
followed it, then we could get a lot better policy-making.</p>
<p>The same goes for taxation: the Government lacks a committee to advise it on 
fiscal policy, and it shows. There has been no meaningful rationalisation or 
reform of tax policies since the Handover in 1997. Instead we have a stream of 
ad-hoc measures which gradually distort economic incentives further and further. 
For example, when property turnover is &quot;too high&quot;, they
<a href="stampout.asp">increase stamp duty</a> to deter 
&quot;speculation&quot; - but then the duty adds to the price of homes, so they offer a 
tax deduction for mortgage interest - but then that's a deduction that those who 
rent their homes cannot get. And if speculation is &quot;bad&quot;, then why is there 
stamp duty on shares but not on riskier warrants or other derivatives? Indeed, 
why do we have stamp duty at all, when a transfer of shares or property does not 
in itself generate any GDP? Why tax the transfer of property and shares when we 
don't tax other asset transfers, such as antiques, cars or club memberships? Why 
do we <a href="traffic1.asp">tax new cars</a> at increasing rates 
based on value, but not other luxury goods like diamonds or truffles? Why not 
just increase fuel tax and price the busiest roads at the busiest times to 
reduce congestion? And why do we tax petrol but not diesel? Why do we
<a href="tax1.asp">tax employee rental reimbursements</a> as if they 
were only 10% of the cash salary, rather than the actual rental value? There is 
so much room for improvement and rationalisation in our tax system. </p>
<p>But getting back to the issue of the day, the FSDC, that consultative and 
advisory function is about all it needs to do. We don't need it to come up with 
training courses for the financial sector. We already have the
<a href="../dbpub/orgdata.asp?p=6803">HK Securities and Investment Institute</a> 
for that, and we don't need it to run financial services road-shows, exhibitions 
or conferences - the private sector is perfectly capable of doing that, when the 
Trade Development Council doesn't get in the way.</p>
<p>The advisory function should be supported by a secretariat that can do 
policy research, produce papers for consideration, and take ideas from council 
meetings and turn them into policy proposals for the administration to consider. 
It should be a two-way process, not just a sounding board for things the 
Government wants to do. It can fulfil this function without being incorporated - 
just like all the other hundreds of advisory bodies that the Government has.</p>
<h3>No ordinary company</h3>
<p>If the FSDC is to enter into contracts and have its own legal existence (and 
we say it should not), then it should be established by ordinance passed through 
the Legislative Council, not as a fast-track company limited by guarantee. The 
latter structure is more suitable for private members clubs, trade associations 
with members, and political parties with members. For one thing, such companies 
admit members upon payment of subscription fees. They hold AGMs, and the members 
elect directors - but the Government has just appointed all the councillors, so 
we don't see how a company would be consistent with that. Who can apply for 
membership of the company? When will elections be held for its board? The sector 
doesn't need the Government to form a trade association - there are dozens of 
them already.</p>
<h3>So who are these people?</h3>
<p>As the announcement didn't include full names,
<a href="identity.asp">let alone the identity numbers</a>, it was 
rather hard for us to identify who some of these 21 members of the FSDC are. 
There must be hundreds of &quot;Fred Lam&quot; in HK, and more than a few of &quot;Joe Ngai&quot;. 
But we've made some intelligent guesses - they probably mean
<a href="../dbpub/positions.asp?p=27032">Frederick Lam Tin Fuk</a>, Executive 
Director of the Trade Development Council, and
<a href="../dbpub/positions.asp?p=61637">Joseph Ngai Luc</a>, a partner of 
McKinsey &amp; Co. <a href="../dbpub/officers.asp?p=2012498">Click here</a> to see 
the entire list, and click on the names to see their other positions in 
Webb-site Who's Who.</p>
<p>We can tell you about some connections in the membership:
<a href="../dbpub/positions.asp?p=3132">Qin Xiao</a> is former President 
(1995-2000) of China International Trust and Investment Corporation (<strong>CITIC</strong>) 
and former Chairman of China Merchants Group (2000-2010). Since 2009 Mr Qin has 
been an INED of <a href="../dbpub/officers.asp?p=462">HKR International Ltd</a> 
(<strong>HKR</strong>, 0480), developer of the massive Discovery Bay on Lantau, 
which project has since 1994 been a 50:50 joint venture with CITIC Pacific. Mrs 
Cha's husband <a href="../dbpub/positions.asp?p=2315">Victor Cha Mou Zing</a> is 
the Deputy Chairman and Managing Director of HKR, which his late father
<a href="../dbpub/natperson.asp?p=478">Cha Chi Ming</a> founded. Both Mr Qin and 
Mrs Cha are INEDs of <a href="../dbpub/orgdata.asp?p=17594">China Telecom Corp 
Ltd</a> (0728).</p>
<p><a href="../dbpub/positions.asp?p=7467">Levin Zhu Yunlai</a> is son of former 
Premier Zhu Rongji and CEO since 2002 of China International Capital Corporation 
(<strong>CICC</strong>), which he joined in 1998. CICC started out in 1995 as 
China's first joint venture investment bank. It was a joint venture between 
People's Construction Bank of China (as it was then) with 42.5%,
<a href="../dbpub/orgdata.asp?p=2012910">China National Investment and Guaranty 
Co Ltd</a> (7.5%), Morgan Stanley International Inc (35%),
<a href="../dbpub/orgdata.asp?p=6730">Government of Singapore Investment Corp</a> 
(7.5%)&nbsp; and <a href="../dbpub/orgdata.asp?p=478">Mingly Corporation</a> 
(7.5%). That last one is the odd one out, not being a government or bank. Mingly 
is controlled by the Cha family, and was delisted by privatisation on 
22-Mar-2001. In its 31-Mar-1995 annual report, Mingly said that it &quot;was 
instrumental in brokering the deal and putting together the consortium&quot;. Morgan 
Stanley exited the venture in 2010, but Mingly is
<a href="http://www.cicc.com.cn/CICC/english/about/page2.htm" target="_blank">
still there</a>.</p>
<p><a href="../dbpub/positions.asp?p=2012500">Eugene Michael Fung Yue Ming</a> 
is head of Private Banking in Asia for JPMorgan.
<a href="../dbpub/positions.asp?p=89593">William Harold Strong</a> moved to HK 
in 2011 as Co-CEO for Asia-Pacific for Morgan Stanley. The aforementioned 
Alasdair Morrison was Asia Chairman of Morgan Stanley from 2001-2007.
<a href="../dbpub/positions.asp?p=41194">Benjamin Hung Pi Cheng</a> is CEO of 
Standard Chartered Bank (HK) Ltd.</p>
<p><a href="../dbpub/positions.asp?p=2012499">Douglas Wayne Arner</a> is a 
professor of law at the University of Hong Kong.
<a href="../dbpub/positions.asp?p=56705">Mark Graham Shipman</a> is a partner of 
Clifford Chance, a law firm. <a href="../dbpub/positions.asp?p=2012502">Florence 
Yip Chiu Kwai Fong</a> is a tax partner at PricewaterhouseCoopers.
<a href="../dbpub/positions.asp?p=59404">Mark Seumas McCombe</a> is Asia-Pacific 
Chairman of the world's largest asset manager
<a href="../dbpub/orgdata.asp?p=2010211&amp;x=y">BlackRock Inc</a> and until 
2011 he was CEO (Hong Kong) of <a href="../dbpub/officers.asp?p=374">Hongkong 
and Shanghai Banking Corp Ltd</a> (<strong>HSBCHK</strong>), the local arm of 
UK-based HSBC Holdings plc (0005). Mrs Cha has been on the board of HSBCHK since 
2004 and Deputy Chairman since 2007. <a href="../dbpub/positions.asp?p=7544">
Edward Kwan Pak Chung</a> is a former CEO of HSBC Broking Services (Asia) Ltd, a 
subsidiary of HSBCHK.</p>
<p><a href="../dbpub/positions.asp?p=13579">Frank Wong Kwong Shing</a> is 
a career banker and last served as Chairman of DBS Bank in HK until 2008.
<a href="../dbpub/positions.asp?p=16591">Chen Shuang</a> is CEO of China 
Everbright Ltd (0165) and a director of China Everbright Securities Co Ltd, the 
mainland broker. <a href="../dbpub/positions.asp?p=59391">Anton Liu Ting An</a> 
is Deputy Chairman and President of China Life Insurance (Overseas) Co Ltd, the 
HK insurer.</p>
<p>On the small broker front (you know, the few hundred stock brokerage firms 
that have only 11%
<a href="https://www.hkex.com.hk/eng/stat/epstat/exreport.htm" target="_blank">
combined market share</a> but elect 18 members of the 1200-strong Chief 
Executive Election Committee and one legislator), there are two members,
<a href="../dbpub/positions.asp?p=37225">Jeanne Lee Sai Yin</a>, who works at 
Sino Grade Securities Ltd and <a href="../dbpub/positions.asp?p=10814">Vincent 
Marshall Lee Kwan Ho</a>, of the Tung Tai Group founded by his father. Both of 
them are Election Committee members.</p>
<p>So there you have it - an interesting and well-connected bunch, but somewhat 
overweight on bankers and brokers, a token academic, accountant and lawyer, and 
rather light on investors - the man from BlackRock is the only one who could 
arguably be said to be on the buy-side, but with other people's money, so his 
firm is a product issuer of mutual funds and ETFs too. There was no 
representative from the Consumer Council, no membership from the four regulators 
(SFC, HKMA, MPFA and Office of the Commissioner of Insurance), and it seems 
unlikely that investor and consumer issues will get much of an airing. There is 
nobody from the hedge fund, private equity or venture capital space either, all 
of which are important consumers of financial services. So if this is where the 
Government is going to get advice on financial services, it is probably going to 
get a rather unbalanced view.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2012498">HKSAR Financial Services Development Council</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
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