
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

<script type="text/javascript">document.title="Alibaba's spotlight on HK regulation";</script>

	<div class="summary">10 years after the Expert Group report, Alibaba's requests spotlight the unresolved conflict of interests of HKEx between profit and regulation, creating an opportunity for Government to put this back on the agenda. They should now follow through, strip HKEx of its regulatory role, create a Listings and Takeovers Authority under the SFC, and remove the special provisions of HKEx's own constitution which make it a Government-controlled company.</div>

<h2 class="center">Alibaba's spotlight on HK regulation<br>
<span class="headlinedate">18 September 2013</span></h2>
<p>We've resisted writing until now about the hypothetical listing plans of
<a href="../dbpub/orgdata.asp?p=1852090">Alibaba Group Holding Ltd</a> (<strong>Alibaba</strong>), 
which has yet to publish any concrete proposals and has largely been conducting 
its campaign for special treatment by means of off-the-record briefings, leaked 
e-mails and lobbying, but it is worth looking at the broader context.</p>
<p>Alibaba reportedly initially asked for an A/B or two-tier share structure, in 
which management would hold first-class shares with more votes per dollar of 
equity than second-class shareholders. They were reportedly told, either by the 
Stock Exchange or <a href="../dbpub/officers.asp?p=503&amp;hide=Y">Securities 
and Futures Commission</a> (<strong>SFC</strong>) or both, that this was unacceptable. Next, they suggested 
that management would have some kind of rights baked into Memorandum and Articles 
of association (<strong>M&amp;A</strong>) which would give a self-selecting group of 
past and present management known as the &quot;partners&quot; the right to 
nominate a majority of the directors, in effect giving them a veto on any change 
of control.</p>
<h3>The history of A/B Shares in HK</h3>
<p>This is not the first time that the issue of dual-class shares has come up in 
HK. On 27-Mar-1987, Jardine 
Matheson Holdings Ltd proposed a bonus issue of 4 &quot;B&quot; shares for every existing 
ordinary share (which would be redesignated as &quot;A&quot; shares). This was followed 4 
days later by proposals from <a href="../dbpub/articles.asp?p=488">Cheung Kong (Holdings) Ltd</a> 
(0001) and <a href="../dbpub/articles.asp?p=366">Hutchison Whampoa 
Ltd</a> (0013), both controlled by Li Ka-shing, each proposing a bonus issue of one &quot;B&quot; 
share for every two ordinary shares.</p>
<p>What such an issue would do is of course allow existing controlling 
shareholders to dilute their economic interest without diluting their control, 
or to increase their voting control without investing more money, by selling 
their low-voting shares and buying the high-voting shares instead. For example, 
if 5 B-shares are economically equivalent to 1 A-share, then after a bonus issue 
of B-shares, you can sell an A-share with 1 vote and buy 5 B-shares with 5 
votes.</p>
<p>Uproar ensued. If nothing was done, then with 3 of the biggest companies 
underway, many other hongs would likely follow suit. At that time, securities laws were regulated by the 
Government's Office of Commissioner for Securities (the subsequent market crash 
and 1-week closure in October that year eventually led to the formation of the 
SFC in 1989). On 7-Apr-1987, there was a joint statement from the Securities 
Commissioner, Ray Astin, and then Chairman of the Stock Exchange, 
<a href="../dbpub/natarts.asp?p=1931">Ronald Li Fook 
Shiu</a> (later jailed for corruption), rejecting the Jardine proposal and banning any further issues of B-shares. 
That policy has survived 26 years until now.</p>
<p>There were, at the time of the ban, 5 existing companies which had already 
issued B-Shares, including 3 controlled by <a href="../dbpub/orgdata.asp?p=346">
Wheelock &amp; Co Ltd</a> (0020). Only one remains, namely
<a href="../dbpub/orgdata.asp?p=384">Swire Pacific Ltd</a> (which by coincidence 
has the stock codes 19/87, reminding us of the year this policy was set).
<a href="../dbpub/articles.asp?p=348">Lane Crawford International Ltd</a> was 
privatised on 30-Jul-1999 after your editor forced a bump in the offer in one of 
his earlier pieces of activism. <a href="../dbpub/articles.asp?p=344">Wheelock 
Properties Ltd</a> and its subsidiary <a href="../dbpub/orgdata.asp?p=349">
Realty Development Corp Ltd</a> both unified their A/B shares on 31-Jul-2000 and 
have since been privatised. <a href="../dbpub/orgdata.asp?p=364">Grand Hotel 
Holdings Ltd</a> was privatised by <a href="../dbpub/articles.asp?p=496">Hang 
Lung Properties Ltd</a> (0101) on 26-Feb-2003.</p>
<p>So Swire Pacific has been on its own for the last 10 years. As of 30-Jun-2013 
the British family firm John Swire &amp; Sons Ltd owns 30.78% of the low-voting 
A-shares and 68.49% of the higher-voting B-shares, giving it 45.80% of the 
equity and 59.74% of the voting rights. Economically, every 5 B-shares is 
equivalent to 1 A-share, but each share has 1 vote. The share of equity has been 
steadily increasing (5 years ago it was 36.50%), and we would expect that they 
will get to 50% of the equity in the next few years and then they would feel 
safe enough to unify the share classes while still having majority voting 
control. It's the right thing to do, and would put an end to A/B structures in 
HK.</p>
<h3>Pyramid structures</h3>
<p>There is another way to disconnect voting control from economic interests, 
and that is to build a pyramid of partly-owned subsidiaries, so that the person 
at the top controls the ones at the bottom with only a small economic interest. 
Put simply, a 3-layer pyramid with 50% at each level gives you 12.5% of the 
equity of the bottom companies, but outright control. Typically this is done by 
spinning off minority interests in subsidiaries as new listings. Later, they can 
be privatised again at a discount. There are plenty of examples of this 
structure in HK, and some groups play the market like an accordion, expanding 
and contracting according to the flavour of the year, whether it is an 
infrastructure spin-off, a REIT or a dotcom play.</p>
<p>But at least each company in the pyramid has to obey Listing Rules on 
connected transactions (with some well-exploited loopholes), have its own board, 
and report financial results separately. If it issues fresh equity, then it 
dilutes its parent unless the parent invests to maintain its stake. There is 
also a Takeover Code which deters minority squeeze-outs - anyone, or any group 
of shareholders, with 10% of the public shares can prevent compulsory purchase 
of their shares. Still, given a choice, most investors would rather be alongside 
the controller at the top of the pyramid than down at the bottom.</p>
<h3>No, you can't pick and choose your own rules</h3>
<p>We recognise that some markets allow dual-share structures. In the US, recent 
examples include Facebook and Google - the latter
<a href="http://www.reuters.com/article/2013/06/17/us-google-stockplan-settlement-idUSBRE95G0MU20130617">
moving to a triple-share</a> structure with a distribution of non-voting 
&quot;C-shares&quot; after the founders decided that even with B-shares (which have 10x 
the votes of the publicly-traded A-shares) they were likely to lose control.</p>
<p>The US also has 50 different jurisdictions with corporate laws that 
compete to offer management-friendly constitutions (as well as competing tax 
laws). That has helped facilitate anti-shareholder measures such as poison 
pills, golden parachutes (automatic payouts to management on a change of 
control), and a general difficulty in getting candidates onto the board. There 
is also no Takeover Code in the US, so companies get to write their own - 
recently we were treated to the spectacle of Dell Inc's independent directors
<a href="http://www.reuters.com/article/2013/09/09/us-dell-icahn-idUSBRE9880M720130909" target="_blank">
changing the voting rules</a> so that abstentions did not count in the 
privatisation by Michael Dell and his private equity partner. A simple majority 
of votes cast was all that it took.</p>
<p>As economic interests and voting 
interests diverge, the &quot;agency problems&quot; (or in layperson's terms, 
management playing with 
other people's money) tend to drag down shareholder value.
<a href="http://papers.ssrn.com/sol3/papers.cfm?abstract_id=1080361" target="_blank">
Click here</a> for a paper that looks at dual-class US companies. In the US, 
this is to some extent offset by a litigation and class action environment that 
can deter, but not eliminate, bad behaviour.
<a href="http://www.businessweek.com/stories/2004-09-01/hollingers-troubles-in-black-and-white" target="_blank">
Just ask</a> shareholders of Hollinger International, the US company once 
controlled by now-convicted felon Conrad Black through a 2-tier voting 
structure. You can
<a href="http://www.sec.gov/Archives/edgar/data/868512/000095012304010413/y01437exv99w2.htm" target="_blank">
read the report by the Special Committee of Hollinger International here</a>.</p>
<p>Hong Kong has no class action system, and consequently no real litigation 
deterrent from investors, who individually cannot justify the cost of action. There are also practical limitations from the fact 
that most companies that are listed in this offshore haven have no real presence here, and 
cross-border enforcement of judgments, as well as regulatory reach of the SFC 
and Police, is notoriously difficult. There is no extradition treaty between 
Hong Kong and the PRC (or Taiwan, or Macau). As a consequence, the emphasis in 
HK is very much on prevention rather than cure of abuse.</p>
<p>Companies can choose between these competing systems, as well as other market 
characteristics, such as the collective body of internet analysts which is 
undoubtedly greater in the US than HK. But what companies cannot do is pick and 
choose the weakest aspects of each market and cobble them together in their own 
constitution with special exemption from the Listing Rules. Alibaba should not 
get exemptions in HK any more than it could hope to get exemption from the US 
litigation system if it lists there.</p>
<p>Every management team thinks they are special, but none of them deserve 
special protection against a change of control. There is an element of 
China-think in the so-called &quot;partnership&quot; proposal; China is a nation with a
<a href="http://english.people.com.cn/constitution/constitution.html" target="_blank">
Constitution</a> which bakes in leadership by the Communist Party which picks 
its own successors. If the HK regulators make an exception for one new listing, 
then many future applicants will want the same thing, and many existing listed 
companies will complain that they should be allowed to do it too. It would be 
like 1987 all over again, when a potential avalanche of B-shares was only 
stopped by the regulator.</p>
<h3>The discount on management lock-in</h3>
<p>Setting aside the Conrad Blacks of this world, there is still the issue that 
a management lock-in prevents corrective changes being made by outside owners. This is a 
particular risk where a company is run by founders who have an emotional and sentimental attachment to 
their life's work, and can be too close to realise when outside help or a change 
of management is needed. While some of today's internet leaders are given almost 
god-like status by the media, the halo may fade and their skills and knowledge 
may become stale. How will their shareholders then feel as they watch the 
management destroy their equity? Would Steve Ballmer still be carrying on as CEO 
of Microsoft if he had 51% of the voting rights but only 5% of the 
equity? News of his pending retirement sent the stock shooting up.</p>
<p>If you doubt that structures which separate votes from ownership, or entrench 
management, create a 
discount, then just conduct the following thought experiment. Imagine there are 
two companies preparing for listing (X and Y), identical in every way, with 
management owning 20% of the equity, but:</p>
<ul>
	<li>In Company X, the incumbent management and their chosen successors have a veto over 
	future changes in control, either through super-voting shares or through 
	constitutional rights. They also have the ability to issue fresh equity 
	while maintaining that control.</li>
	<li>In Company Y, there are no such 
	privileges, and all the outside shareholders, with 80% of the votes between 
	them, can change the management if and when they deem it necessary to do so. 
	Any issue of fresh equity dilutes all shareholders and all voting rights 
	equally.</li>
</ul>
<p>Which company would you rather own in the IPO? How much of a discount would 
you expect if there was no prospect of ever being able to change the management 
without their consent?</p>
<h3>HKEx's conflict of interest</h3>
<p>The reported efforts of <a href="../dbpub/articles.asp?p=9643">Hong Kong 
Exchanges and Clearing Ltd</a> (<strong>HKEx</strong>, 0388) to find a 
convoluted way around its own Listing Rules, for the sake of a massive piece of 
business from a potential client, provide a useful reminder of the conflict of 
interests between profit and regulation. This is why it should not be having 
these conversations in the first place, because it should not be the &quot;front-end&quot; 
regulator of listed companies. Hong Kong last held this debate 10 years ago, a 
year after the Exchange shot itself in the foot over the
<a href="pipsireport.asp">Penny Stocks Incident</a>. The Government 
appointed an Expert Group, led by the former Chairman of the Australian 
regulator, to review the regulatory structure, and the Expert Group
<a href="http://www.info.gov.hk/info/expert/expertreport-e.htm" target="_blank">
issued a report</a> on 21-Mar-2003
<a href="http://www.info.gov.hk/info/expert/chapter3.pdf" target="_blank">
recommending</a> moving the Listing function to a new Listing Authority within 
the SFC, scrapping the &quot;dual filing&quot; system and giving the Listing Rules 
statutory backing.</p>
<p>The Financial Secretary at the time, <a href="../dbpub/positions.asp?p=2195">
Antony Leung Kam Chung</a>,
<a href="http://www.info.gov.hk/gia/general/200303/21/0321286.htm" target="_blank">
accepted</a> the recommendations and committed to take them forward. What 
followed was a rearguard campaign led by then HKEx Chairman
<a href="../dbpub/positions.asp?p=148">Charles Lee Yeh Kwong</a>, a lawyer close 
to the local tycoons, to stop the reform in its tracks. Three weeks later, on 
10-Apr-2003, the Financial Secretary did a U-turn and
<a href="http://www.info.gov.hk/gia/general/200304/10/0410218.htm" target="_blank">
announced</a> a public consultation on the report, which itself had been 
produced after widespread consultation.</p>
<p>The second consultation, dubbed &quot;Proposals to Enhance the Regulation of 
Listing&quot; or PERL, was <a href="PERLdecision.asp">concluded</a> on 
26-Mar-2004, and the watered-down proposal was that HKEx would remain as the 
front-line regulator, but Listing Rules on 3 areas would move under the SFC. In 
the end, after another 9 years of arguing, diluting and foot-dragging, only 1 of 
those rules made it into statute, the requirement to disclose price-sensitive
<a href="http://www.sfc.hk/web/EN/regulatory-functions/listings-and-takeovers/corporate-disclosure/guidelines-on-disclosure-of-inside-information.html" target="_blank">
Inside Information</a>, which came into effect on 1-Jan-2013, and even then, 
non-compliance is a civil but not criminal offence, unlike insider dealing, 
which became a criminal offence in 2003.</p>
<h3>Recommendations</h3>
<p>This ongoing conflict of interests for HKEx is not in the interests of HK or 
investors at large. A decade after the Government first accepted and then 
rejected the Expert Group's recommendations, it should now take the opportunity 
of the Alibaba episode to put the issue of Listed company regulation back on the 
agenda. The Stock Exchange's Listing Division should be merged into the SFC's 
Corporate Finance Division to create a new &quot;Listings and Takeovers Authority&quot; 
with statutory backing for both the Listing Rules and the Takeover Code, and an 
advisory body should be put in place to advise the SFC on changes to both, in 
effect merging the Listing Committee and the Takeover Panel to form a holistic 
approach. This &quot;Listings and Takeovers Panel&quot; should not be tasked with vetting 
IPO prospectuses on Thursday afternoons - that should be the job of full time 
regulators, aided by comments submitted from the market on publicly-filed draft 
prospectuses.</p>
<h3>HKEx's own board structure</h3>
<p>The greatest irony of all in Alibaba's proposal is that HKEx itself has a 
constitution which cements control of the company, not by management, but by the 
Government. Under the M&amp;A and the Securities and Futures Ordinance, the CEO of 
HKEx is automatically (&quot;ex officio&quot;) a director, not subject to shareholder 
elections, and 6 other directors are appointed by the Financial Secretary. The 
Chairman has to be approved by the Chief Executive of HK. Only 6 out of the 13 
directors can be elected by shareholders, even though the Government only owns 
about 6% of the company. The CEO of HKEx is also an <em>ex officio</em> member 
of the Listing Committee which makes the Listing Rules and approves main-board 
IPO prospectuses.</p>
<p>And why was this Government control deemed necessary? Purportedly it was 
because HKEx is also a regulator of listed companies, and so these &quot;public 
interest&quot; directors were needed to stop the company putting short-term profits 
ahead of the public interest. So if the Listing function were moved to the SFC, 
then this would remove the main excuse for this structure, particularly if the 
statutory monopoly on running a stock market is abolished. Everything else could 
be dealt with by prudential regulation rather than Government involvement in 
management.</p>
<p>There is only one other HK-listed company with special rights in its M&amp;A - 
and again, it is HK Government-controlled. It is train operator and property 
developer <a href="../dbpub/articles.asp?p=11569">MTR Corporation Ltd</a> (0066), 
where the Chief Executive of HK can appoint up to 3 directors. In practice 
though, since the Government has a majority shareholding, it elects
<u>all</u> the directors, including the so-called 
independent directors. And guess what - the former CEO of the MTRC,
<a href="../dbpub/positions.asp?p=17919">Chow Chung Kong</a>, is now Chairman of 
HKEx so he has moved between the only 2 HK-Government-controlled listed 
companies. Needless to say, he is also an Executive Councillor (an outside 
member of HK's cabinet), as all 3 Chairmen of HKEx have been.</p>
<p><em>Note: Webb-site founder David Webb is a former elected INED of HKEx 
(2003-2008) and is a Deputy Chairman of the Takeover Panel since 2013 and a 
member of it since 2001.</em></p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1852090">Alibaba Group Holding Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=488">CK Hutchison Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366">Hutchison Whampoa Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=646">JARDINE MATHESON HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=384">SWIRE PACIFIC LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
				<li><a href="/dbpub/subject.asp?c=191">Takeovers</a></li>
				
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