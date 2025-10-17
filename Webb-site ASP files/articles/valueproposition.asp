
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

<script type="text/javascript">document.title="Building a Value Proposition for HK";</script>

	<div class="summary">HK Chief Executive Donald Tsang recently convened an Economic Summit of 33 people, which spawned 4 focus groups, including one on financial services, which in turn produced 3 working groups, one of which, headed by HKEx government-appointed director and Chairman Ronald Arculli, has sought submissions on the markets. This is our submission.</div>

<h2 class="center">Building a Value Proposition for HK<br>
<span class="headlinedate">4 October 2006</span></h2>
<p>Dear Ron,</p>
<p>Thank you for your
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2006/0609252news.htm">
letter</a> of 22-Sep-06, received on 25-Sep-06, inviting views for the government-appointed Working Group on cash, derivatives, clearing and listing 
under the
<a target="_blank" href="http://www.info.gov.hk/info/econ_summit/eng/fourfocus2.html">
Focus Group on Financial Services</a> under the
<a target="_blank" href="http://www.info.gov.hk/info/econ_summit/eng/">Economic 
Summit on China's 11th Five-Year Plan and the Development of Hong Kong</a>. I 
don't know who is on your working group, because it hasn't been disclosed, but I 
will spend time on this submission in the hope that it includes a fair measure 
of investor representatives, and as ever, I offer my time to serve in moving HK 
forward.</p>
<p>As you requested submissions within 4 days, somewhat faster than the typical 
consultation, I am already past your deadline. So I will try to keep these 
remarks broad. I have expressed many of these views in more detail in the past, 
and you can easily find the relevant articles by using the search box on the <i>
Webb-site.com</i> home page, or from the links in the online version of this 
letter.</p>
<p>The key thing that HK policy makers need to bear in mind on our financial 
sector is that a 
crucial part of mainland China's epic shift from centrally planned economy 
towards market economy is the gradual lifting of capital controls, which has 
been underway for some years. Within a few years' time, the RMB will become a 
freely convertible currency and take its place alongside the major economic 
currencies of the world, and there will be open competition between Hong Kong 
and other financial markets in China.</p>
<p>What then will be Hong Kong's competitive position? This depends very much on 
the action or inaction of our policy makers in recent years, and the actions 
they may take in the remaining time before open competition. Having put so many 
proposals on ice for so long, they had better get their skates on.</p>
<p>In the past, mainland companies have chosen their equity capital markets 
largely based on non-valuation factors, such as political fiat, the wish for 
convertible foreign currency, private companies obtaining out-and-back tax 
breaks as &quot;foreign&quot; investors, or the simple matter that the CSRC has 
periodically suspended IPOs, making the domestic markets unavailable, and even 
when they were open, authorities ran a queuing system prioritised in 
favour of state-owned enterprises.</p>
<p>In the future, however, there will be fewer mammoth SOE listings, and more 
private sector listings where price is key. Mainland companies are more likely to choose their market based on value considerations, the most 
important of which will be </p>
<p style="text-align: center"><b>&quot;where can I get the highest price for the 
securities I am issuing&quot;? </b></p>
<p>The answer comes in in part from the <b>legislative</b>, <b>
regulatory</b>, <b>judicial</b> and <b>fiscal</b> frameworks in the markets 
available, because all of these have an impact on the valuation of securities, 
i.e. the prices investors are willing to pay. Imagine, in a thought experiment, that an investor can buy 
the shares of two identical companies, Company A and Company B, with identical 
businesses and management. Company A is listed in Market A, and Company B is 
listed in Market B. Then:</p>
<ul>
	<li>If Market A requires <a target="_blank" href="showusthemoney.asp">more frequent financial reporting</a> (e.g. quarterly) 
	while Market B does not, then the investor will pay more for shares of 
	Company A than Company B, because he can be more confident of the current 
	financial state of the company. Greater certainty equates to lower risk, and 
	lower risk equates to higher prices. He can also be more confident that the 
	gap between what he knows and what insiders know is reduced, and that 
	reduces the potential for insider dealing against his interests.</li>
	<li>Similarly, if Market A requires faster financial reporting, then the 
	investor will be confident of getting information from Company A before he 
	gets it from Company B. Again, greater certainty equates to lower risk and 
	lower risk equates to higher prices.</li>
	<li>If Market A has <a target="_blank" href="PERLsubs.asp">statutory backing for Listing Rules</a>, and a regulator 
	empowered to fine directors for breaking them, or to bring criminal 
	prosecutions in the courts, then there is a greater deterrent to breach, so 
	they are less likely to break them. That reduces the expected loss from bad 
	governance, so again, if market B does not have such a deterrent, then the 
	investor will pay more for Company A than Company B.</li>
	<li>If Market A allows independent shareholders alone to 
	<a target="_blank" href="boardgames.asp">elect independent 
	directors</a>, while Market B allows controlling shareholders to vote on the 
	elections, then investors in Company A will be able to hold INEDs 
	accountable, giving investors greater confidence that the INEDs will act in 
	the interests of the company and not favour the interests of the controlling 
	shareholder. Investors will pay more for Company A than Company B, for the 
	greater likelihood that INEDs will act to protect their interests.</li>
	<li>If Market B allows directors who are also controlling shareholders to 
	<a target="_blank" href="tanrich1.asp">escalate their pay</a> without any approval from minority shareholders, while 
	Market A <a target="_blank" href="rulesroundup.asp#Pay">requires approval</a> 
	(beyond a certain rate of increase) for what amounts to a connected transaction or 
	preferential dividend to the director, then investors will pay more for 
	Company A than Company B, because there is a lower risk of Company A 
	overpaying its directors and thereby expropriating shareholder value.</li>
	<li>If Market A allows investors to overcome the prohibitive costs of legal 
	action by allowing cases to be admitted to court as actions on behalf of the 
	entire affected class of investors (class actions), and allows lawyers to 
	negotiate fees structures, including contingent fees, on a free market 
	basis, then there will be another deterrent to defrauding investors, and 
	that again will reduce the incidence of it. A properly designed class-action 
	system would retain the best of the English Law tradition, namely that the 
	loser pays the costs of the other side, thereby making frivolous, vexatious 
	or nuisance actions unattractive. A lawyer working on a contingent basis and 
	being liable for the other side's costs (in place of his client) would only 
	take on a case if he was very confident of its merits. Similarly, less-well 
	funded law firms may need to buy insurance to cover the risk of losing, and 
	the premium would reflect the firm's success rate. I call this system 
	&quot;SCALP&quot;, an acronym for &quot;Shareholder Class Action, Loser Pays&quot;. The 
	deterrent effect of this system in Market A would reduce the incidence of 
	fraud and increase the price investors would pay for Company A.</li>
	<li>If Market A gives investors a statutory right for investors to rely on 
	auditors' reports until the next one comes out, and thereby have the right 
	to sue them for negligence, then the auditors will be incentivised to do a 
	more thorough job and detect problems sooner. The greater scrutiny would 
	deter and reduce fraud losses, because crooks would know that they are more 
	likely to be discovered. So an investor would pay more for Company A.</li>
	<li>If Market A has a more reliable judiciary than market B, then an 
	investor will pay more for Company A, because he will be less concerned 
	about getting unfair treatment in any dispute. However, to some extent 
	Market B can overcome this by allowing listings of companies incorporated in 
	market A or in other jurisdictions, in effect outsourcing the dispute 
	resolution.</li>
	<li>If Market A has lower taxes on transactions, such as stamp duty, or 
	lower transaction costs, then investors will pay more for shares in Company 
	A than Company B, because what matters to the investor is the total cost of 
	the investment, not who receives it.</li>
</ul>
<p>Currently, HK scores highly in only one of these areas, namely its strong and 
independent judiciary with hundreds of years of English law case history behind it. It 
scores badly on the others, including the frequency and speed of reporting, the 
lack of statutory backing and meaningful penalties for breaking the Listing 
Rules, the lack of class action rights, the lack of contingent legal fees, 
unaccountable INEDs, unaccountable auditors, and stamp duty.</p>
<p>Main Board companies slide out their annual results in up to 4 months, while 
other countries require reports in 60 days. The mainland markets have required 
quarterly reports since 2003. Singapore requires them within 45 days.</p>
<p>There are no limits on the rate of increase in directors' pay, and since the 
controlling shareholders also get to vote on INED elections, the INEDs are often 
just golfing buddies and school friends, and the boards act like mutual 
appreciation clubs. As an investor, I attach no value to the INEDs on most of 
the boards of companies I invest in. This would change if INEDs were 
accountable, because boards would normally only propose candidates who are acceptable to 
independent shareholders and willing to be held accountable. Failing that, 
investors could nominate other candidates. I know this first-hand, as HKEx is 
one of the few HK-listed companies where (some) INEDs are accountable at the 
ballot box, due to the absence of a controlling shareholder, and where I was 
able to get elected on an investor nomination in 2003, displacing an incumbent.</p>
<h3>Don't rely on the accounts</h3>
<p>In Jul-06, a brave individual investor attempted to bring a court action 
against Ernst &amp; Young, the auditors of a collapsed HK-listed company,
<a target="_blank" href="../dbpub/articles.asp?p=13651">Gold Wo International Holdings Ltd</a>. The 
Court of First Instance had no choice but to quote the House of Lords case
<a target="_blank" href="http://oxcheps.new.ox.ac.uk/casebook/Resources/CAPARO_1.pdf">
<i>Caparo Industries plc v Dickman and Ors</i> (1990)</a>, in which the auditors 
were held not to owe a duty of care to shareholders of the company, let alone to 
future shareholders who may buy in the market. The HK case was accordingly 
&quot;doomed to fail&quot; and was struck out in its entirety.</p>
<p>It is frankly ridiculous that no investor can rely on the audit report in the 
annual report when deciding to invest, or to remain invested. Only legislation 
can change this, as Deputy Judge Ian Carlson said:</p>
<blockquote>
	<p>&quot;What [the plaintiff] 
seeks is the sort of consumer protection which is available in some of the state 
jurisdictions of the United States...That position has not been arrived at in 
Hong Kong.&quot;</p>
</blockquote>
<h3>Don't rely on the prospectus</h3>
<p>On a similar theme, on Friday 22-Sep-06 the SFC
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/consult/06/conclusions_prospectus_060922.pdf">
announced</a> that it had abandoned a proposal (Proposal 9 in the
<a target="_blank" href="http://www.sfc.hk/sfcConsultation/EN/sfcConsultFileServlet?name=prospectusregime&amp;type=1&amp;docno=1">Consultation Paper</a> on Possible Reforms to the Prospectus Regime) to allow secondary 
market purchasers to bring claims for fraud in IPO prospectuses. Again, the 
entire price discovery process relies on the truth of the prospectus, and 
subscribers have a right of recourse (subject to the limitation below), but 
anyone who purchases shares in the market from that subscriber, even on the 
first day of trading, is on their own, as if the prospectus did not exist. The 
subscriber who sells on day one is of course free and clear, and will not claim 
if the issuer subsequently collapses in a smoking heap of fraud, while the 
secondary buyer can't sue the subscriber because no representation was made by 
him in the market when he sold. So what are investors to rely on?</p>
<p>Another SFC proposal that was abandoned was Proposal 10, to remove the 
requirement for subscribers to prove that they actually read and relied on the 
prospectus when making a claim for fraud. Now, how many people can prove what 
they read yesterday, let alone what they read months or years ago? Do they have 
any witnesses? Of course not. Again, the relevant fact is that the IPO was 
priced on the basis of the prospectus and nothing else, and enough people read 
enough of it for the market to set that price. If it then turns out to be 
fraudulent, no victim should have to prove that they themselves read it. It 
should be enough to show that if the document had been known to be false, then 
the shares would not have fetched the price they did in the primary or secondary 
market. The SFC could not find any such &quot;prove that you read it&quot; requirement in 
Australia, Singapore or the UK.</p>
<p>Of course, all of this is rather theoretical in the absence of a class action 
system, because no IPO investor alone would find it worth the cost of bringing a 
case even if they had (a) subscribed and held the stock since the IPO and (b) 
could produce a witness to prove that they read the prospectus before 
subscribing. To my knowledge, nobody has ever brought such a case in HK.</p>
<h3>Brand HK</h3>
<p>There are some who believe that the path to HK's future success as a 
financial centre lies in deregulation, scrapping rules and diluting standards to 
win business. They are flat-out wrong. If we simply had a free-for-all in our 
securities markets, then we would have no competitive advantage over a flea 
market, a virtual exchange like eBay or any exchange which simply matches buyers 
and sellers. We could end up as the dodge city of China while our competitors 
take the high road. Where's the value proposition in that?</p>
<p>If we build a trustworthy and well-designed legislative, regulatory, judicial 
and fiscal framework, then Hong Kong can create a virtuous circle in which 
companies are willing to submit themselves to that framework in return for 
higher prices for their debt and equity, which investors will pay because they 
have greater certainty through improved disclosure, and reduced expected losses 
from bad governance or fraud. Build it, and they will come. We should reach for 
the sky rather than race to the bottom, as this is the only way to add value and 
differentiate Hong Kong. We <u>must</u> build a value proposition.</p>
<p>In his final budget speech of 7-Mar-01, Donald Tsang, now our Chief 
Executive, said:</p>
<blockquote>
	<p>&quot;Our aim is to establish Hong Kong as a paragon of corporate governance, 
	ensuring that those investing in Hong Kong are afforded the best 
	protection...&quot;</p>
</blockquote>
<p>Since then, far too many of the initiatives I have referred to above, and 
others besides, such as scripless registration, have 
been proposed by authorities and then either withdrawn, diluted or iced in 
recent years. Last week, a newspaper carried a &quot;kite-flying&quot;
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=28244&amp;con_type=1&amp;d_str=20060928&amp;sear_year=2006">
story</a> that your focus group had recommended that the SFC be stripped of its 
dual-filing role for new listings, leaving the Stock Exchange to vet 
prospectuses on its own. That is exactly the opposite of what the 
Government-appointed
<a target="_blank" href="http://www.info.gov.hk/gia/general/200303/21/0321286.htm">
Expert Group</a> recommended on 21-Mar-03, which was to get HKEx out of 
regulation and have a single statutory securities regulator, SEC-style, who in 
turn would be accountable to the public. Let HKEx focus on business, and let the 
regulator regulate. As you know, the Government briefly adopted this proposal 
before performing a U-turn under pressure from vested interests two weeks later.</p>
<p>While I am on the subject of regulators, there is a strong case for combining 
the overlapping regulators of the SFC, HKMA, Insurance Commissioner and MPFA 
into a single financial services regulator which has a consistent approach to 
the licensing, distribution and selling of financial products. The current 
situation is a mish-mash of overlapping responsibilities and uneven playing 
fields.</p>
<h3>Listing of overseas companies</h3>
<p>Although HK's economy is inextricably linked to the mainland, as it always 
has been, that does not mean we should ignore the potential for risk 
diversification in the economy by cultivating business from the rest of the 
region. I am in favour of allowing companies from other domiciles (besides the 
existing ones of HK, PRC, Bermuda, Cayman Islands) to list here, but not on any 
terms. If investors are to attach any value to our &quot;brand&quot;, then they need to be able to take 
for granted a certain minimum set of standards that will apply to all companies 
listed here. That is part of our value proposition, part of the &quot;Trustworthy 
Framework&quot;. Otherwise, each investor would have to do his own due diligence on 
the applicable law and constitutional documents of each issuer, which is so time 
consuming that they will just discount for risk instead. So we need (a) the 
constitutional documents to be brought up at least to a common standard which 
applies to all HK-listed companies; and (b) a deed of undertaking that the 
issuer and its directors submit to the jurisdiction of Hong Kong's courts. 
Furthermore, in view of the practical difficulties of cross-border regulatory 
reach and enforcement, the jurisdiction of incorporation should be a
<a target="_blank" href="http://www.iosco.org/library/index.cfm?section=mou_siglist">
signatory to the multi-lateral IOSCO MoU</a> on co-operation.</p>
<h3>Other challenges</h3>
<p>Beyond the impact of the Trustworthy Framework on Hong Kong's value 
proposition, there are 
other factors, such as the degree of expertise in the analytical and investment 
community. For example, many Chinese internet companies have chosen to list on 
Nasdaq, because they can get a higher price there. They are willing to sign up 
to the higher US regulatory requirements in order to get that price, and part of 
it is attributable to the greater pool of internet and technology analysts in 
the USA.</p>
<p>So one of Hong Kong's challenges is retaining and building its pool of 
professionals, and part of this in turn comes down to cost of office and 
residential accommodation, availability of private schools, and quality of life, 
notably including air pollution. If we are to attract foreign as well as retain 
home-grown expertise, then we need to improve on all these fronts. Otherwise, it 
may simply be cheaper and more pleasant for analysts and asset managers to base themselves 
elsewhere. Given that most of the future issuers in our market will be from outside Hong Kong, 
it matters little to the asset managers whether they live here or elsewhere.</p>
<p>Of course, these issues go beyond the scope of your working group, so I will 
only briefly touch on them in this paragraph. The Government needs to take a 
holistic approach to economic reforms. In the case of accommodation costs, this 
can only be addressed by busting the property cartel, and that can only happen 
if there is reform to the leasehold land premium system. A move towards higher 
land rents and lower premia (which are just capitalised land rents) on new 
leases and lease modifications would open the market to greater competition and 
reduce the margins of developers, making property more affordable in the long 
run. As for air pollution, there are a number of fiscal levers that the 
Government has failed to pull, such as charging diesel duty on franchised buses, 
raising diesel duty to at least the same level as petrol, and electronic road 
pricing. As Donald Tsang put it in that final budget speech of 7-Mar-01:</p>
<blockquote>
	<p>&quot;why do we continue to exempt franchised buses from duty on diesel and 
	indirectly undermine the competitiveness of railways which are more 
	environmentally friendly?...we must as a community understand that if our 
	environmental sores are left to fester, inaction will, over time, result in 
	far worse pain and far greater costs than will an early cure. Most of the 
	world seems to have woken up to that fact. When will Hong Kong?&quot;</p>
</blockquote>
<p>Over 5 years later, having gone on to be Chief Secretary and now Chief 
Executive, it is about time he answered his own question.</p>
<h3>The Futures</h3>
<p>Turning briefly to the derivatives markets, I do believe that, while HK lacks 
the physical commodities trading that would allow us to run physically-settled 
futures or options markets, HK should be opening its market platform to a much 
broader range of cash-settled products. In principle, as long as there is a 
reliable reference price for the underlying item, allowing margin requirements 
and settlement prices to be determined, then a futures market can be made in it.</p>
<p>The futures market need not be restricted to traditional commodities, but 
could also include &quot;event futures&quot; - binary contracts which trade until they 
settle at either 100 or zero based on events, with 100% margin on the purchase 
price. Some may call that gambling, but in an efficient market, all current 
information is reflected in prices and any investment is a &quot;gamble&quot; on whether 
the investment value will go up or down, based on the outcome of future events. 
The only difference is the amount of uncertainty in the outcome. Derivative 
warrants, for example, already allow investors to lose their entire investment 
in a fixed space of time, and with their unlimited upside, warrants are more 
likely to attract gamblers than a binary futures contract, so no moral case 
should be made against the latter.</p>
<p>Although most events (such as sports and elections) would be on known 
timeframes, it is not actually necessary to know when the event will happen - 
just let the market take care of that. Some contracts, such as a binary contract which 
settles at 100 if and when a person walks on the Moon again, could run for years. As 
long as fair rates of interest were paid on the margin funds, people would be 
willing to buy and sell the futures. Other binary contracts could have much 
sorter timeframes - for example, paying out 100 if the Hang Seng Index rises 
today.</p>
<p>In other, more terrestrial examples, we could run &quot;smog futures&quot; on the 
average air pollution reading in a given future day or month, or the amount of 
rainfall recorded on a given day, allowing outdoor event organisers to buy 
insurance by going long on rainfall contracts. The &quot;reference prices&quot; are 
independent rainfall measurements which could be provided by the HK Observatory.</p>
<p>Contracts for differences, which would give the holder identical 
economic exposure to stocks but without ownership rights or stamp duty costs, are 
another form of derivative which could be implemented. In essence, they are 
rolling futures contracts which are dividend-adjusted and interest-adjusted. In Singapore you 
can already buy CFDs on leading Hong Kong stocks through
<a href="http://www.igmarkets.com.sg" target="_blank">IGmarkets</a>, but if you log in and do so from Hong Kong then you will be 
committing a criminal offence under the Gambling Ordinance.</p>
<p>HK has fallen way behind in the evolution of risk-transfer markets. The Government should move to liberalise 
the market by licensing 
financial betting exchanges and bookmakers, subject to sensible capital adequacy 
supervision (so that bets will be honoured), and taxing their profits at the 
usual rate of profits tax.</p>
<p>Yours sincerely,</p>
<p>David Webb</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=13651">GOLD WO INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=96">Air pollution</a></li>
				
				<li><a href="/dbpub/subject.asp?c=97">Auditor liability</a></li>
				
				<li><a href="/dbpub/subject.asp?c=111">Class action rights</a></li>
				
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
				<li><a href="/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=55">Gambling</a></li>
				
				<li><a href="/dbpub/subject.asp?c=145">Government policy - general</a></li>
				
				<li><a href="/dbpub/subject.asp?c=154">Independent Non-Executive Directors</a></li>
				
				<li><a href="/dbpub/subject.asp?c=159">Land leases</a></li>
				
				<li><a href="/dbpub/subject.asp?c=175">Prospectus liability</a></li>
				
				<li><a href="/dbpub/subject.asp?c=177">Quarterly financial reporting</a></li>
				
				<li><a href="/dbpub/subject.asp?c=190">Statutory backing of Listing Rules</a></li>
				
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