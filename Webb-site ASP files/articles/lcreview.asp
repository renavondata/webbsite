
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

<script type="text/javascript">document.title="Listing Committee Reviewed";</script>

	<div class="summary">The latest proposed rehash of the Listing Committee offers little for investors. Although they own the entire free float and over half the market cap, investors would be in an 8:20 minority on the issuer-dominated committee which makes the Listing Rules of the front-line regulator. The consultation itself represents a leap backwards in transparency, and we take the unprecedented step of urging investors to boycott the process.</div>

<h2 class="center">Listing Committee Reviewed<br>
<span class="headlinedate">20 February 2005</span></h2>
<p>In the kind of
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2005/050218news.htm">
announcement</a> that gets slipped out late on a Friday afternoon, the Stock 
Exchange of Hong Kong Ltd (<b>SEHK</b>), a wholly-owned subsidiary of Hong 
Kong Exchanges and Clearing Ltd (<b>HKEx</b>, 0388), on 18-Feb-05 published ineffectual 
proposals to restructure the Listing Committee which currently has a 
stranglehold over reforms to the Listing Rules.</p>

<p>For disclosure, your editor is an elected 
independent non-executive director of HKEx, but we didn't  see the
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/25010063.pdf">
consultation paper</a> before it was finalised, because the board of HKEx (apart 
from the Chief Executive) are not supposed to be involved in listing matters.</p>

<h3>Background</h3>

<p>One of the long-standing complaints of investors has been that despite owning 
the entire free float of listed companies, and over half of the market 
capitalisation, they have had only token representation on the Listing Committee 
which makes the front-line rules of the market, with investor membership capped 
at 4 members out of 25 (21 on the GEM), and in practice, usually only 1 or 2 members. The other 
members comprise mainly representatives of listed companies and the people who 
advise them for a living - investment bankers, accountants and lawyers.</p>

<p>As a result, the committee has made very slow progress on raising Hong Kong's 
corporate governance rules - for example, proposals to require quarterly 
reporting and faster reporting were not carried through, while it was only in 
Jan-04 after 
the Standing Committee on Company Law Reform proposed to make disclosure of 
directors' pay on a named basis mandatory that the Listing Committee finally agreed to change the 
rules (since the law takes precedence anyway), having originally concluded in 
Jan-03 that a no-names basis would suffice. Meanwhile, the Listing Committee 
refuses to make poll voting mandatory, or even to make it a &quot;recommended best 
practice&quot;, ensuring that a veil of secrecy and manipulation shrouds shareholder 
votes by using the show-of-hands system in all but a few meetings, principally 
on connected transactions - and even that requirement was not introduced until 
31-Mar-04.</p>

<p>The composition of the Listing Committee is itself set out in the Listing 
Rules - so we have a self-perpetuating system in which the vested interests of 
the committee can delay, dilute and veto the reform of its own composition. As 
the consultation paper indicates under the heading &quot;Why Reform Now?&quot;, the 
Exchange has been working on this since Jul-97, so it has not exactly been in a 
rush. And now that the latest proposals have been published, it should be no 
surprise to our long-term readers that the reforms do so little to serve investor 
interests.</p>

<h3>The Proposals</h3>

<p>SEHK proposes to split the functions of the current Listing Committee between 
4 
new committees with overlapping membership. The 
committee which would still hold a veto over reform of the Listing Rules will be the 
Listing Policy Committee (<b>LPC</b>), and the proposal is to increase the 
number of investor representatives from a maximum 4 out of 25 to a quota of 8 
out of 28. This can hardly be described as progress, and we struggle to imagine 
what kind of investor would be willing to serve on that committee in the 
knowledge that he will be in a minority of 8 against 20 issuer-side 
representatives on key reform issues. We speak from experience, having served as 
one of only two investors on the board of HKEx, where we meet resistance to 
pro-investor reforms at almost every turn.</p>

<p>Indeed, the proposal has echoes of the very structure of Hong Kong, where the 
majority of the people elected a minority of the Legislative Council, where 
independent directors should be seen and not heard, and where public 
shareholders should not expect representation in the family boardroom.</p>

<h3>History, with omissions</h3>

<p>The consultation paper begins with  the recent history of this debate, 
including the proposals in the 8-Jul-99 Government policy paper
<a target="_blank" href="../codocs/HKEx-ReinforcingHK990708.doc">Reinforcing 
Hong Kong as a Global Financial Centre</a>. Nothing happened on that until 
6-May-02, when&nbsp; HKEx announced
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020506news.htm">
New Structures for Listing Matters</a>. However, the tycoons were none to keen 
on the idea of the Listing Committee being abolished, and the implication that 
they would lose their control over the Listing Rules. So after a lobbying 
campaign, the newly-installed secretary for Financial Services and the Treasury, 
Fred Ma, fresh out of PCCW, announced on 24-Jul-02 the
<a target="_blank" href="http://www.info.gov.hk/gia/general/200207/24/0724130.htm">
New listing package</a> which retained the Listing Committee and its powers. For 
details, read our article
<a target="_blank" href="../articles/listingchaos.asp">Listing 
Chaos</a>.</p>

<p>The current consultation paper then seems to suffer trauma-induced amnesia 
between paragraphs 38 and 39. We'll fill in the blanks for you. The day after Mr 
Ma announced the resurrection of the Listing Committee, the SEHK published what 
are now known as the Penny Stocks proposals, a set of delisting proposals which 
had been through that Listing Committee, and which immediately resulted in the 
mini-crash known as the Penny Stocks Incident, as investors dumped stocks in 
fear that they were about to lose both the marketplace and what little 
protection was offered them by the Listing Rules. See our article,
<a target="_blank" href="delisting.asp">The Delisting Fiasco</a>. The proposals 
were hastily withdrawn, and Government appointed the Panel of Inquiry into the 
Penny Stocks Incident, which issued the
<a target="_blank" href="pipsireport.asp">PIPSI Report</a> on 15-Sep-02, and 
recommended the regulatory structure be reviewed. This in turn led to the 
Government appointment of the Expert Group, which
<a target="_blank" href="hkexpublic.asp">recommended</a> moving all regulation 
to the SFC and establishing a Listing Panel to advise the SFC, replacing the 
Listing Committee. For just a couple of 
weeks in the spring of 2003, that was exactly what the Government was going to 
do, until the tycoons persuaded the Government to execute a
<a target="_blank" href="resistance.asp">U-turn</a>.</p>

<p>So now you have the proper context. Back to the present day...</p>

<h3>4 committees and an Adjudicator</h3>

<p>Under the proposals, another two committees, being subsets of the LPC, will 
be a Listing Decisions Panel (<b>LDP</b>) which would approve new IPOs and 
listing cancellations and may grant specific rule waivers, and the Listing 
Review Panel (<b>LRP</b>) would hear appeals of decisions of the LDP or of the 
staff of the Listing Division. These committees would have smaller quorums of 5 
and 3 respectively, drawn from the LPC membership. To keep them &quot;clean&quot; for 
appeals, the Chairman and the two Deputy Chairmen of the LPC would not sit on 
the LDP. All the members of the LPC (apart from the CEO of HKEx) would be 
eligible to be selected for a hearing of the LRP. Despite the alphabet soup and 
rearrangement of the deck chairs, this structure is very similar to the current 
situation in which the Listing Committee tends to run in two halves for routine 
business on alternating Thursday afternoons, and those who don't attend one 
hearing can sit in the review hearing under the title of &quot;Listing (Review) 
Committee&quot;.</p>

<p>However, one good thing about the proposed LRP, which would act as the final 
level of appeal of non-disciplinary decisions, is that it finally removes the 
Chairman and directors of HKEx from their current roles as Chairman and members 
of the Listing Appeals Committee. It has always been incredible of HKEx to claim 
that its board has no involvement in listing matters when the Chairman, and two 
directors selected by him, formed the final level of appeal of listing 
decisions, both for disciplinary and listing decisions. This meant that despite 
the appearance of outside checks and balances, the process ultimately ended up back 
in-house.</p>
<div class="rightpicbox" style="max-width:138px">
	<img src="../images/Adjudicator.jpg" alt="The Adjudicator, on a day off">
</div>
<p>
For disciplinary matters, SEHK proposes yet another committee, the Disciplinary 
Review Panel (<b>DRP</b>), which would hear appeals of the initial disciplinary 
decisions of an internal staff member of SEHK, to be quaintly named the <b>
Adjudicator</b> (seen right, in casual attire). The DRP would be drawn on 
each occasion from a pool of at least 20 members, including 7 investor 
representatives and 4 legally qualified persons who may be appointed as Chairman 
of the panel hearing. The quorum for the DRP would be just 3, so if they are 
randomly drawn, the 16 non-lawyer members will only see action on about 1 in 8 
hearings. The membership of the LPC and DRP Pool can overlap, so some of the 28 
members of the LPC may be in the DRP Pool.</p>

<p>The DRP may in time become seldom used, because the bulk of the disciplinary 
cases in the past have involved disclosure-related offences (such as late 
reporting of results or failure to disclose connected transactions), and the handling of those is about to change. The 
Government has proposed
<a target="_blank" href="http://www.fstb.gov.hk/fsb/ppr/consult/statutorybacking.htm">
amendments</a> to the Securities and Futures Ordinance to give statutory backing 
to the disclosure-related listing requirements, which will then be included in 
the statutory
<a target="_blank" href="http://eapp01.sfc.hk/apps/cf/smlr.nsf/eng/page">Stock 
Market Listing Rules</a> administered by the SFC. This will leave SEHK with the 
non-disclosure-related listing rules, including the rules on listing criteria 
and corporate governance, such as rules on board composition, the qualifications 
and elections of independent directors, non-pre-emptive share issues, and the 
conduct of shareholder meetings. While the content of these rules is important, 
compliance is generally dealt with in advance rather than by enforcement - for 
example, if your track record doesn't meet the listing criteria, you don't get 
listed.</p>

<p>There is no proposed change to the appointment system for all these 
committees:- a Listing Nominating Committee, consisting of 2 directors of HKEx, the Chief Executive 
of SEHK and 3 from the SFC (including its Chairman) 
recommends new appointments, which means that HKEx holds a veto over new 
appointments through the 3:3 deadlock.</p>

<h3>A return to opacity</h3>

<p>This may be a consultation on small steps of reform, but the exercise is 
itself a giant leap backwards in transparency and accessibility.</p>

<p>In the 4 major consultations launched since May-03, HKEx has
<a target="_blank" href="http://www.hkex.com.hk/consul/response/responses1.htm">
published</a> all the responses online, which  allows any interested party to judge  whether the Exchange has fairly summarised the responses, and also to see the 
responses in the context of the people who made them, and assess whether they 
have a vested interest and whether they are inter-related (such as submissions 
from several listed companies under common control). However, this time, they 
are only making responses <i>&quot;available for public inspection&quot;</i> at their 
offices, for 14 days after the conclusions are published. Even if you happen to 
live in Hong Kong (let's remember, many of the largest investors don't), and 
have the time to visit during working hours, you won't be able to take copies of responses away with 
you, and you might even find it difficult to take notes. Obviously this reduces 
the transparency and fairness of the whole process. You will have to rely on 
what the Exchange <i>says</i> the responses say, rather than reading them 
yourself.</p>

<p>Furthermore, for the first time in the last 5 years of HKEx
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/consultpaper.htm">
public consultations</a>, the consultation paper does not provide an e-mail 
address for submissions, only a fax number and mailing address. Nor is there any 
online questionnaire. This is probably designed to deter the investing public 
from responding. In the last <a target="_blank" href="spreadcut.asp">consultation</a> on minimum trading spreads, investors 
(other than brokerage staff and clients on broker forms) made 296 submissions, of which 294 came 
by e-mail via a submission form on <i>Webb-site.com</i>. How many do they expect 
this time, without e-mail? The barrier has deliberately been raised.</p>

<p><b>We're not going to bother responding. Implicitly, from its methodology and 
proposals, the SEHK and its Listing Committee want to hear from as few investors as 
possible. So for the first time in six years of advocacy, we are 
taking the step of urging investors to boycott this 
consultation. We don't do this lightly, because we always prefer to engage and 
debate, even when the odds are against us, as they usually are. But we refuse to 
participate in a sham. If 
the Exchange ever comes up with a serious proposal to give investors at least 
equal weighting in the Listing Committee (or whichever committee makes the 
rules), then we will happily respond.</b></p>

<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=13780">SEHK Listing Committee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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