
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

<script type="text/javascript">document.title="Project Poll Update";</script>

	<div class="summary">Polls are a part of the future of Hong Kong, at least for listed companies, if not the Government. This year, a number of index members have announced that they will conduct a poll, possibly making a virtue out of the fact that Webb-site.com could force them to anyway. It's the beginning of the end for the rigged show-of-hands system. We call on the Stock Exchange and its Listing Committee to make poll voting mandatory, as the OECD Asian round table recommended.</div>

<h2 class="center">Project Poll Update<br>
<span class="headlinedate">5 April 2004</span></h2>
<p>Just over a year ago, <i>Webb-site.com</i> launched 
<a target="_blank" href="projectpoll1.asp">project poll</a>, in which we 
purchased 10 shares of each contemporary member of the Hang Seng Index, broke 
them into 5 registered holdings and sent a representative (either your editor or 
a volunteer) to exercise our legal rights to require that the votes be counted 
at each shareholders' meeting on a poll (1-share-1-vote) rather than the show of 
hands system (one-person-one-vote) in which proxy votes are ignored.</p>
<p>In each meeting where we did this, the votes were properly counted. The only 
meeting we missed was the AGM of HSBC in London, but our volunteer will do 
better this year.</p>
<p>We are pleased to see that a number of companies have now taken this on 
board. We told them that if they stated in their notice of AGM and their proxy 
form that the Chairman of the meeting would exercise his right to require a poll 
on all resolutions, then we would not have to attend their meetings for this 
purpose.</p>
<p>The year is still young, but&nbsp; so far 11 members of the index have 
published their notice of AGM, and 5 of them, as well as HKEx (which is not in 
the index) have stated that they will conduct a poll. So brownie points to Bank of East 
Asia (0023), Cathay Pacific Airways (0293), Cheung Kong Infrastructure (1038), CLP 
Holdings (0002) and Hongkong 
Electric (0006), while black marks go to CITIC Pacific (0267), China Mobile 
(0941), China Unicom (0762), Hang Seng Bank (0011), HSBC (0005) and TVB (0511). 
We'll have someone at your meetings to secure a poll. Let's hope that the rest 
of the index gets the message.</p>
<p>However, before getting too excited about this apparent enthusiasm for 
counting investor votes, we should note that a number of these companies control 
(or are under common control with) other listed companies which are not in the Hang Seng Index, which are not 
(yet) 
part of Project Poll. Regrettably, for example, Hong Kong Aircraft Engineering 
(0044), which is majority controlled by Swire Pacific and Cathay Pacific 
Airways, has not adopted this policy and will conduct its votes on a show of 
hands. We would be more convinced that index-member companies are not making a 
virtue out of necessity if they would extend this poll voting policy to all 
companies under common control. If they don't, then we may have to extend 
Project Poll to the non-index members of these groups next year.</p>
<h3>Listing Rules and Code on Corporate Governance</h3>

<p>The good news is that in the new Listing Rules which became effective on 
31-Mar-04, there is now a requirement that if a poll is held (a big if) then the 
results must be published. So at least we won't have the problem we occasionally 
encountered last year of companies conducting a poll but resisting disclosure of 
the results.</p>

<p>The bad news is that there has been no progress on making poll voting 
mandatory in the Listing Rules. HKEx has also published an
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/edc-e.PDF">exposure 
draft</a> of the non-binding Code on Corporate Governance Practices, a two-tier 
document which inches towards reform in several areas, proposing some things as 
comply-or-explain &quot;code provisions&quot;, and others as weaker 
comply-or-don't-explain &quot;recommended best practices&quot;. For example, quarterly 
reporting falls into the latter category. We see little point in this category 
since voluntary options were always there - it just puts wishful thinking into 
writing, to be ignored by most companies.</p>

<p>However, when it comes to shareholder meetings, the draft code does not even 
include poll voting as a &quot;recommended best Practice&quot;, let alone putting it in 
the stricter &quot;comply or explain&quot; code provisions. The only proposal it makes is 
that the issuer should tell shareholders how to demand a poll, but since you 
have to be at the meeting to demand a poll, this is of no use to shareholders 
who are unable to attend meetings, particularly when they live thousands of 
kilometres away, but would like their proxy votes to be counted. We call on the 
Stock Exchange and its Listing Committee to face up to the public interest and 
make poll voting mandatory.</p>

<p>The <a href="http://www.oecd.org/dataoecd/4/12/2956774.pdf">
OECD White Paper on Corporate Governance in Asia</a>, published on 10-Jun-03, 
came out of an "Asian Round Table" in which both HKEx and the SFC participated. 
On voting practices, paragraph 86-87 stated:</p>
<blockquote>
	<p>&quot;There are a 
	number of practices across Asia that prevent or impede effective shareholder 
	participation in shareholder meetings. These practices&nbsp; include:.. (vii) 
	prohibitions on voting in absentia;...(ix) vote by...show of hands; (x) failure to 
	record the conducting and outcome of meetings in&nbsp; ways that are verifiable.&quot;</p>
	<p>&quot;Where the 
	above practices can be corrected through simple changes in laws, regulations or 
	listing requirements, Asian policy-makers and regulators <b>should effect these 
	changes without delay.</b>&quot; (emphasis added)</p>
</blockquote>
<p>So why the delay?</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
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