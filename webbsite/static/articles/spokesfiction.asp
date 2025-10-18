
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

<script type="text/javascript">document.title="The fictitious spokesman";</script>

	<div class="summary">We look at the HK Government's media management strategy, involving abuse of unattributed briefings, and the quotation of imaginary spokespersons, 97.3% of whom are male. The HK media should put a stop to this practice.</div>

<h2 class="center">The fictitious spokesman<br>
<span class="headlinedate">28 February 2010</span></h2>
<p>One of the tendencies of an unelected Government, as Hong Kong has, is to try 
to avoid public accountability, and to allow future deniability of its statements, by 
refusing to be quoted on the record. Never a day goes by without some anonymous 
Government person being quoted as a &quot;source&quot; or &quot;an official&quot;. This is 
particularly true when the Government wishes to respond to criticism without 
opening itself up to further questions, or when it wishes to float policy ideas 
which it can later deny having suggested. A tame media almost never makes clear that the person 
is &quot;speaking on condition of anonymity&quot;, because that would tend to raise the 
question of &quot;why?&quot;. They also fear losing access to their sources if 
they dare even to mention the anonymity.</p>
<p>There are of course circumstances in which a journalist can and should use 
sources without attribution - for example, if the source is a whistle-blower 
against his employer, or speaking without the authority of his employer, or has 
reason to fear for his security, and there is either a second source or some 
corroborating evidence. In that case, the journalist should explain the reason 
for the anonymity. But the unattributed briefing is a system which is heavily 
abused by the HK Government when they want to issue statements without 
attribution to any accountable official. The media let them get 
away with this, for fear of losing access to &quot;exclusive&quot; briefings.</p>
<p>Apart from unattributable briefings from real Government officials, the other 
favourite way that the Government puts out its position is to issue media 
releases (or what they still call &quot;<a target="_blank" href="http://www.isd.gov.hk/pr/eng/">press 
releases</a>&quot;, despite the diminishing role of printed media in societies), in 
which they conjure up a fictitious &quot;spokesman&quot; and report that the spokesman 
said various things. The deceptive idea is that the media will then produce reports with direct quotations from &quot;a Government 
spokesman&quot;, without ever having heard a real-life human speak those words. It 
creates the illusion that the journalist interviewed the spokesman or at least 
heard him speak (and knows who spoke), and hence that the media report is the 
result of a journalistic enquiry of the matter. Knowing who spoke would allow 
the journalist to consider any conflicts of interest the speaker may have, or 
any contradictions to past statements by that person. It would also allow for 
the possibility of follow-up questions. A recent example of the fictitious 
spokesman was the
<a target="_blank" href="http://www.info.gov.hk/gia/general/200910/16/P200910160307.htm">
response</a> to a counter-proposal on the Express Rail Link, in which the 
&quot;spokesman&quot; dismissed it as not feasible.</p>
<p>Hong Kong's media should put a stop to this practice. Instead of quoting a 
fictitious spokesman, what journalists should write is:</p>
<p class="center">&quot;in a written statement, the [Government*] said&quot;<br>
(*or insert name of Bureau or Department).</p>
<p>Drop the spokesman - he doesn't exist. Strip him out of the press release and 
report the Government's statements directly. Perpetuating the fictitious spokesman 
makes the journalist complicit in deception of the public. If the media stop the 
illusion, then the Government will have no reason to use it.</p>
<p>Many readers of Hong Kong's media might think that the words attributed to a 
&quot;Government spokesman&quot; were actually spoken by a warm-blooded human, at least 
internally, to a Government statement-writer. <em>Webb-site</em> devised a 
simple test of this hypothesis: if the spokespersons really existed, then you 
would expect a fair proportion of them, if not close to half, to be female. But 
if you search the Government's press release site using Google for the following 
phrases, here are the results:</p>
<table class="numtable center fcl">
	<tr>
		<th>Phrase</th>
		<th>Hits</th>
		<th>Share</th>
	</tr>
	<tr>
		<td>
		<a href="http://www.google.com/search?hl=en&amp;rls=com.microsoft%3Aen-us%3AIE-SearchBox&amp;q=%22spokesman+said%22+site%3Ainfo.gov.hk&amp;aq=f&amp;aqi=&amp;aql=&amp;oq=">
		spokesman said</a></td>
		<td>15,400</td>
		<td>97.28%</td>
	</tr>
	<tr>
		<td>
		<a href="http://www.google.com/search?hl=en&amp;rls=com.microsoft%3Aen-us%3AIE-SearchBox&amp;q=%22spokesperson+said%22+site%3Ainfo.gov.hk&amp;btnG=Search&amp;aq=f&amp;aqi=&amp;aql=&amp;oq=">
		spokesperson said</a></td>
		<td>426</td>
		<td>2.69%</td>
	</tr>
	<tr>
		<td>
		<a href="http://www.google.com/search?hl=en&amp;rls=com.microsoft%3Aen-us%3AIE-SearchBox&amp;q=%22spokeswoman+said%22+site%3Ainfo.gov.hk&amp;aq=f&amp;aqi=&amp;aql=&amp;oq=">spokeswoman said</a></td>
		<td>5</td>
		<td>0.03%</td>
	</tr>
</table>
<p>If nothing else, this indicates a clear bias in the minds of officialdom that to be authoritative, a fictitious spokesperson should 
be male, not genderless or female.</p>
<p>Responding to this allegation of bias, a Government spokeswoman said &quot;You're 
right, this just isn't 
fair. All these fictitious men are appointed as spokespersons, but hardly any fictitious 
women like me. I am going to file a complaint with the Equal Opportunities Commission&quot;. </p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3728">HKSAR Government</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
				<li><a href="/dbpub/subject.asp?c=158">Journalism</a></li>
				
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