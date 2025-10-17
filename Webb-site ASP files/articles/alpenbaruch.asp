
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

<script type="text/javascript">document.title="How one thing leads to another";</script>

	<div class="summary">Starting with an investigation into the banking problems of a digital token exchange, we follow the trail of the people behind a Vanuatu Bank and a series of questionable transactions on London's AIM.</div>

<h2 class="center">How one thing leads to another<br>
<span class="headlinedate">22 November 2017</span></h2>
<p class="revisedate"><a href="#update1">Updated</a>, 23-Nov-2017</p>
<p>We're going to take you on a mystery tour which will give you a little 
insight into how our investigation process typically evolves.</p>
<p>A while back, Webb-site heard about one of the digital token exchanges in HK 
called <a href="../dbpub/orgdata.asp?p=2105052">Gatecoin Ltd</a> (<strong>Gatecoin</strong>), 
which had suffered a setback in May-2016 when digital pickpockets stole 250 
Bitcoin and 185,000 Ethereum tokens from its wallets, or 15% of its 
crypto-assets. There were corresponding debts to clients, for which the firm 
coined a new unit of account: "ETD" or Ethereum Debt, which, the last time they mentioned 
it on their blog, they were still hoping to repay. Rather like their assets, 
some of the blog posts have also disappeared, but we captured
<a href="../codocs/GatecoinBlog161012.pdf" target="_blank">this one</a> from 12-Oct-2016.</p>
<p>Fast forward to 28-Sep-2017, when Gatecoin
<a href="../codocs/GatecoinBlog170928.pdf" target="_blank">blogged</a> that inward HKD and USD transfers had been "temporarily halted". 
First, there was the "sudden suspension and subsequent closure" of its account 
at Hang Seng Bank. Gatecoin had contingency plans with a firm it 
called "Alpen Baruch". Gatecoin said:</p>
<blockquote>"The first back up bank account we used for HKD and USD transfers 
was with Alpen Baruch, a financial institution with a presence in both Hong Kong 
and the South Pacific region. However, the charges for processing HKD and USD 
transfers on their side were extremely high and the processing time was very 
slow causing a lot of dissatisfaction among our clients.<br><br>Therefore, we 
decided to switch to our other client bank account in Hong Kong at Fubon Bank. 
Unfortunately, Fubon Bank decided to stop processing HKD and USD deposits one 
day after we displayed the new bank transfer instructions to our clients as the 
incoming transfer amount exceeded their maximum deposit allowance.</blockquote>
<blockquote>As a consequence, we have no choice but to temporarily halt all HKD 
and USD transfers until we have found a financial institution willing and able 
to process our transfers in a fast and affordable manner."</blockquote>
<p>This was not the whole truth. In an
<a href="../codocs/GatecoinBlog171017.pdf" target="_blank">update</a> on 17-Oct-2017, Gatecoin revealed that on 26-Sep, "Alpen Baruch froze 
our account without notice" - something that it had not mentioned in the first 
blog post. There was now a more detailed chronology, stating in part that:</p>
<ul>
	<li>On 15-Sep, "Gatecoin activated our bank accounts held with Alpen Baruch 
	and migrated all HKD and USD transfers processing through those accounts".</li>
	<li>On 19-Sep, "Gatecoin activated the Fubon Bank account in Hong Kong 
	and proceeded to transfer funds originally held at our Hang Seng Bank 
	account."</li>
	<li>On 21-Sep, Fubon froze the account and "despite the high fees and 
	transfer delays we switched our HKD and USD processing back to Alpen 
	Baruch."</li>
	<li>On 26-Sep, "Alpen Baruch froze our 
	account without notice."</li>
	<li>"Our accounts at Alpen Baruch only holds deposits sent by clients 
	between 18-26 September"</li>
	<li>"no reason has been given by Hang Seng or Alpen Baruch Banks for 
	freezing our accounts. Fubon Bank did not inform us of the daily account 
	transfer limit and did not explain why exceeding the limit would force them 
	to freeze our accounts."</li>
</ul>
<p>You will notice that Gatecoin described Alpen Baruch as "a financial 
institution with a presence in Hong Kong and the South Pacific region". We 
assume that Gatecoin did its due diligence before directing client money to this 
firm. Its full 
name is Alpen Baruch Bank Limited (<strong>ABB</strong>), but it does not have 
any banking licence in HK. Despite its German-Swiss sounding name, the only 
place we could find ABB is in the
<a href="https://en.wikipedia.org/wiki/Vanuatu" target="_blank">Republic of 
Vanuatu</a>, an island nation in the South Pacific. On 20-Nov-2017, Webb-site reached 
out on Twitter to ask Gatecoin whether its ABB account was still frozen. A terse 
"Yes" came back. We asked "How much is frozen in Vanuatu?". The reply: "0. The 
accounts were in HK." That's interesting, given that ABB has no banking licence 
here. Gatecoin declined to disclose how much is frozen in ABB.</p>

<a href="https://twitter.com/Gatecoin/status/932433931508387840">
<img class="center" alt="Twitter chat" src="../images/twitter171120b.png"></a>
<p>So we reached out to the HK Monetary Authority. A spokesperson replied by 
e-mail:</p>
<div class="letterbox">
<ul>
	<li>Alpen Baruch Bank Limited is not an Authorized Institution or Local 
	Representative Office approved under the Banking Ordinance (the Ordinance).</li>
	<li>Any person who carries on deposit-taking business in Hong Kong or uses 
	the name "bank" in its description without the authorization of the Monetary 
	Authority is an offence under the Ordinance. We have reported this case to 
	the Police for appropriate follow up.</li>
</ul>
</div>
<p>Perhaps then, ABB had been receiving deposits via other banks in HK, and 
those accounts have also been frozen, leading ABB to freeze Gatecoin's accounts 
at ABB. However, the assertion that Gatecoin's account at Hang Seng Bank was 
frozen without explanation also points to the possibility of an investigation, 
which banks would not be allowed to disclose to Gatecoin. Otherwise it seems odd 
that a firm with the correct licence (a
<a href="https://eservices.customs.gov.hk/MSOS/index" target="_blank">Money 
Service Operator licence</a> from the Customs and Excise Department) would have 
such difficulties.</p>
<div class="regbox" id="update1">
<p><strong>Update, 23-Nov-2017</strong>: Aurelien Menant, CEO of Gatecoin, responded by email 
today, contradicting his firm's Tweets and blaming those on "information 
provided by our marketing guys". Mr 
Menant stated:</p>
	<blockquote>"Our client funds had been transferred back from the ABB 
account way before November 20th and transferred back to a personal account 
under my name that we opened in that purpose."</blockquote>
	<p>So the good news is that the funds are no longer frozen by ABB. The bad 
	news, in our view, is that the funds were transferred to a personal account 
	of a company officer. It is never a good idea for companies to allow funds 
	to be held by their officers, whether as nominee or otherwise and for 
	however long. Banks generally don't allow personal accounts to be used for 
	that purpose either - they only recognise the bank account holder as the 
	beneficial owner of funds.</p>
	<p>Regarding ABB, Mr Menant stated:</p>
	<blockquote>"Regarding the banking and payment partners, we are trying to 
	operate as transparently as possible... Unfortunately, that is impossible 
	here in HK, so we act under the radar, which is no longer possible given our 
	daily volumes. The only players we found that were still open to work with 
	us are third tier ones... Among those, the one that looked decent and 
	potentially reliable was ABB, since they at least have a licence 
	somewhere... this temporary partnership with ABB was an accident..."</blockquote>
	<p>Regarding the now-closed account at Hang Seng Bank, Mr Menant wrote:</p>
	<blockquote>"The bank account we were using with HSB [=Hang Seng Bank] was 
	not under the name of Gatecoin, but Gate Digital Services, therefore there 
	was no mention of our MSO license to them... that account was still declared 
	to the HKCED [=HK Customs and Excise Department] and under their 
	supervision."</blockquote>
	<p>We note that according to annual returns purchased from the Companies 
	Registry, at 24-Jul-2017, Gatecoin was 100% owned by Gate Digital Services 
	Ltd, which at 3-Jul-2017 was 94.58% owned by Mr Menant. The other 
	shareholders are
	<a href="../dbpub/orgdata.asp?p=2093459&amp;s1=stakdn&amp;s2=&amp;x=n">shown 
	here</a>. Mr Menant was the only director of both companies.</p>
	<p>Mr Menant also wrote that the various blog articles removed from
	<a href="https://blog.gatecoin.com/archive" target="_blank">their archive</a> 
	are:</p>
	<blockquote>"not deleted, they are only temporarily unavailable as we 
	are changing our CMS [=Content Managment System]".</blockquote>
</div>
<p>According to the web site of the Reserve Bank of Vanuatu, ABB has a
<a href="http://www.rbv.gov.vu/index.php?option=com_content&amp;view=article&amp;id=316&amp;Itemid=115&amp;lang=en" target="_blank">
deposit-taking licence in Vanuatu</a>, 
and its Director is one "Koh How Keng". ABB has a web site at
<a href="http://www.alpenbaruch.com/en/" target="_blank">alpenbaruch.com</a>. On 
that site, we also found a
<a href="http://alpenbaruch.com/en/chairman_statement.php" target="_blank">
welcome statement</a> from Chairwoman "Maragret" Koh How Keng (<strong>Ms Koh</strong>), 
whose bank apparently has difficulty spelling "Margaret". The site currently lists three officials: CEO Joseph Lee, Chief Operating 
Officer <a href="../dbpub/positions.asp?p=2153047">Eric Leung Hung Kee</a> (<strong>Eric 
Leung</strong>), and "Branch Manager" 
Daniel Cataki. The internet archive shows a name now removed from the 
page, Singaporean
<a href="https://web.archive.org/web/20150808010330/http://alpenbaruch.com:80/en/about.php" target="_blank">
Mr Brendan Yong as "Resident Director"</a>. We have no idea who Joseph Lee is 
or his full name, but he once worked for <a href="../dbpub/articles.asp?p=23947">
Indover Asia Ltd</a>, the HK subsidiary of the now-defunct bank De Indonesische 
Overzeese Bank N.V. which went bust in the global financial crisis in 2008. IOB 
was owned by the Central Bank of Indonesia.</p>
<p>However, Ms Koh has a much more interesting history and present. She was once the Chief Financial Officer 
of <a href="../dbpub/officers.asp?p=12111620">Empire Group Alliance Pte Ltd</a> (<strong>EGA</strong>), an 
affiliated company 
of <a href="../dbpub/articles.asp?p=12112829">Sunshine Empire Pte Ltd</a> (<strong>Sunshine</strong>), which was 
involved in a
<a href="http://www.straitstimes.com/singapore/courts-crime/guilty-as-charged-sunshine-empire-duped-investors-james-phang-wah-2006" target="_blank">
massive Ponzi scheme</a> in Singapore (or as the defence claimed, a multi-level 
marketing scheme). Ms Koh was not charged with any offence. 
As the 2010
<a href="http://www.singaporelaw.sg/sglaw/component/content/article/76-case-law/free-law/sub-courts/11885-public-prosecutor-v-phang-wah-and-others-2010-sgdc-505" target="_blank">
District Court judgment</a> reflects, EGA director
<a href="../dbpub/positions.asp?p=12111621">James Phang Wah</a> (<strong>James 
Phang</strong>), his wife <a href="../dbpub/positions.asp?p=12111624">Neo Kuon Huay</a> and
<a href="../dbpub/positions.asp?p=12111625&amp;hide=N">Jackie Hoo Choon Cheat</a>, 
director of another affiliate, were convicted. Phang and Hoo were jailed for 9 
years and 7 years respectively, while Neo was fined S$60k for a relatively minor role.</p>
<p>Next stop: we check the domain record for alpenbaruch.com. It is was created 
on 19-Dec-2012 and is currently registered to one "Bernyce Tong" with an address 
not in Vanuatu but at a residential unit of Grand Horizon, Tsing Yi, HK. Her 
registrant e-mail address is szethye.bernyce@&lt;domain&gt;. This has relevance. </p>
<p>There is a company in HK called <a href="../dbpub/orgdata.asp?p=1526200">Sze 
Thye Group Ltd</a> (<strong>STG</strong>), which according to the Trade 
Development Council
<a href="http://www.hktdc.com/sourcing/hk_company_directory.htm?companyid=1X07510X&amp;locale=en" target="_blank">
web site</a> is a garment exporter with 1-5 staff, and the contact is "Miss 
Shyn-Leng Tong, Executive Secretary" (<strong>Ms Tong</strong>). But who is really behind it? We purchased 
the annual return from the HK Companies Registry (yes, HK still has a paywall, 
deterring scrutiny). As of 6-Oct-2013, STG was 100% owned by Ms Koh, who was the 
only director. She gave the same residential address as we found for Ms Tong in the 
alpenbaruch.com domain record. The Company Secretary is shown as Tong Shyn Leng, giving a residential address at Rambler 
Crest, Tsing Yi.</p>
<h3>Alpha Returns Group PLC - related party transaction?</h3>
<p>Now, let's return to Eric Leung, the COO of ABB. He was also an INED of
<a href="../dbpub/officers.asp?p=2478663">Alpha Returns Group PLC</a> (<strong>ARG</strong>,
<a href="https://finance.google.com/finance?q=LON%3AARGP" target="_blank">
LON:ARGP</a>), 
a UK AIM-traded company, from 1-Dec-2013 to 30-Apr-2016. A month after he joined 
the board, on 2-Jan-2014, ARG 
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/alpha-returns-group-plc---joint-venture-agreeme---/20140102172436H2520/" target="_blank">announced</a> that it had entered into a 
joint venture agreement with "Miss Tong Shyn Leng", described as "a Singapore entrepreneur with 
interests in a number of privately owned companies", to co-fund Riche Bright 
Group Ltd (<strong>RBG</strong>, BVI) for the sole purpose of buying 
<a href="../dbpub/orgdata.asp?p=50947">MY Securities Ltd</a> (<strong>MYS</strong>), a HK stockbroker.</p>
<p>ARG would inject a purported HK$9m by 31-Jan-2014 for 30% of RBG, and Ms Tong 
would invest HK$17.5m in cash for 70% of RBG. ARG would satisfy the 
consideration by 
issuing 26,668,668 shares at a deemed value of 1p each, although the previous 
market price was 1.75p, and the balance in cash. ARG had the option to purchase 
up to 40% of RBG from Ms Tong at HK$3m per 10% payable in cash or, at the option 
of Ms Tong, in shares at a 50% discount to market. Earlier, on 11-Dec-2013, 
before the deal with ARG, RBG had agreed to buy MYS for HK$6m above its net 
assets subject to a maximum of HK$26m, including 26,668,668 shares of an AIM 
traded company valued at 0.9p per share.</p>
<p>Now, what we didn't mention is that STG was the controlling shareholder of 
ARG. We could not find any record of ARG having disclosed who owned STG, but as 
noted above, the HK annual return shows that it was wholly-owned by Ms Koh, who 
was also its only director. She appears to have shared an address with Ms Tong, 
based on the domain record for alpenbaruch.com and the 2013 annual return of 
STG, and Ms Tong is the Company Secretary of STG, so she reports to Ms Koh. This 
begs the question of whether Ms Tong was really acting as an independent third 
party, or as a nominee for STG or Ms Koh, the ultimate controlling shareholder 
of ARG. Even under the lax
<a href="http://www.londonstockexchange.com/companies-and-advisors/aim/advisers/aim-notices/aimrulesforcompaniesjan16.pdf" target="_blank">
AIM Rules</a>, companies are required to disclose when they are dealing with a 
related party, to consult their NomAd (nominated adviser) and state that the 
non-conflicted directors believe the terms are fair and reasonable. No such 
disclosure was made.</p>
<p>We cannot be certain, but it appears highly likely that Bernyce Tong and Tong 
Shyn Leng are the same person.</p>
<p>The acquisition of MYS by RBG was
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/alpha-returns-group-plc---completion-of-jv-acqu---/20140807141509H7234/" target="_blank">
completed</a> on 7-Aug-2014. The next day, ARG
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/exercise-of-30-per-cent-option-in-riche-bright/20140808143936H7581/" target="_blank">
exercised</a> its option to buy a further 30% of RBG from Ms Tong for HK$9m, 
half in cash and the rest in new shares at 1.9125p each, at a 50% discount to 
market.</p>
<p>On 29-Jan-2015, ARG
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/trading-update/20150129142647H0435/" target="_blank">
announced</a> that since the acquisition, trading at MYS had significantly 
improved with a return to profitability and that unaudited commission income for 
the 9 months to 31-Dec-2014 was over 250% higher than the full year to 
31-Mar-2014. This would be fantastic but for one thing.</p>
<p>On 17-Feb-2015, ARG
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/exercise-of-10-per-cent--option-in-riche-bright/20150217150014H5148/" target="_blank">
exercised</a> its option to buy 10% of RBG from Ms Tong for HK$3m all in shares 
at 1.925p, a 50% discount to market, increasing its stake to 70% of RBG. ARG 
explained that "commission income grew along with an increased customer base".</p>
<p>It wasn't until 14-Sep-2015 that ARG
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/investment-update/20150914125036H1846/" target="_blank">
revealed</a> the main reason for this fantastic growth, namely that the 
commission in the year to 31-Mar-2015 of HK$12.45m included $8.597m from STG, 
still ARG's substantial shareholder, of which $8.25m was after RBG bought MYS, 
including $2.48m in the 3 months to 31-Mar-2015 and, implicitly, $5.77m in the 
2014 results of ARG. None of this had been disclosed as related party 
transactions in ARG's 2014 audited accounts, nor was it disclosed in the 2015 
audited accounts. ARG also botched the accounting by failing to deduct the 
goodwill attributable to the minority interest in RBG, leading to an 
overstatement of shareholders' equity and a restatement in 2015. The auditors in 
both years were <a href="../dbpub/orgdata.asp?p=3537406">Welbeck Associates Ltd</a>.</p>
<p>Meanwhile on 9-Jul-2015, MYS was renamed "Riche Bright Securities Limited". 
On 2-Nov-2015, ARG
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/conditionla-disposal/20151102145944H3346/" target="_blank">
announced</a> the conditional sale by RBG of MYS to 
<a href="../dbpub/orgdata.asp?p=2362255">Hzone Holdings Ltd</a> for 
HK$11m above net assets. The deal
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/completion-of-disposal/20160531141509H6805/" target="_blank">
completed</a> on 31-May-2016. On 4-Jul-2016, RBG
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/riche-bright-minority-share-repurchase/20160704121346H5207/" target="_blank">
repurchased</a> the 30% of itself once held by Ms Tong, although by then she 
only held 13% and there were two other, unnamed shareholders.</p>
<h3>Another undisclosed Related Party Transaction</h3>
<p>But RBG wasn't the first probable related party transaction by ARG. Let's jump back 
to when STG took over ARG.</p>
<p>ARG was an AIM shell called "Digital Learning Marketplace PLC", when STG came 
along to reactivate it in late 2012. In a restructuring approved by shareholders 
on 3-Dec-2012, GBP250k of 0% loan notes convertible at 1p per share were issued.&nbsp; 
The subscribers were not identified at the time, but 3 new directors were 
appointed at the same EGM, including <a href="../dbpub/positions.asp?p=15504">
Quattro Chan Cheong Yee</a>, who featured in our 2015 article
<a href="trouble2015.asp">Bubbles and troubles in Hong Kong</a>. 
Another director appointed was <a href="../dbpub/positions.asp?p=12112132">
Gregory Collier</a> (<strong>Mr Collier</strong>).</p>
<p>The 
new controller was not revealed until 25-Feb-2013, when the loan notes were 
converted and ARG (then Shidu Capital plc)
<a href="https://www.investegate.co.uk/shidu-capital-plc/gnw/shidu-capital-plc---issue-of-equity/20130225094204H0728/" target="_blank">
announced</a> that STG owned 62.08% of the company, without saying who owned STG. Interestingly another 
shareholder who apparently converted GBP40k of loans to own 8.87% of ARG was 
Brendan Yong Weng Chun, presumably the same Brendan Yong who was once named as 
Resident Director of ABB in Vanuatu. And
<a href="https://www.facebook.com/brendanyong" target="_blank">here he is on 
Facebook</a>.</p>
<p>On 15-Aug-2013, ARG announced a huge placement of 340m shares at 0.15p per 
share, an 85% discount to the market price. The placees were shareholders who 
already owned 29.995m shares, or 62.0% of ARG, of which STG owned 28m shares or 
57.8%. STG took up 310m shares. Non-placee shareholders were offered 10 new 
shares for every existing share at 0.15p per share, an 85% discount to the 
market price. The offer
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/statement-re-result-of-open-offer-and-directors---/20130904070029H7012/" target="_blank">
closed</a> on 4-Sep-2013, leaving STG with 82.1% of ARG. The whole exercise 
raised GBP0.54m before expenses.</p>
<p>On 22-Oct-2013, ARG
<a href="https://www.investegate.co.uk/alpha-returns-group-plc/gnw/statement-re-first-investment/20131022070013H7089/" target="_blank">
announced</a> its first investment since STG took control. It was a "partial 
assignment" of a transaction that had already been entered into by
<a href="../dbpub/orgdata.asp?p=1557922">Wupoxi Group Ltd</a> (<strong>Wupoxi</strong>), 
to purchase 37.5% of <a href="../dbpub/orgdata.asp?p=12587869">Telistar 
Solutions Pte. Ltd.</a>, an unquoted Singapore IT service solutions provider, 
for S$1,025,000 (GBP 511,500) payable over 2 years. The vendor(s) to Wupoxi 
was/were not disclosed.</p>
<p>So, who owns Wupoxi? It is registered in HK, so we purchased the annual 
return dated 14-Jan-2013. It was a wholly-owned subsidiary of STG, the 
controlling shareholder of ARG. Its only director was Ms Koh. So this appears to 
be another undisclosed related party transaction by ARG. The directors of ARG 
either knew or should have known who owned Wupoxi, given that the 
information was publicly available. On 28-Feb-2014, ARG
<a href="https://www.investegate.co.uk/ArticlePrint.aspx?id=20140228095456H5534" target="_blank">
announced</a> the acquisition of a further 15% of Telistar for new shares worth 
GBP227,000, without saying who the vendor was.</p>
<h3>New Trend Lifestyle Group PLC</h3>
<p>We mentioned that one of the new directors associated with STG's takeover of 
ARG was Mr Collier. He left ARG on 31-Jul-2014. On 1-Jun-2016, he was appointed 
as a director of <a href="../dbpub/orgdata.asp?p=4391261">New Trend Lifestyle 
Group PLC</a> (NTLG,
<a href="https://finance.google.com/finance?q=LON%3ANTLG" target="_blank">
LON:NTLG</a>), another AIM-traded company which was admitted to AIM on 
28-Jun-2012 following a placing of 12m shares at 8p per share. NTLG is in the 
superstition business - its Singapore subsidiary sells Feng Shui advice and 
related products. Upon admission to AIM, NTLG was 68.93% owned by its CEO, 
"Grand Master" Mr <a href="../dbpub/natperson.asp?p=12112129">Hillary Phang Song 
Hua</a> (<strong>Hillary Phang</strong>), who founded the business in 2005. He has gradually reduced his shareholding 
in NTLG, and on 
24-Apr-2017, he
<a href="https://www.investegate.co.uk/new-trend-lifestyle/rns/director-s-dealing/201704241406451495D/" target="_blank">
sold</a> 30m shares (24%) at 0.65p each to Bliss Season Holdings Ltd, which is 
owned by none other than the ubiquitous Ms Tong.</p>
<p>We 
have been unable to determine with certainty whether Hillary Phang is related to the convicted fraudster 
James Phang of Sunshine Empire. We note that the previous name of Sunshine 
Empire until 8-Jan-2007 was "NiuTrend International Pte. Ltd.", probably not a 
homophonic coincidence with "New Trend", and this could be a case of one Phang leading to 
another.&nbsp;</p>
<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12111564">Alpen Baruch Bank Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2478663">ALPHA RETURNS GROUP PLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4391261">CONDUITY CAPITAL PLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12111620">Empire Group Alliance Pte. Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2105052">Gatecoin Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2362255">Hzone Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=23947">Indover Asia Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=50947">RICHE BRIGHT SECURITIES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12112829">Sunshine Empire Pte. Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1526200">Sze Thye Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12587869">Telistar Solutions Pte. Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3537406">WELBECK ASSOCIATES LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1557922">Wupoxi Group Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=15504">Chan, Quattro Cheong Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12112132">Collier, Gregory</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12111625">Hoo, Jackie Choon Cheat</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12111219">Koh, Margaret How Keng</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2153047">Leung, Eric Hung Kee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12111624">Neo, Kuon Huay</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12112129">Phang, Hillary Song Hua</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12111621">Phang, James Wah</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12111221">Tong, Shyn Leng</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=12587511">Yong, Brendan Weng Chun</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=120">Crypto-tokens</a></li>
				
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