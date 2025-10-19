
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="/templates/main.css">
<title>Webb-site Reports</title>
<style type="text/css">
.auto-style1 {
	text-decoration: underline;
}
</style>
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

<script type="text/javascript">document.title="Why HK has no retail bond market";</script>

	<div class="summary">The HK Government's Pilot Bond Grant Scheme is needless corporate welfare and deflects from the real problem: by protecting bank profits from competition for funding and effectively excluding retail investors, the Government and HKMA are preventing a liquid, exchange-traded bond market from emerging. We explain what they need to do instead.</div>

<h2 class="center">Why HK has no retail bond market<br>
<span class="headlinedate">13 May 2018</span></h2>

<p>One of the stupidest things in the HK Government's 2018-19 budget has now 
been
launched by the Hong Kong Monetary Authority: the
<a href="http://www.hkma.gov.hk/eng/key-information/press-releases/2018/20180510-3.shtml" target="_blank">Pilot Bond Grant Scheme</a> (<strong>PBGS</strong>). 
Yes, if you and your affiliated companies have not issued bonds (of any 
currency) in HK in the last 5 years, then the Government will now pay half of 
your issue costs, up to HK$2.5m, or $1.25m if you don't have a credit rating. 
And after you've done that, you can do it again, because the Government will 
subsidise up to 2 bond issues for each group. PBGS appears to be an almost exact 
copy of Singapore's
<a href="https://www.hoganlovells.com/en/publications/mas-asian-bond-grant-scheme" target="_blank">
Asian Bond Grant Scheme</a>, but one intervention doesn't justify another.</p>
<p>This will not improve Hong Kong's image as a financial centre, It will do the 
opposite, demonstrating the increasing tendency of the HK Government to intervene in free 
markets and manipulate the economy. Corporate welfare is never right - welfare 
should be reserved for poor people, not for companies. Whatever next - will the 
HK Government start subsidising Initial Public Offerings of shares on the stock 
market? Will they do so if Singapore does?</p>
<p>Perhaps the Government has been asking itself why there is no liquid retail 
bond market in Hong Kong. They should look in the mirror - it's their own fault. 
There is certainly no shortage of bond issues, many of which are listed on the 
Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>) owned by
<a href="/dbpub/articles.asp?p=9643">Hong Kong Exchanges 
and Clearing Ltd</a> (<strong>HKEX</strong>, 0388), but these bonds hardly ever 
trade on the exchange. Bonds are traded by banks in the so-called "Over The 
Counter" (<strong>OTC</strong>) market, which in practice means by phone or 
electronically.</p>
<p>There are two main reasons for the lack of retail access to the bond 
market, but they are both manifestations of the same vested interests.</p>
<h3>Best execution</h3>
<p>First, unlike stockbrokers on the stock exchange, there is practically 
no "best execution" obligation on banks to seek out the best bond price for a 
customer who wishes to sell or buy bonds. The SFC and HKMA pay lip-service to 
best execution (see the recent
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/circular/openAppendix?refNo=18EC7&amp;appendix=0" target="_blank">
Report on the Thematic Review of Best Execution</a> and
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/circular/doc?refNo=18EC7" target="_blank">
circular to licensed corporations</a> asking them to try harder), but the 
reality is that when there is no visible traded market, no public transaction 
reports, and any (rare) published quotes are non-binding, banks instead 
contractually "carve out" the obligation and tell customers that they are on 
their own. They tell customers that the price the bank offers is not necessarily 
the best price they could get if they shop around, but then there will be fees 
for moving the bonds to another bank or broker.</p>
<p>So if you subscribe to say, the latest PRC bond through a bank, then 
they will keep it for you, and you are pretty much stuck with it until 
redemption, unless you are willing to accept the price the bank offers you, 
which is a price much worse than the interbank market, with a wide bid-offer 
spread. Imagine instead walking into a bank and saying "I want to sell my 
shares in blue-chip company X". The bank cannot say "well we'll offer you $10 
per share for those, or you can buy some more from us for $11 per share". They 
must go to the market and get you the best price.</p>
<p>How bad is it? Take for example, the RMB4.3bn 2-year PRC RMB bond maturing 
4-Dec-2019 (stock code 86650), which has
<a href="/dbpub/hpu.asp?i=25573" target="_blank">never 
traded</a> on SEHK. And it's not just RMB bonds - for example, the HK$4.8bn 
HKSAR Government 10-year bond maturing 17-Jan-2023 (stock code 4215) has
<a href="/dbpub/hpu.asp?i=10566" target="_blank">trades 
reported</a> to SEHK on just 6 days in over 5 years since issue, with turnover 
totalling just HK$13.82m, or less than 0.3% of the issue in over 5 years.</p>
<p>The HKMA's
<a href="http://www.hkma.gov.hk/eng/key-functions/international-financial-centre/infrastructure/cmu.shtml" target="_blank">
Central Moneymarkets Unit</a> (<strong>CMU</strong>) has a "<a href="https://www.cmu.org.hk" target="_blank">Bond 
Price Bulletin</a>" where banks and brokers can indicate non-binding bids or 
offers, but if we take that HKSARG bond (CMU code <span id="hlbl_cmuinsno">
<font style="font-size: 1em;">10GB2301) as an example, there is
<a href="https://www.cmu.org.hk/cmupbb_ws/eng/page/wmp0100/wmp010001.aspx?htxt_insno=10GB2301&amp;hddl_remainyr=--&amp;hddl_matyr=&amp;caller=quicksearch" target="_blank">
currently</a> only 1 bid price from a bank, and no offer price. Only banks can 
post quotes on the bulletin - you can't post your own, and if banks have no 
stock then they can't offer it. It is not a market, just a bulletin board.</font></span></p>
<h3>Clearing and settlement</h3>
<p>The second impediment to retail investor access to the bond market is that 
most bonds issued in HK are deposited into the <span lang="x-none"></span>HKMA's CMU, where OTC trades 
are settled. To trade bonds on SEHK, you have to <span class="auto-style1">first</span> 
get them moved into the Central Clearing and Automated Settlement System (<strong>CCASS</strong>) 
operated by Hong Kong Securities Clearing Co Ltd (<strong>HKSCC</strong>) which 
is also owned by HKEX. There are 2 ways to hold securities in CCASS, either as a 
direct
<a href="http://www.hkex.com.hk/Services/Settlement-and-Depository/Investor-Account-Services?sc_lang=en" target="_blank">
Investor Participant</a>, or via a broker. Either way, the bonds would then by 
held by HKSCC as a "recognised dealer" (like a bank) in CMU. Unlike CCASS, the 
CMU does not allow direct investor accounts, so you have to hold bonds via a 
recognised dealer in CMU.</p>
<p>Your bank would charge fees for the transfer from a recognised dealer to a 
CCASS account, and it would take time. Without a seamless interface between the 
OTC bond market and SEHK, the pool of available bonds stays in the CMU and can 
only be traded by banks. What we need is an obligation on banks (recognised 
dealers) to post all retail bids and offers to an exchange, and a system for 
SEHK (if that is the exchange) to accept those orders based on a CMU 
confirmation that the bank holds the bonds (for sell orders) or has the funds 
(for buy orders).</p>
<p>You might well wonder why regulators from two different jurisdictions 
were able to work out a "Stock Connect" scheme to connect stock exchanges in 
mainland China and HK and even a subsequent "<a href="http://www.hkex.com.hk/news/news-release/2017/170703news?sc_lang=en" target="_blank">Bond 
Connect</a>" scheme to connect the two markets, but have failed over decades to 
efficiently connect the OTC bond market to SEHK. Connecting the systems 
efficiently really can't be that difficult, with no cross-border issues or 
capital controls to work out.</p>
<p>Of course, running the bond exchange through SEHK isn't the only option 
- the HKMA could instead set up a dedicated bond exchange at the CMU, with live, 
competing, binding bids and offers and trade reporting, and require the banks to 
run all client orders through it, vastly improving market transparency and 
efficiency. Tenders could be invited for the supply of software and systems for 
the platform - no need to reinvent a basic wheel. With a proper exchange 
running, best execution would then be unavoidable. This approach has the 
advantage that it wouldn't expand HKEX's rent-seeking monopoly any further, and 
the bond exchange could be run like HKSCC originally was until it was gifted to 
HKEX in 1999, as a not-for-profit utility that returned surpluses to users by 
lowering its fee tariff over time.</p>
<h3>So why hasn't this happened already?</h3>
<p>It's all a question of political will to overcome vested interests. The 
banking sector enjoys cheap money from retail depositors, who for nearly a 
decade have received only 0.01% p.a. on savings accounts, and have always 
received substantially less than commercial money-market rates. The HKMA is a 
prudential regulator, so its main interest is in preserving stability of the 
banking system. Banks are generally more stable if they are more profitable, so 
the HKMA's interest is in helping banks to make profits, not customers to get 
better deals. And banks are more profitable if they have less competition for 
funding, so the HKMA's interest is in avoiding greater competition for funding.</p>
<p>Banks are also more profitable if they can make wide spreads on any 
bonds they sell to, or buy from, their customers. This is not just for smaller 
depositors, but for larger individual customers to whom banks provide a 
so-called "private banking" service. They will buy bonds for you, but at a juicy 
mark-up or commission to the bank. The customer has no reference point to check 
the price he gets, as there is no publicly traded market.</p>
<p>Meanwhile, let us not forget that the banks and their insurance affiliates 
have 2 seats in the Legislative Council and 38 seats (including the 2 
legislators) on the 1200-member
<a href="/dbpub/officers.asp?p=8576&amp;sort=posup&amp;d=&amp;u=0" target="_blank">
Election Committee</a> that selects HK's Chief Executive. That may not seem like 
much, but members from other sectors work together to reciprocate favours and 
preserve each other's interests. It's the same system that deferred the 
abolition of minimum commission at the Stock Exchange until 2003. So the 
inaction is partly down to the banks' influence in the political structure and 
partly down to the HKMA's interest in banking profits and stability. The latter 
could be resolved to some extent if HK adopted a "<a href="http://www.law.hku.hk/aiifl/wp-content/uploads/2014/09/Twin-Peaks.pdf" target="_blank">twin 
peaks</a>" regulatory model, with the HKMA supervising capital adequacy (for 
banks and insurers) and the SFC (renaming it the Financial Services Commission) 
supervising all client-facing activity (including insurance sales and broking).</p>
<p>For these reasons, the Government and its HKMA have not been motivated to 
provide HK citizens with access to a liquid, publicly traded bond market. Such a 
market would mean that customers would move some of their cheap deposits out of 
banks and into the bond markets, and the "private banks" would have to wave 
goodbye to the juicy spreads and commissions on retail bond trades. The vested 
interests have, until now, triumphed over the public interest. That's a shame. A 
retail bond market would allow investors to diversify their risk and effectively 
park their savings in loans to commercial entities that they trust, at a more 
senior and less risky level than buying shares or even warrants on shares of the 
same entities. Remember that creditors (including bondholders) rank ahead of 
shareholders in a liquidation.</p>
<p>Instead of properly connecting the OTC market to SEHK or setting up a 
dedicated bond exchange, the Government indulges in gimmickry like the Pilot 
Bond Grant Scheme, which will do nothing to address the real problem.&nbsp; HK 
Chief Executive Carrie Lam should show some much-needed leadership and order the 
HKMA to "make it happen". </p>

<p><em>&copy; Webb-site.com, 2018</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
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