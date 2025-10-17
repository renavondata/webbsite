
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

<script type="text/javascript">document.title="Government secrecy in land tenders";</script>

	<div class="summary">Since March, we've been quietly trying to persuade Government to increase transparency in land tenders, rather than publishing meaningless lists of shell bidders, often with unknown owners. The Government responded that  information on who stands behind bidders was "unnecessary". That's inconsistent with its requirement that estate agents report possible money-laundering, and the secrecy also strengthens perceptions of collusion and protection of the developer cartel.</div>

<h2 class="center">Government secrecy in land tenders<br>
<span class="headlinedate">9 November 2012</span></h2>
<p>Webb-site <a href="landsales.asp">noted last year</a> that the HK Government has increasingly shied away 
from the open bidding of land auctions in favour of the sealed-envelope tender 
approach to sell sites. It probably stems from the fear of negative publicity if 
an auction fails to match a reserve price, or perhaps some fear of collusion if 
the bidders can see who else is bidding and somehow get together to rig a bid.</p>
<p>In tenders, the Government routinely announces the terms of the winning bid, 
but not the other bids. The Government also announces far less than it knows 
about who is behind the bids. Each tender form requires the bidder to name its 
&quot;parent company&quot;, if any. This does not say &quot;ultimate parent&quot;, so there is a 
risk that some shells would just name the immediate parent (the registered 
holder of the bidder's shares) which could just be another meaningless shell. 
However, most bidders comply with the spirit of this and name their top parent 
company. Take a look at a typical &quot;<a href="../codocs/TenderNotice.pdf" target="_blank">Tender 
Notice and Form of Tender</a>&quot;. On page 2 you will see Clause 6(c):</p>
<blockquote>&quot;After the award of the tender, the identity of the 
successful tenderer and the unsuccessful tenderers and their parent company (if 
any)... can be disclosed by the Government in response to public or media 
enquiries. The Government reserves the right to announce the said tender results 
without the need to seek the prior agreement of the tenderers and their parent 
company (if any).&quot;</blockquote>
<p>But the Government's announcements give false transparency - they list 
only the names of the bidders, which are usually just shell companies with names 
you have never heard of. Take
<a href="http://www.info.gov.hk/gia/general/201205/24/P201205240310.htm" target="_blank">
this example</a>, published on 24-May-2012, with the names of 24 bidders for 2 
sites (including the winners). Doesn't mean much, does it? That's the only 
public written record of the sale. In practice, journalists call up the Lands 
Department, and ask who is behind the winner and sometimes the other bidders. 
This leaves no public record of the disclosure, just fragments in newspapers.</p>
<p>So Webb-site has, since March 2012, been writing to the Government every time 
we spot one of these announcements, and asking for the names of all the parent 
companies (if any). After a 7-week delay on the first request, while they 
consulted with lawyers, they began supplying the lists. Here is the list they 
supplied for the example given above (we added the right-hand column).</p>

<img class="center" alt="Tenderers" src="../images/tenderers.gif">

<p>Much clearer, isn't it? Now we can see that Cheung Kong, K Wah, Sino Land, 
Sun Hung Kai Properties and Wheelock bid for both sites, while the smaller site 
in Sha Tin attracted smaller bidders, 5 of which are listed companies. In 3 
cases, the parent companies were private and not incorporated in HK. We can't 
tell you where they were incorporated though, because amazingly, the Government 
doesn't collect that information. In every jurisdiction, company names are 
unique at any point in time, but two companies incorporated in different places 
can of course have the same name. So if you don't know the place of 
incorporation, then you don't know which company you are dealing with, just its 
name. So for example, we can't tell you who owns &quot;Meganew Limited&quot; or where it 
is incorporated.</p>
<h3>Recommendations</h3>
<p>Clearly there is a transparency problem here. Webb-site put the following 
recommendations to the Government by phone and in emails, that they should:</p>
<ol>
	<li>Require in tender forms that each bidder (if a corporation) encloses a 
	copy of its certificate of incorporation, stating its place of incorporation 
	and company number.</li>
	<li>Require in tender forms that each bidder disclose the name of its
	<u>ultimate</u> parent company, if any, and enclose a 
	copy of the ultimate parent's certificate of incorporation, stating its 
	place of incorporation and company number.</li>
	<li>Publish, in the press release and Gazette, the names, places of 
	incorporation, and company numbers of the bidders and their ultimate 
	parents.</li>
	<li>Require bidders to disclose, by way of a 
	diagram, the ownership structure of the bidder, down to the level of 10% 
	interests. There can't be more than 10 such holders at each level, so that 
	would not be difficult. An exemption could be made for parents which are 
	listed companies, because we already have a law which requires disclosure at 
	the 5% level of those.</li>
</ol>
<h3>The Government defends opacity</h3>
<p>The Director of Lands responded by email as follows:</p>
<blockquote>&quot;The supply of the information about the tenderer's parent 
company (if appropriate) as provided for in the current Form of Tender would be 
sufficient for Lands Department. There is no intention to seek additional 
unnecessary information in the land sale by cash tender such as the shareholding 
structure of the tenderers, the places of incorporation of tenderers or their 
parent companies.&quot;</blockquote>
<p>In other words &quot;if we've got the cash, then we don't care where it is coming 
from&quot;. Such information is &quot;unnecessary&quot;. By closing its eyes to the ultimate 
ownership of bidders and the humans behind them, the Government cannot be taking 
any steps to prevent money-laundering, something that it imposes great 
obligations on banks and
<a href="http://www.eaa.org.hk/Compliance/Practicecirculars/PreventiveMeasuresonMoneyLaundering/tabid/448/language/en-US/Default.aspx" target="_blank">
estate agents</a> to do. Well if they are worried about money-laundering using 
individual properties, then surely the same concerns apply to land transactions. 
Shouldn't the Government do its share, by requiring 
and publishing information from bidders on who is behind the anonymous shells? 
Particularly on smaller sites, the ultimate owner is often behind a private 
offshore company, not a well-known listed 
company.</p>
<p>As for the non-publication of the names of parents that they already 
receive, the Government's response was:</p>
<blockquote>&quot;As to the parent company of the tenderer (if applicable), the 
public may make a search at the Companies Registry for any available information 
in the register.&quot;</blockquote>
<p>That's quite ridiculous, for several reasons. The Companies Registry only has 
information on companies registered in HK. A shell bidder does not have to be 
registered in HK. Even if it is, it is probably a new company that has not yet 
filed its first annual return, and even if it has, the information is behind a 
pay-wall and may be outdated (annual returns are only snapshots of 
shareholdings). Even if you can get that, it will probably only show that the 
registered shareholders are other intermediate layers of offshore companies, 
protecting the owners from disclosure.</p>
<p><strong>So, having tried to resolve this privately with Government, we now go public, and call 
on the Government to implement the above recommendations. </strong></p>
<p>It is frankly surprising that the Government cannot see the upside in greater 
transparency. Behaving in such a secretive manner only strengthens public 
perceptions that the Government protects and colludes with developers. What does 
the Government stand to lose by publishing the information? The public interest 
in land transactions with the Government, where public resources are at stake, 
demands an increased level of transparency as compared with private-sector 
transactions. Nobody has to participate in these tenders, but those who do 
should submit to this transparency.</p>
<p>Perhaps the Government is just embarrassed by the fact that for large sites, 
the parent companies of bidders come from a small group of developers who 
dominate the market and are the only ones large enough to bid. So by keeping 
their names off the written record, the illusion of greater competition can be 
maintained. Shell companies are different names every time.</p>
<p>Investors in listed companies would also like to know how active their 
company is in the land tenders, even if the bids are unsuccessful. It provides 
insight into the future path of those companies. For each tender since Mar-2012, 
we have been collecting that information, but you haven't. Shouldn't the 
Government publish it? </p>
<p><em>&copy; Webb-site.com, 2012</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
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