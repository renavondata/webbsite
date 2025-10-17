
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

<script type="text/javascript">document.title="Poll Position";</script>

	<div class="summary">We need your help! SEHK has proposed requiring all votes to be conducted by poll (1-share-1-vote), ending the ancient show-of-hands system. We strongly support this move to greater transparency and accountability. Take our opinion poll and tell us what you think. Meanwhile, we urge custodians to tick the CCASS box to demand polls in all meetings.</div>

<h2 class="center">Poll Position<br>
<span class="headlinedate">3 April 2008</span></h2>
<p class="center"><a target="_blank" href="../vote/poll.asp?p=24"><strong>Take our Poll Poll</strong></a></p>

<p>Five years ago, <em>Webb-site.com</em> launched
<a href="projectpoll1.asp">Project Poll</a>, using a quirk of 
company law to force all blue-chip companies (the 33 companies which were then 
Hang Seng Index members) to conduct poll voting (1-share-1-vote). Funded by your 
editor David Webb, Project Poll used 10 shares of each company, split into 5 
names (3 companies he established, plus himself and his wife) to demand a poll, 
as any 5 members of a HK-incorporated company (or 3 in Bermuda) can do.</p>
<p>Project Poll continues to this day, and has been successful in requiring 
blue-chip companies to conduct polls. Many large companies now make a policy of 
it, declaring in their filings that they always conduct polls, in the interests 
of good governance. This saves us from having to go to shareholder meetings to 
force them to. We now have transparency over the level of support or opposition 
to each proposed resolution. Even if there is a controlling or majority 
shareholder who wins the vote, this allows us all to measure the votes of 
outside shareholders and apply pressure for reforms.</p>
<p>However, <em>Webb-site.com</em> cannot possibly cover over 1200 listed 
companies' meetings. So for the vast majority of companies by number, voting 
continues by the ancient &quot;show of hands&quot; system, which excludes proxy votes and 
gives 1 vote per shareholder physically present in the meeting. The result is 
low transparency, bad governance, and a disenfranchisement of the public 
shareholdings. A poll is only required (since 31-Mar-04) on certain resolutions 
in which a conflicted shareholder must abstain, including connected transactions 
with that party or its associates.</p>
<h3>The central depository for public shares</h3>
<p>Almost all of the public shareholdings (including institutional and 
individual investors) are held through the central depository shareholder, HSCC 
Nominees Ltd (<strong>HKSCCN</strong>), owned by Hong Kong Securities Clearing 
Co Ltd (<strong>HKSCC</strong>), a subsidiary of Hong Kong Exchanges and 
Clearing Ltd (<strong>HKEx</strong>, 0388). The stock is there because HKSCC 
operates the Central Clearing and Automated Settlement System (<strong>CCASS</strong>) 
through which all trades are settled, so shares must be in the depository before 
they can be traded. CCASS holds the stock on behalf of banks, brokers, 
custodians and investor participants.</p>
<p>CCASS sends a person to the meeting, who votes with one hand, for or against, 
based on the majority of the voting instructions it receives.</p>
<h3>Consultation proposals</h3>
<p>Now, five years later, the Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>), 
another HKEx subsidiary which makes the Listing Rules, is proposing in a
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/cp200801_e.pdf">
consultation paper</a> (para 12.37 on page 74) <strong>mandatory poll voting for 
all shareholder meetings</strong>. We strongly support that. It is the only fair 
way to count shareholder votes. If it passes, then we can discontinue Project 
Poll and shareholders will never again have to worry that their votes will not 
be counted.</p>
<p>Unfortunately, the dark hand of vested interests is still at work. The 
consultation paper contains two other options, which (whether taken separately 
or together) are neither effective nor fair for the reasons given below.</p>
<p>The first alternative (para 12.39) is that poll voting would only be required 
in <u>annual</u> general meetings, but not in other general 
meetings. If we did that, then companies would take anything on which they 
wished to avoid a poll out of the AGM agenda and put it in a separate general 
meeting, which could easily be held straight after the AGM, in the same room. 
The AGM would only handle matters required by company law or by constitutional 
documents, such as approving accounts, electing directors and reappointing 
auditors. Then, and throughout the rest of the year, important matters, such as 
the issue of shares, share option scheme approvals and renewals, major 
acquisitions and disposals, amendments to articles of association and so on 
would be decided in non-AGMs by a show of hands.</p>
<p>The proposal makes an artificial distinction between AGMs and non-AGMs and is 
completely ineffective. If anything is important enough to require shareholders' 
approval, then the votes should be properly counted.</p>
<p>The second alternative (para 12.41) is to keep the show of hands system, but 
to require announcement (through SEHK) of the proxy instructions received. A form of proxy 
can appoint a person to vote in favour, vote against, abstain, or vote at his 
discretion. There are several problems with this proposal:</p>
<ul>
	<li>Obviously if a proxy has discretion, then the only way to know how they 
	would have voted is to actually conduct a poll. So the proposal boils down 
	to announcing how <u>some</u> proxies would have voted 
	if there had been a poll. </li>
	<li>Proxies are just one component of a meeting. There are also individual 
	shareholders and corporate representatives attending the meeting. Also, if a 
	shareholder files a proxy form but then attends the meeting, then his proxy 
	becomes invalid and it would not be fair to include his proxy in the tally. 
	A person attending the meeting might change his mind during the meeting 
	based on the discussion of the agenda items. The only way to know how he 
	would have voted his shares is to actually conduct the poll.</li>
	<li>Most importantly, nearly all the public votes are represented by HKSCCN, 
	which attends as a corporate representative, not by proxy (except when 
	meetings occur outside HK). Para 12.43(a) makes clear:
		<blockquote>&quot;CCASS will arrange for one or more persons to attend the 
		meeting as corporate representatives of [HKSCCN]...this <u>
		does not involve</u> the appointment of proxies&quot; (emphasis added)</blockquote>
	</li>
	<li>So that means that any announcement of proxy instructions would exclude nearly 
	every public vote, since HKSCCN would represent them in the meeting, not by 
	proxy. Of course, CCASS could take a backward step, and set a 3-day cut-off 
	so that it could file a proxy form before the deadline of 48 hours before 
	the meeting. But this would shorten the voting period for beneficial owners, 
	and if they wanted HKSCCN to attend the meeting and try to demand a poll, 
	then CCASS could not do that without voiding its proxy.</li>
</ul>
<h3>Institutions and custodians - tick that box!</h3>
<p>While we are waiting for SEHK to make poll voting mandatory, a <strong>
WARNING for institutions.</strong> On the CCASS entry system used by your 
custodians, there is a tick-box named &quot;demand poll&quot; which allows the custodian 
to instruct CCASS (through HKSCCN) to demand a poll on any resolution. 
<a target="_blank" href="../codocs/CCASSIPVotingExample.pdf">Click here</a> to 
see what it looks like to an Investor Participant. The box 
is cleared by default. Under company law, if CCASS has (in total) instructions 
to demand a poll in respect of 10% of 
the issued shares, then it will be successful in that demand. If not, then it 
depends on whether sufficient other shareholders at the meeting also demand a 
poll.</p>
<p>It is evident from the dearth of polls that the vast majority of institutions 
are unaware of this tick-box, and custodians have not made them aware of it. 
Consequently, they routinely give instructions to HKSCC on how to vote their 
shares, but in effect say &quot;don't count my votes&quot;. As an HKEx director, David 
Webb has urged HKSCC in the past to make the box ticked by default, because it 
is a nonsense to assume that customers would not want their votes to be counted. 
HKSCC has declined to do so.</p>
<p><strong>So we appeal to all institutions, wake up and be counted - make sure 
your custodian ticks the box to &quot;demand a poll&quot; on all resolutions. Otherwise, 
you are not really voting.</strong></p>
<p class="center"><a target="_blank" href="../vote/poll.asp?p=24"><strong>Take our Poll Poll</strong></a></p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=172">Poll voting</a></li>
				
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