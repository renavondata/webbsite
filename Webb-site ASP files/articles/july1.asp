
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

<script type="text/javascript">document.title="March for your Rights on July 1";</script>

	<div class="summary">We're getting to the root of Hong Kong's governance problems - Webb-site.com urges all investors and market professionals to join the 1-July march, the background to which is as much about the need for universal suffrage under Article 45 as it is about state security under Article 23.</div>

<h2 class="center">March for your Rights on July 1<br>
<span class="headlinedate">30 June 2003</span></h2>
<p>For months now, it has been increasingly obvious to the population of Hong 
Kong that we have a Government that is neither by the people nor for the people. 
The train of Chief Executive Tung Chee Hwa has been ignoring all the stop 
signals as it heads down the track for a head-on collision with its own 
population.</p>

<p>Not since the mourning after the Tiananmen Square massacre in 1989 has an 
issue provoked such strong feelings among the people, and although some may 
argue that economic conditions are a contributing factor, there can be no doubt 
that a popularly-elected Government with an electoral mandate to govern would 
not be facing this situation. No system of accountability can exist without the 
right of the people to elect and remove their highest leader, and no true free 
market can exist without a free market in the policy-makers who govern that 
market through the ballot box.</p>

<p><i>Webb-site.com</i> hereby urges all investors and financial sector 
employees to participate in the march from Victoria Park to Central starting at 
3pm on 1-Jul. Sometimes, words are not enough, and we must be counted. And if 
you cannot make it, wear black on Tuesday anyway. Your editor has a black 
&quot;Invest HK&quot; T-shirt which we think strikes the perfect balance.</p>

<h3>Background</h3>

<p>For readers outside HK, let us recap:
<a target="_blank" href="http://info.gov.hk/basic_law/fulltext/content0202.htm">
Article 23</a> of the SAR's constitution, the
<a target="_blank" href="http://info.gov.hk/basic_law/fulltext/">Basic Law</a> 
states:</p>

<blockquote>

<p>&quot;The Hong Kong Special Administrative Region shall enact laws on its own to 
prohibit any act of treason, secession, sedition, subversion against the Central 
People's Government, or theft of state secrets, to prohibit foreign political 
organizations or bodies from conducting political activities in the Region, and 
to prohibit political organizations or bodies of the Region from establishing 
ties with foreign political organizations or bodies.&quot;</p>

</blockquote>

<p>This obligation to legislate was something which the Tung administration had 
probably been deliberate in putting off for several years, knowing what 
controversy it would cause, and also knowing that much of this was already 
covered by legislation left behind by the British. Perhaps the HK Government 
would still be delaying were it not for the surprise actions of a previously 
little-known cult called Falun Gong, which on 25-Apr-99 surprised the Beijing 
leadership by turning up with thousands of peaceful members doing their deep 
breathing exercises outside the
<a target="_blank" href="http://www.time.com/time/asia/magazine/99/0927/zhongnanhai.html">
Zhongnanhai</a> leadership compound.</p>

<p>This provoked intensified interest on the part of the mainland government in 
cracking down on dissent, including the internet as a means for its 
organisation. Meanwhile, HK's government dithered on how to deal with the local 
branch of the cult without raising fears in Hong Kong of a threat to civil 
liberties, with Mr Tung famously telling LegCo in Feb-01 that Falun Gong was <i>
&quot;more or less bearing some characteristics of an evil cult&quot;. </i>Thankfully for 
those who respect freedom of belief and speech, the cult has not been banned in 
HK, and nor has a much more successful and older cult known as the Roman 
Catholic Church.</p>

<p>But that Falun Gong episode, &quot;more or less&quot;, was what set Tung's 
administration on the path of implementing Article 23 legislation, as it is 
widely believed that the mainland exerted pressure to ensure that Hong Kong had 
enacted sufficient laws to oppress, should the need arise, any hotbed of dissent 
that might threaten the communist party's stranglehold on mainland power from an 
&quot;offshore&quot; Hong Kong base.</p>

<p>Once they had embarked on the drafting, the Tung administration, fronted by 
Secretary for Security Regina Ip, proceeded with gusto. While some concessions 
have been made, the current draft still holds draconian powers that go far 
beyond what is necessary to comply with Article 23. They include:</p>

<ul>
  <li>

<p style="margin-bottom: 6">Allowing police to search private properties without 
a court warrant (although the drafters have raised the rank of policeman 
required to authorise a search to Assistant Commissioner);</p>

  </li>
  <li>

<p style="margin-bottom: 6">Allowing the administration to ban or &quot;proscribe&quot; 
organisations that threaten national security, and allowing the Secretary for 
Security to set the rules for appeals of such decisions, rather than the courts, 
effectively subverting the independence of the judiciary;</p>

  </li>
  <li>

<p style="margin-bottom: 6">Not including a &quot;public interest defence&quot; against 
the offence of publishing state secrets, posing a threat to free speech, 
economic research and freedom of the press.</p>

  </li>
</ul>

<p>Now unfortunately, there are in place in many countries around the world 
similar laws, and the HK Government has sought to draw justification from the 
existence of such laws. But In so doing, the HK Government fails to recognise 
the key difference: the UK, Australia, Canada and the US all have democratically 
elected governments, and any government which abuses such laws does so with the 
risk of being removed at the next election.</p>

<p>For example, although many criticise the Bush administration's enthusiasm for 
stripping civil rights from certain &quot;non-citizens&quot; by calling them &quot;enemy 
combatants&quot; (but not prisoners of war, which would give them Geneva Convention 
rights)&nbsp; and implementing secret military tribunals without independent 
legal representation, or for locking people up indefinitely as &quot;material 
witnesses&quot; without trial, there can be no doubt that if it goes too far, it will 
lead to an eventual retribution at the ballot box or a reversal in the Supreme 
Court on constitutional grounds.</p>

<p>But in Hong Kong, we have a Chief Executive who is elected not by universal 
suffrage but by a small circle of 800 people dominated by business tycoons, a 
rigged legislature in which only 24 out of 60 are directly elected (next time it 
will be 30 out of 60), and a Court of Final Appeal which can be and has been 
overruled by the Standing Committee of the National People's Congress upon HK 
Government request.</p>

<p>The tycoons, eager not to offend the Beijing leadership for commercial 
reasons, have with a few exceptions been&nbsp; silent on Article 23. One welcome 
exception is Bank of East Asia Chairman and Banking Constituency Legislator 
David Li Kwok-po, who earlier this year warned of the impact of the proposals on 
bank and investor confidence. The barristers'
<a target="_blank" href="http://www.hkba.org">HK Bar Association</a> has also 
been vociferous in their criticisms, as has the Solicitors'
<a target="_blank" href="http://www.hklawsoc.org.hk">Law Society</a>. </p>

<h3>Universal Suffrage</h3>

<p>None of this would have been quite as controversial, nor would the proposals 
have been so draconian, if the laws were being proposed by a democratically elected 
Government.
<a target="_blank" href="http://info.gov.hk/basic_law/fulltext/content0204.htm">
Article 45</a> states in part:</p>

<blockquote>

<p>&quot;The method for selecting the Chief Executive shall be specified in the light 
of the actual situation in the Hong Kong Special Administrative Region and in 
accordance with the principle of gradual and orderly progress. The ultimate aim 
is the selection of the Chief Executive by universal suffrage upon nomination by 
a broadly representative nominating committee in accordance with democratic 
procedures.&quot;</p>

</blockquote>

<p>While
<a target="_blank" href="http://info.gov.hk/basic_law/fulltext/content0210.htm">
Annex I</a> of the Basic Law clearly states, as we
<a target="_blank" href="legcoCE.asp">explained</a> to LegCo earlier this month, 
that the first opportunity under the Basic Law to elect a Chief Executive by 
universal suffrage, should Hong Kong so choose, is for the third term of the 
Chief Executive commencing on 1-Jul-07:</p>

<blockquote>

<p>&quot;If there is a need to amend the method for selecting the Chief Executives 
for the terms subsequent to the year 2007, such amendments must be made with the 
endorsement of a two-thirds majority of all the members of the Legislative 
Council and the consent of the Chief Executive, and they shall be reported to 
the Standing Committee of the National People's Congress for approval.&quot;</p>

</blockquote>

<p>It is ironic that while the Tung administration seeks to ram Article 23 
legislation through LegCo before the summer recess, the Government is at the same time dragging 
its feet on Article 45, and even wrongly suggesting that the law does not 
allow for universal suffrage to elect the Chief Executive until 2012.</p>

<p>What's in it for investors? Well, ultimately, so many of the regulatory 
reforms we have called for over the last five years would come much faster if we 
had a Government directly accountable to the investing public rather than to the 
vested interests of certain tycoons. And freedom of information, which is 
threatened by Article 23, is the cornerstone of free markets. </p>

<p>When hundreds of thousands demonstrate their objections to Article 23 in the 
march on 1st July, they will also be sending a clear message that even the 
deafest, most obstinate government would be stupid to ignore - give us universal 
suffrage, and we won't need to march, because your policies will be shaped by 
the ballot box.</p>

<p><i>Webb-site.com</i> urges all investors and market professionals, in your 
personal capacities, to get to Causeway Bay by 3pm on Tuesday and join the march 
to Central. If you have never joined a march before (as we have not), then now 
is the time.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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