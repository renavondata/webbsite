
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

<script type="text/javascript">document.title="Class actions for HK";</script>

	<div class="summary">In a potentially huge step forward for access to justice, the Law Reform Commission proposes a class action system for HK. The key issue is litigation funding. Rather than a government-sponsored gatekeeper fund, we need a free-market approach, with contingent legal fees and the abolition of archaic laws against champerty and maintenance, to allow self-funded lawyers and third party funders to bear the risks of loser-pays-costs. Take our opinion poll and tell them what you think!</div>

<h2 class="center">Class actions for HK<br>
<span class="headlinedate">17 March 2010</span></h2>
<div class="pollbox">
	
	<ul class="navlist">
		<li id="livebutton">Poll</li>
		<li><a target="_blank" href='../vote/result.asp?p=37'>Results</a></li>
		<li><a href="../vote/">More polls</a></li>
		
			<li><a href="../webbmail/login.asp">Log in</a></li>
			<li><a href="../webbmail/join.asp">Sign up</a></li>
		
	</ul>
	<div class="clear"></div>
	<h3><b>Poll: Class actions</b></h3>
	<p><b>Please <a href='../webbmail/login.asp'>log in</a> to see how you voted, if you did. </b></p>
	
			<p>	
			Poll closed: 18:00:00 9-Apr-2010
			</p>
		
		<script type="text/javascript">
		function NoEnter(e)
		{
			var key;
			if(window.event)
				key = window.event.keyCode;     //IE
			else
				key = e.which;     //firefox
			if(key == 13)
				return false;
			else
			return true;
		}
		</script>
		<form method="post" action="/articles/classactions.asp">
			<hr>
			<p class=''>1. Should class actions be allowed in Hong Kong?</p><p class=''><select name='180' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>2. Should lawyers be allowed to charge fees on a contingent basis?</p><p class=''><select name='181' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>3. Should third parties be allowed to provide litigation funding?</p><p class=''><select name='182' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p><p class=''>4. Should the laws against champerty and maintenance be abolished?</p><p class=''><select name='183' class=''><option value=''>Select</option><option value='36'>Yes</option><option value='37'>No</option><option value='74'>Undecided</option></select></p>
			<p>
			
			</p>
		</form>
	
</div>
<p>On 5-Nov-2009, Hong Kong's <a href="../dbpub/orgdata.asp?p=21130">Law Reform 
Commission</a> published a
<a target="_blank" href="http://www.hkreform.gov.hk/en/publications/classactions.htm">
consultation paper</a> proposing the introduction of a mechanism for 
&quot;multi-party litigation&quot; in HK, or class actions. If implemented, this will be a 
huge step forward for facilitating access to justice and introducing a financial 
deterrent to wrong-doing. Much of our common law and statute provides 
theoretical remedies for cheated consumers or investors, but these remedies 
remain impractical so long as we lack two things: a legal right to represent 
plaintiffs with a common interest as a &quot;class&quot;, and mechanisms for funding the 
litigation.</p>
<p>Without a class action system and a litigation funding system:</p>
<ul>
	<li>hundreds or thousands of potential litigants may each have a claim which 
	is too small to justify the millions of HK$ that it may take to bring a case 
	against a defendant with deep pockets who may go all the way to the Court of 
	Final Appeal;</li>
	<li>any plaintiff who brings a case will be giving a &quot;free ride&quot; to all the 
	other potential litigants. If the plaintiff proves his case, then the others 
	will find it much easier to reach individual settlements or recycle the 
	evidence in their own cases; and</li>
	<li>any plaintiff who brings a case risks paying the defendant's costs if 
	the case fails.</li>
</ul>
<h3>Court clearance</h3>
<p>The paper proposes, correctly in our view, that an action can only become a 
class action if the court allows it. The key test should be whether the court 
can identify a claim which is substantially the same for all potential 
claimants. </p>
<h3>Loser pays</h3>
<p>Opponents of class actions like to scaremonger, saying that HK would end up 
like the USA with a lot of &quot;nuisance&quot; litigation. Our &quot;loser-pays&quot; system 
ensures that would not happen.&nbsp; It deters frivolous, 
meritless or vexatious actions, but it does mean that any class action system 
will be useless without a mechanism for funding the downside risk of paying the 
defendants' costs. Nobody is going to take the risk of being the representative plaintiff 
in a class action unless his potential costs are covered by a funding mechanism. 
His upside might only be a few thousand dollars, but the downside could amount 
to millions.</p>
<h3>Opt out</h3>
<p>A key provision of any class action system is the mechanism for determining 
who participates in any result. The consultation in our view correctly proposes 
an &quot;opt-out&quot; rather than &quot;opt-in&quot; system. In an opt-out system, once a court 
agrees to hear a case as a class action, the case would be advertised, and any 
potential claimant would have a fixed amount of time to opt out (in order to 
preserve his rights), failing which, he would be bound by the outcome. Very 
few claimants would opt out, because each would have to believe that he had some 
claim which was worth bringing individually, despite the costs, or as a member of 
a different class action. A court will normally unify competing class actions if 
they represent substantially the same claims.</p>
<p>The opt-out system ensures two things:</p>
<ul>
	<li>That the action will represent the vast majority of potential claimants, 
	increasing the economic viability of the case. The downside risk of the 
	litigation is relatively fixed, being the costs on both sides, whereas the 
	upside is determined by the size of the potential damages. If you are only 
	representing a small subset of potential claimants under opt-in, then many 
	cases will not be viable; and</li>
	<li>For the defendant, it increases the certainty that they will not face 
	substantial follow-on litigation from other potential claimants. They know 
	exactly who has opted out, and any award 
	or settlement will be binding on all the other members of the class, 
	bringing finality to a case.</li>
</ul>
<p>However, we think the consultation is wrong to suggest that cases should default to 
&quot;opt-in&quot; if they involve parties from outside HK, particularly 
claimants. We are an international city 
serving global markets, both financial markets and those in real goods and 
services. Almost any shareholder action, and most consumer actions, would 
involve potential claimants from overseas. For example, even a defective product 
sold in HK can be bought by tourists. Any shareholder action involving a listed company 
would certainly include beneficial shareholders who are overseas. If these cases 
default to &quot;opt in&quot; for a large portion of the potential claimants, then it raises a significant barrier to the viability of the 
case. Put simply, if large parts of the claimant base have to opt in, then it 
becomes more of a <u>joint</u> action than a true class 
action system, and we already have a joint action system. It doesn't work.</p>
<p>So if there is a clear connection with HK, such as a defective product sold 
here, a service provided here (including to visitors), or a stock acquired on 
our stock exchange, then the members of that class, wherever they are, should 
have to opt out if they want to preserve separate rights of action here.</p>
<p>We should note that to be viable, class action rights must include any 
beneficial owner, not just registered nominee shareholders who have no economic 
interest in the case. This is an ongoing issue for shareholder litigation 
generally, not just class actions.</p>
<h3>Funding</h3>
<p>It is this crucial part of the proposal where the consultation paper goes 
wrong. It proposes fattening up and &quot;expanding the scope&quot; of an existing
<a target="_blank" href="http://www.consumer.org.hk/website/ws_en/legal_protection/consumer_legal_actions_fund/clafinfo.html">
Consumer Legal Action Fund</a> (<strong>CLAF</strong>), which sits under the 
Consumer Council and until now has been a bit of a joke. It was set up on 
30-Nov-1994 with a grant of only HK$10m and by May-2005 it had spent HK$2.39m. 
The latest Consumer Council
<a target="_blank" href="http://www.consumer.org.hk/website/ws_en/profile/annual_reports/AnnualReport20082009.html">
annual report</a> shows that the CLAF had net assets of HK$14.4m at 31-Mar-09 
and by then had considered 118 groups of cases (a &quot;group&quot; comprising 
applications with common background and interests) of which only 32 were funded, 
or about 2 per year. It is overseen by the
<a href="../dbpub/officers.asp?p=31080&amp;hide=Y">Consumer Legal Action Fund 
Management Committee</a>.</p>
<p>The consultation paper (para 8.156) says:</p>
<blockquote>&quot;Our general intention is to take a step by step approach, 
leading to the establishment of a general class actions fund in the long term.&quot;</blockquote>
<p>This conjures up the image of a government-appointed gatekeeper committee 
which has the (possibly exclusive) right to decide which cases can be submitted 
to court, 
and then to fund them from a fund which is presumably established using 
taxpayers' money. Hong Kong's rule of law is often cited by Government as one of 
our competitive advantages. It can only be an advantage if there is affordable 
access to justice. We cannot afford to take a &quot;step by step&quot; approach to 
removing these barriers, imposing new ones (a gatekeeper committee) in their 
place. Even if it is not exclusive, and private sector entities are allowed to 
fund litigation, a government-run body would be interventionist and distort the 
market.</p>
<p>It would be rather like setting up a government body to decide which 
companies can get venture capital funding or which movies get funded. These are 
real-life examples of government intervention in HK's economy in the form of the
<a target="_blank" href="../dbpub/orgdata.asp?p=25630">Applied Research Council</a> 
(and its successors) and the <a href="../dbpub/orgdata.asp?p=30112">Film 
Development Council</a> with its Film Development Fund. Then there's the
<a href="../dbpub/orgdata.asp?p=13499">Hong Kong Mortgage Corporation</a>, which 
crowds out the mortgage insurance market, and the
<a href="../dbpub/orgdata.asp?p=16864">Urban Renewal Authority</a>, which throws 
its weight around in the form of statutory compulsory purchase powers in the 
redevelopment market. We don't need another interventionist monster. We need a 
competitive, efficient, free-market solution.</p>
<p>There is no need for a public fund to finance class actions. The private 
sector should be allowed to assess cases on their merits and decide whether to 
finance them, covering the costs (including the defendant's costs on the 
downside) in return for an agreed share of any winnings. The courts should have 
discretion to require security from the plaintiff to cover the defendant's 
costs, which would be financed by whoever is funding the case.</p>
<p>And who should be allowed to fund a case? In our view, anyone, including the 
law firm, third parties, or a wealthy lead plaintiff, in each case for a share 
of the potential award. Large law 
firms may choose to self-finance a case from their own capital, or they may 
choose to outsource the risk to a litigation funding company (<strong>LFC</strong>), 
which in effect is &quot;insuring&quot; the downside of the case. If an LFC is funding a case, then they 
in turn will employ legal experts to assess the case, just as a fund manager 
employs experts to pick stocks. And if a wealthy plaintiff is willing to 
self-fund a case in return for a share of the class winnings, then he should be 
free to do so, for that is no different to him owning an LFC.</p>
<p>If a court faces applications from competing class actions with 
the same underlying claim, then all other things being equal (or <em>ceteris 
paribus</em>, as a judge would say), he should pick the one which offers the 
lowest share of any winnings to funders and the highest share to class members. 
In effect, a tender would be held for the right to conduct the litigation. This 
would help to keep down the costs.</p>
<p>There is no point in pretending that LFCs or other third parties are not already funding court 
actions here - it is an open secret in several cases, such as the now-settled 
case of Akai Holdings against Ernst &amp; Young. Yet the consultation paper 
balks at the notion of a free market, and says (p224):</p>
<blockquote>&quot;if LFCs were to be allowed in Hong Kong , legislation would 
be necessary to recognise and regulate LFCs, as well as to clarify what 
activities are approved in commercial third party funding of litigation.&quot;</blockquote>
<p>In our view, there is no obvious need to legislate for LFCs or other third 
parties who may fund cases, including self-funding law firms and wealthy 
plaintiffs. If the concern is about their credit worthiness, then that can be 
dealt with by a judge's discretion to require security for costs. Optionally, 
LFCs may be insurance companies, in which case their capital adequacy is 
regulated by the Commissioner of Insurance. Rather than create a regulatory 
framework for LFCs, with the implication that everyone else would be prohibited 
from funding a case, we need to legislate to remove barriers that stand in their 
way, which brings us neatly on to...</p>
<h3>Champerty and maintenance</h3>
<p>There are still archaic laws in HK against champerty (profiting from someone 
else's litigation) and maintenance (funding someone else's litigation). These laws 
were devised in medieval England to counter the risk of corruption of the courts 
- where a nobleman could lend their name to a case in return for a piece of the 
winnings and influence the judge (either by threat or incentive) in return. Even 
the word &quot;champerty&quot; derives from Middle French <em>champart</em>, meaning a 
feudal lord's share of his tenant's crop. Hong Kong is one of the last places 
where
<a target="_blank" href="http://en.wikipedia.org/wiki/Champerty_and_maintenance">
champerty and maintenance</a> is still a crime. Those laws should be consigned 
to history. Our Judiciary is widely seen as independent and not corrupt. We pay 
judges well enough, and the penalties for corruption are high enough, to 
minimise that risk. </p>
<p>However, instead of making those laws history, HK has, for the first time 
since 1897, used them in
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=84631&amp;con_type=1">
prosecutions</a>. The case involved a recovery agent and a solicitor, and a 25% 
share of the damages in a traffic injury. If there is a problem with fair 
disclosure or the practices used by &quot;ambulance-chasing&quot; recovery agents, then it 
should be dealt with by setting up an agent-licensing body and establishing 
standards rather than outlawing them. As far as we know, these were the only 
prosecutions after 21 people were
<a target="_blank" href="http://www.info.gov.hk/gia/general/200807/08/P200807080184.htm">
arrested</a> &quot;throughout the territory&quot; in a blitz on 3-Jul-2008 (you will note 
the <a href="spokesfiction.asp">fictitious spokesman</a> in that press release 
telling us all about it).</p>
<p>It is a highly unlikely coincidence that only 5 days after the arrests, the Government 
launched a
<a target="_blank" href="http://www.isd.gov.hk/eng/tvapi/08_dj4.html">TV 
advertising campaign</a>, at public expense, warning people that champerty and 
maintenance is a crime. It takes more than 5 days to script, cast and edit such 
commercials. At the very least, they prepared the commercial and then held it 
until the arrests, which to us smacks of an abuse of process. Watch the ad at 
the link. Now if the guy in the hospital bed had been a cheated shareholder in a potential class action case, would the agents and lawyers also 
be accused of champerty and maintenance?</p>
<h3>Contingent legal fees</h3>
<p>Those best placed to asses the merits of a case and whether to fund it are 
often the lawyers acting on it. Section 64 of the <a target="_blank" href="http://www.hklawsoc.org.hk/pub_e/professionalguide/volume2/default.asp?cap=1.8#64">
Legal Practitioners Ordinance</a> (LPO) and paragraph 4.1.16 of the
<a target="_blank" href="http://www.hklawsoc.org.hk/pub_e/professionalguide/volume1/default.asp?cap=4.1.16">
Hong Kong Solicitors' Guide to Professional Conduct</a> respectively outlaw and prohibit 
contingent legal fees on contentious cases. These should be scrapped. They 
represent an artificial constraint on the terms of contract between a customer 
and a supplier of legal services. Customers and suppliers should be free to 
negotiate any fee basis in the free market.</p>
<p>Some have raised the possible conflict of interest in acting on a contingent 
or &quot;no win, no fee&quot; basis. The argument goes that if a lawyer is contracted for a share of the 
winnings and liable for costs, then he might push his client to settle a case 
quickly, for a lower outcome than might be achieved if he pursues the case to 
completion. We would counter that with the argument that if a lawyer is on a 
fixed hourly rate, then he might push his client into prolonged litigation, 
resulting in higher fees for the lawyer and a lower net recovery for the client 
than if the case had been settled quickly. The truth is that neither fixed fee 
rates nor contingent legal fees can completely avoid conflicts of interest. It 
is inherent in any supplier-customer relationship that the supplier will seek to 
maximise his expected profit. However, that includes the prospect of repeat 
business or referral business versus loss of business and reputational damage, 
so this does tend to offset the incentive for the supplier to screw the 
customer.</p>
<p>Take doctors, for example - they could just charge you a fixed annual fee for 
&quot;all you can eat&quot;, including drugs and tests, but then they would have an 
incentive to kick you out of their clinics as fast as possible. Alternatively, they could 
charge you for each and every procedure, and charge mark-ups on medical tests 
and drugs, in which case, they have an incentive to do more work and tests than 
necessary. Neither basis is devoid of conflict. The latter basis prevails in HK.</p>
<p>Barristers, with their age-old traditions and anti-competitive practices, are 
a conservative lot, and many of them are horrified by the prospect that they may 
be asked by solicitors and clients to act on anything other than an hourly or 
daily rate. On 6-Nov-2009 your editor
<a href="../audio/Backchat091106.asx">went on local radio</a> 
with the Chairman of the Bar Association and the President of the
<a href="../dbpub/orgdata.asp?p=10811">Law Society of HK</a> to discuss this.</p>
<p>Barristers should get used to the real world, a world in which 
travel agents, estate agents, stockbrokers and shop assistants work on a partly 
or fully commissioned basis, for a percentage of any deal they complete. 
Barristers who win more cases than average should have nothing to fear from 
this, for they will be competitive against their peers. Change is coming to the 
bar, including the new
<a target="_blank" href="http://www.legco.gov.hk/yr09-10/english/ord/ord002-10-e.pdf">
rights of audience</a> for experienced solicitors in the High Court and Court of 
Final Appeal. Get used to it. Nobody is going to force barristers or solicitors 
to work on a contingency basis, but it should not be illegal to charge that way.</p>
<p>In any event, the advent of class actions would certainly provide more 
business for both barristers and solicitors, because when united in classes, 
more cases will find viable access to justice than before. Class actions will 
support jobs in the legal sector, which is an important limb of our 
service-based economy.</p>
<h3>HAMS</h3>
<p>It is worth mentioning that the consultation paper 
devotes several pages (210-213) to a discussion of our <a href="../HAMS/">2001 
proposals to establish HAMS</a> (Hongkong Association of Minority Shareholders). 
In brief, the proposal was to legislate a 0.005% levy on stock-market 
transactions to fund a body to represent investors and catalyse reform. A board of non-executive 
governors would oversee it, half elected by individuals and half by 
institutions, with nominal membership fees to cover communication costs. It 
would be open to all, and accountable to the Legislative Council for the use of 
the levy. HAMS would have three divisions: a policy division, for 
advocacy and engagement in the legislative, regulatory and standards-setting 
process; a ratings division, for comprehensive corporate governance ratings and 
proxy voting recommendations; and an enforcement division, for
<u>quasi</u>-class actions. As we said at the time, in the 
absence of a legal framework for real class actions, and with barriers to 
contingent legal fees, HAMS could synthesize class actions by acting for 
hundreds or thousands of members in joint actions, using part of its levy to 
finance the cases.</p>
<p>However, quasi-class actions were always our second-best option, the 
first-choice being a real class action system, which is now proposed by the Law 
Reform Commission. As we noted above, in a real class-action system, there is no 
need for a central funding body, whether funded by investor levies or government 
grants, because the free market will take care of it and finance viable cases if 
allowed to do so.</p>
<h3>Class actions and competition</h3>
<p>The HAMS proposal received widespread market endorsement, but was left on the 
shelf in Apr-2002 when the Government refused to contemplate a levy, alleging 
that HAMS would &quot;lack accountability&quot; - which is ironic coming from an unelected 
government. The real issue, and the likely source of opposition to the current 
class action proposals, is that the tycoons, who pull the strings of government, don't want to 
face meaningful empowerment of consumers and investors in the courts. It's the 
same reason why the Government is dragging its feet on a multitude of issues, 
including the introduction of a competition law. Just take a look at the
<a target="_blank" href="http://www.legco.gov.hk/database/english/data_es/es-competition-policy.htm">
LegCo database on competition policy</a> - there has been no update on the 
proposed law since 30-Mar-2009, although in his 14-Oct-2009 policy address, the 
Chief Executive said that the Government hoped to introduce the bill in the 2009-10 
legislative session. After all, it's only been 14 years since the Consumer 
Council first <a href="noncompete.asp">recommended one</a> and the government 
said <a target="_blank" href="http://www.compag.gov.hk/reference/brochure.pdf">
no, thanks</a>.</p>
<p>Class actions would be a key tool for seeking compensation for 
anti-competitive behaviour such as price-fixing, if that were illegal. Take, for 
example, the <a target="_blank" href="https://www.airpassengerrefund.co.uk/">
class action settlement</a> with British Airways and Virgin Atlantic, who 
allegedly conspired to fix prices for fuel surcharges between 2004 and 2006. 
Note that it only applies if you bought your ticket in the UK or US, even if you 
were flying to HK. Although both airlines fly to HK, price fixing is perfectly 
legal here, so customers who bought tickets in HK were not part of the claim.</p>
<h3>What do you think?</h3>
<p>Should consumers and investors have class action rights in HK courts? Should 
they be free to negotiate contingent fees with lawyers? Should third parties be 
allowed to finance and insure legal costs? Tell us your views in our class 
actions opinion poll. We will forward this paper as our (belated) submission on 
class actions, and follow up by submitting the poll results. Unlike the proposed 
class action system, you have to opt-in to count, so vote now!</p>
<p class="center"><strong><a href="../vote/poll.asp?p=37">What do you think? 
Take our Opinion Poll!</a></strong></p>
<p class="center">Your name will not be disclosed, but the aggregate results will be sent 
to the Law Reform Commission</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12920">CONSUMER COUNCIL</a></li>
				
				<li><a href="/dbpub/articles.asp?p=31080">HKSAR Consumer Legal Action Fund Management Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=21130">HKSAR Law Reform Commission</a></li>
				
				<li><a href="/dbpub/articles.asp?p=25075">Hong Kong Bar Association</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10811">LAW SOCIETY OF HONG KONG (THE)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=111">Class action rights</a></li>
				
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
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