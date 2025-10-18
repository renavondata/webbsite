
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

<script type="text/javascript">document.title="A Brief History of Tom";</script>

	<div class="summary">Tom-foolery abounds as we walk you through the financial wizardry which created a paper US$ billionaire who is not even on the board of the company. We also take a look at the business model of this company, which we predict will burn the Tom-thumbs of investors.</div>

<h2 class="center">A Brief History of Tom<br>
<span class="headlinedate">21 March 2000</span></h2>
<p>With apologies to <a href="http://www.amazon.com/exec/obidos/ASIN/0553109537/webbsitecom/" target="_blank">Stephen
Hawking</a>, we present for you a Brief History of Tom (which as you know does
not have a long history). We'll show you how the financial wizards behind
upstart start-up Tom.com Ltd have created over US$1bn of paper wealth for a lady
with no net cash investment who does not even sit on the board of the company.
We also look at the business model of Tom.com, part of which is founded on a
concept which has previously failed in the internet space. </p>

<h3>ECLink Shenzhen</h3>

<p>We start with a company called ECLink Electronic Network Systems
(Shenzhen) Co., Ltd (<b>ECLink Shenzhen</b>), incorporated in the PRC on
21-Jul-97. This company was held through an investment holding company called
Alexus Company Limited (<b>Alexus</b>). Together they
are the only companies in the group with a 2-year track record&nbsp; in the
accountants report that was required
for listing. The next-oldest company in the group dates back to 26-May-99. So
this is the company on the basis of which the SEHK granted listing. </p>

<p>Despite this, ECLink Shenzhen gets a total of just 3 paragraphs
in the prospectus and is described as a &quot;strategic investment&quot;
although Tom owns 100% of it. It says in part: </p>

<blockquote>

<p>&quot;ECLink Shenzhen has been primarily involved in the
development of Electronic Data Interchange (EDI) customs declaration software to
provide a secure electronic process for companies to issue their customs
declarations to Shenzhen Customs.&quot; </p>

</blockquote>

<p>ECLink Shenzhen is still in start-up mode and had an accumulated
loss of HK$26.05m by 31-Dec-99. </p>

<p><i>Webb-site.com</i> can now reveal the original structuring of
this deal. Alexus, the holding company of ECLink Shenzhen, was set up as a shelf company and incorporated on 16-Jul-96.
It came off the shelf in Oct-96 and the initial two shares were transferred to
Cranwood Company Limited (<b>Cranwood</b>) and Ever Success Limited (both
Liberian companies) on 11-Oct-96. According to Tom's prospectus, Cranwood is now
wholly owned by Ms Chau Hoi Shuen (<b>Ms Chau</b>). Both shares in Alexus were
transferred to Chopin International Ltd (<b>Chopin</b>), a BVI company, on 10-Jan-97. </p>

<p>On 8-Jan-97 the real action began. The number of issued shares
of Alexus increased from 2 to 1,000. Of these, 588 shares were allotted to
Chopin, giving it a total of 599 shares (59%) in the form of 'A' shares. Chopin paid only the
par value of HK$5,880 (US$754) for these shares. Meanwhile Good Century Limited,
another BVI company, put up HK$61.84m (<b>US$8m</b>) of capital in return for
400 'B' shares (or 40% of the company) and a third company called Tonteec
Limited subscribed HK$100 for 10 'C' shares equal to 1% of the company. </p>

<p> The 'A'
and 'B' classes had 50% of the votes each, and the 'C' shares were non-voting.
On 13-Sep-99, the 'C' shares were converted into 'B' shares, and on 30-Nov-99
the 'A' and 'B' shares became ordinary shares with normal (60:40) voting
weights. </p>

<p>According to a restructuring agreement dated 18-Jan-00 and seen
by <i>Webb-site.com</i>, Good Century Ltd was then a 100% subsidiary of <a href="http://www.hph.com.hk/" target="_blank">Hutchison
International Port Holdings Limited</a>, a BVI company wholly owned by <a href="http://www.hutchison-whampoa.com/" target="_blank">Hutchison
Whampoa Ltd</a>, and Chopin was a wholly-owned subsidiary of Cranwood (Ms Chau's
company). However,
by this stage Ms Chau (through Chopin) held only 40% of Alexus and 20% belonged
to a wholly-owned subsidiary of <a href="http://www.ckh.com.hk/" target="_blank">Cheung
Kong (Holdings) Ltd</a>. No word on what (if anything) Cheung Kong paid for
that. </p>

<p>Chopin transferred its shares to two new BVI
companies, Handel International Limited (<b>Handel</b>) and Schumann International
Limited (<b>Schumann</b>) which are 90% owned by Cranwood. 5% of each company is
owned by Ms Debbie Chang Pui Vee (<b>Ms Chang</b>), and the other 5% is owned by
Mr Feng Qi (<b>Mr Feng</b>). Ms Chang and Mr Feng are both directors of Tom and
were directors of ECLink Shenzhen. Despite her substantial shareholding, Ms Chau
was never a director of ECLink Shenzhen and is not on the Tom board either. </p>

<h3>The Strategic Investors</h3>

<p>According to Tom's prospectus, Schumann and Handel are engaged
in the &quot;<i>provision of management consulting services</i>&quot;. Schumann was
incorporated on 8-Dec-98 and Handel on 29-Sep-99. The 3 owners of the companies
(Ms Chau, Ms Chang and Mr Feng) are described as &quot;<i>a group of consultants
with extensive experience in the planning and development of projects in China</i>&quot;.
The prospectus says they have been involved in the development of many projects
in China, although the only one mentioned is <a href="http://www.hutchison-whampoa.com/html/eng/property/prop_content_devchina.html" target="_blank">Beijing
Oriental Plaza</a>, a US$2bn 6m sq ft property project in the centre of
Beijing.&nbsp; </p>

<p>That project was originally a joint venture between Hutchison,
Cheung Kong and <a href="http://www.oocl.com/" target="_blank">Orient Overseas
(International) Ltd</a> (<b>OOIL</b>), the shipping company controlled by the
family of Hong Kong Chief Executive Mr Tung Chee Hwa. After the Asian crash, OOIL's interest was reduced in
Mar-98 from 23% to 8% and two 20%
shareholders, Bank of China Group Investment and China Insurance Group
Investment were introduced. Hutchison now has 18% and Cheung Kong 33.4%. </p>

<p>The prime site was acquired in 1992, while Mr Chen Xitong was
Mayor of Beijing. Chen was later convicted of corruption (although no
details of his alleged crimes were made public) and sentenced to 16 years' jail in 1997. </p>

<p>Ms Chang is a Director of Orient Overseas Developments Ltd (a
100% subsidiary of OOIL) and Beijing Orient Plaza Company Ltd. She is also a
member of the People's Consultative Party of Beijing, Eastern City District. </p>

<p>Ms Chau and Ms Chang each own 50% of Orient-Horizon Ltd (<b>Horizon</b>), a HK
company incorporated on 4-May-90 which is described as &quot;<i>a management
consultancy company primarily involved in business development in the PRC</i>&quot;. </p>

<p>Since 1994, Mr Feng has been the Project Director of Horizon, and before that he
worked at the China Customs Head Office where he was involved with the
development of the customs clearance computer network. That was prior to his
involvement with ECLink Shenzhen. He is also a 40% shareholder of Beijing ECLink
Science and Technology Development Company Ltd, one of the content providers to
Tom, while the other 60% is owned by Wang Qi, an employee of Tom. </p>

<h3>The beginning of Tom&nbsp;</h3>

<p>Tom.com Ltd was incorporated in the Cayman Islands on 5-Oct-99
and until 16-Dec-99 was called &quot;Super Channel Holdings Limited&quot;. The
name was changed after they <a href="tomcomsold.asp">bought</a> the domain name
Tom.com on 7-Dec-99. </p>

<p>The initial share capital of Tom on incorporation day was
just&nbsp; 2 shares of US$1 each, of which one was immediately transferred to
Schumann (Ms. Chau's company) and the other to a wholly-owned subsidiary of
Hutchison Whampoa Ltd.&nbsp; </p>

<p>6 days later, on 11-Oct-99, US$50,000 worth of shares were
allotted, resulting in Ms. Chau controlling 50%, Hutchison 40% and Cheung
Kong (Holdings) Ltd 10%. </p>

<p>4 days later, on 15-Oct-99, when Tom was just 10 days old, Ms. Chau's company transferred 10%
of Tom to Cheung Kong at a consideration of <b>HK$87m </b>(US$11.2m), increasing
Cheung Kong's stake to 20%. We don't know how that consideration was arrived at
given that the paid up capital was still only US$50,000, but 10 days is
obviously a long time in the internet world. </p>

<p>On 18-Jan-00, 100% of Alexus was transferred to Tom in exchange
for shares in Tom.com. Prior to this, Alexus was held in the same proportions as
Tom, so no money changed hands in the process. </p>

<h3>The Metro Radio Deal</h3>

<p>On 30-Dec-99, just prior to the year-end, Metro Broadcast
Corporation Ltd (<b>Metro</b>) agreed to transfer certain assets relating to the Metro
web-site to Tom's subsidiary in exchange for HK$310m (<b>US$39.8m</b>) in cash.
Note that they did not transfer the radio stations, just the assets associated
with the <a href="http://www.metroradio.com.hk/" target="_blank">web site</a>.
In fact, Tom will have to pay Metro on an ongoing basis for the stream of radio
programmes, broadcast material and other information needed to run the web site.
For the first year, the fee payable by Tom will be HK$12m. Presumably the ad
revenue from the broadcast radio channels will continue to accrue to Metro, not
Tom. You can hear the channels using Windows Media Player (<a href="http://202.76.3.168/av/entertainment/metro/liveselect.asx">104FM
Select</a>, <a href="http://202.76.3.168/av/entertainment/metro/livehit.asx">997
Hit Radio</a>). </p>

<p>Of the acquisition cost of HK$310m, approximately 99.9% of it was
goodwill. The tangible assets acquired, included a
collection of PCs and a server, were worth just HK$436,000 (US$56,000). 17 employees came across with the site.
Some of these had been working on event productions, and that was used as part
of a &quot;pro forma&quot; unofficial track record. </p>

<p>Apart from the initial capital of US$50,000, the initial funding
for Tom came from shareholders' loans from Cheung Kong and Hutchison roughly in
the proportion of their Tom shareholdings. As of 31-Dec-99, their loans totaled HK$363m, most of which was the cost of the Metro web-site (HK$310m) and the
Tom.com domain name (HK$19.5m). </p>

<p>Metro is equally owned by Hutchison and Cheung Kong, compared with the 2:1 ratio of
the Hutchison:Cheung Kong holdings in Tom, so on a see-through basis in the
Metro deal, Cheung Kong put in 1/3 of the HK$310m cost and got back 1/2 of
HK$310m (net result, a surplus of $52m). </p>

<p>The shareholder loans were exchanged for new shares in Tom on
1-Feb-00. At this stage, Cheung Kong had advanced HK$166m and Hutchison HK$336m.
You might be wondering how much Ms Chau's companies loaned to Tom - surely they
put in 40% of the funding, in line with their shareholding, right? Wrong! When the shareholders loans were capitalised, her companies were
allotted shares to maintain their stake in return for only HK$310,000 (US$39,900), while Hutchison and Cheung Kong
were issued shares for a total of HK$502m (US$64.5m) to repay
their shareholder loans. A subsequent bonus issue left Hutchison with 920m
shares, Ms Chau's companies with 920m shares and Cheung Kong with 460m shares. </p>

<h3>Who Wants to be a Billionaire?</h3>

<p>Let's see. Ms Chau's companies invested just US$754 in 1997 for 60%
of Alexus, later reduced to 40% by selling 20% to Cheung Kong for unknown
consideration. Then in Oct-99 they put US$25,000 into Tom. 10 days later they got back US$11.2m for selling 10% of Tom to Cheung Kong. Then
they injected the 40% Alexus stake into Tom.
They then put in US$39,900 when the shareholder loans were capitalised. Add that
all up, and Ms Chau's companies get <u> net cash</u> of about <b>US$11.1m</b>. In other
words, the net cost of her stake in Tom was negative. Ms Chau (via Cranwood)
owns 90% of companies which own 920m shares, so she effectively owns 828m
shares. At today's closing price of $10.50, that translates to $8.69bn (<b>US$1.12bn</b>). </p>

<h3>Other deals</h3>

<p>On 21-Jan-00, Tom subscribed US$4.2m for 15% of <a href="http://www.oneasia.com/" target="_blank">OneAsia.com</a>
(Holdings) Ltd, an online retailer of Asian CDs and videos launched in Nov-99.
Pacific Rim International Ltd, a shareholder of OneAsia, was given the right to
subscribe for Tom shares equal to up to 5% of the IPO, at the offer price, and
it did so. As a result, Pacific Rim subscribed 21.4m shares at HK$1.78. The
consideration was existing shares in OneAsia valued at HK$18 per OneAsia share,
equivalent to 15.98% of OneAsia, increasing Tom's stake to 30.98%. Those 21.4m
Tom shares are now worth HK$224.7m (if they still hold them). </p>

<p>On 21-Jan-00, a 55% subsidiary of Tom called Beijing Planet
Network Travel Information Technology Ltd agreed to buy some web-related assets
from China Travel Network Co., Ltd for US$1.7m. </p>

<p>On 9-Feb-00 fellow bubble company Pacific Century Cyberworks
subscribed 121m Tom shares at HK$1.07 per share for a total of HK$129.47m. They
are now sitting on a paper profit of HK$1.14bn (US$147m). </p>

<p>Tom.com is pursuing an &quot;infotainment&quot; technology which
it calls &quot;Tomcast&quot;. This is an effort to &quot;push&quot; content to
you using a proprietary program which sits on your PC's desktop screen. We hate
to point this out, but Push Technology has already been tried, tested and failed
by Pointcast, which pioneered the idea 5 years ago. By a delicious irony, the
final Pointcast broadcast went out the day before Tom's prospectus was published
- <a href="http://news.cnet.com/news/0-1005-200-1552644.html?tag=st.ne.1002." target="_blank">click
here</a> for the full story.&nbsp; </p>

<h3>Tom-Foolery</h3>

<p>At the current market price of HK$10.50 per share, Tom is valued
at HK$30.9bn (<b>US$3.97bn</b>). That is quite ridiculous. Even after the float,
it has the skimpiest collection of web sites and net tangible assets of around
HK$1.42bn (US$182m), mostly in cash. </p>

<p>Perhaps investors are choosing to disregard what is in Tom today
for what might be there tomorrow. Don't hold your breath. Hutchison has numerous
other projects which are consumer related and so far none of them has been given
to Tom. For example, they recently announced a joint venture with <a href="http://www.hutchison-whampoa.com/html/eng/corporate/2000-0126.html" target="_blank">Priceline.com</a>,
the reverse auction site, a joint venture with <a href="http://www.hutchison-whampoa.com/html/eng/corporate/2000-0229.html" target="_blank">DLJ
Direct</a>, the online stockbroker, and various B2B ventures. Tom has not
participated in any of these projects and even if they are injected in the
future, there is no reason to think that they would get them cheap. You can't
value what you haven't paid for. </p>

<p>By comparison with Tom, the market values Wharf (Holdings) at a
similar HK$31.8bn. We're no fan of Wharf, but for that price you at least get
85% of i-Cable, 10m sq ft of prime property, 51% of port operator MTL and
various other trinkets like the Star Ferry and Trams. </p>

<p>The public shareholders of Hong Kong are going to get their
Tom-thumbs badly burnt by this stock when the bubble bursts. The founding
shareholders must be counting the days to when the 6-month lock up expires on
1-Sep-00 (they got a waiver, remember). </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10265">TOM GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=10642">Chang, Debbie Pui Vee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10640">Chau, Solina Holly Hoi Shuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10641">Feng, Qi (1963)</a></li>
				
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