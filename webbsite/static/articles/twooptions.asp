
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

<script type="text/javascript">document.title="One HK, two possible outcomes";</script>

	<div class="summary">HK's civic freedoms and lack of democracy are an incompatible, unsustainable combination, which is why it is alone globally in that quadrant of the grid of democracy and civic freedoms. Either we move to a democratic open society, or we join mainland China and others with neither civic freedoms nor democracy. The status quo, with recurrent protests against an illegitimate and paralysed government, is not a viable option.</div>

<h2 class="center">One HK, two possible outcomes<br>
<span class="headlinedate">9 October 2014</span></h2>
<p>The number of protesters currently on the ground in Admiralty may be 
dwindling through fatigue, but the reason they are protesting has 
not gone away. In a survey of HK citizens commissioned by SCMP and carried out 
by the University of HK's Public Opinion Program before the protests began, 48% 
said legislators should veto the restrictive reform proposal handed down by the 
Standing Committee of the National People's Congress (<strong>NPCSC</strong>), 
while only 39% said they should take what they can get and &quot;pocket&quot; it.</p>
<p>So of 
those who expressed a view, 48/87 or 55% wanted a veto. They would rather be 
stuck with the old system in the hope of a better deal later. And if you had asked those who 
were in favour of &quot;pocketing&quot; the plan whether they thought this was true 
universal suffrage, undoubtedly some of them would say no. A clear majority of 
those citizens who have an opinion want genuine choice, not a choice between 2 
or 3 candidates chosen for them by a majority of a
<a href="../dbpub/positions.asp?p=8576&amp;hide=Y" target="_blank">rigged committee</a>.</p>
<p>HK is probably the only place in the world that seeks to combine the core 
civic freedoms of speech, assembly and the media with an authoritarian unelected 
Government. That's because the combination is unsustainable. Take a look at this table.</p>
<table class="numtable center">
	<tr>
		<td>&nbsp;</td>
		<td class="center"><em>Democracy</em></td>
		<td class="center"><em>No democracy</em></td>
	</tr>
	<tr>
		<td class="center"><br/><em>Civic freedoms</em></td>
		<td class="center">Most of the developed world &amp; much of the 
		developing world</td>
		<td class="center"><br/>HK</td>
	</tr>
	<tr>
		<td class="center"><br/><em>No civic freedoms</em></td>
		<td class="center"><br/>None</td>
		<td class="center">China, North Korea, Iran, Cuba, Syria,  
		absolute monarchies and other dictatorships</td>
	</tr>
</table>
<p>There are plenty of regimes (mainland China included) that, for decades 
at a time, have been able to combine an absence of civic freedoms with a lack of 
democracy until the economics fail. In China's case, they trashed the economy 
for 30 years from 1949 until the people could take no more, and then spent the 
last 35 years partially rebuilding it with the partial introduction of free 
market principles (no miracle there, just recovery).</p>
<p>Then there are open democracies that have been 
politically stable for centuries, because they can hold their leaders 
accountable for economic failure, and indeed they have maintained stability by 
broadening the electoral franchise and devolving power.</p>
<p>But in the other two quadrants, there are no examples of sustainably 
combining civic freedoms with authoritarian rule, nor are there any true 
democracies which sustainably crush freedoms of speech and the media, because 
the people won't re-elect leaders who do that.</p>
<h3>The way out</h3>
<p>In a 12th-hour media conference last Thursday (2-Oct-2014), with massive 
crowds in Admiralty calling for his resignation after the tear gas and riot 
police were deployed the previous Sunday, the Chief Executive
<a href="http://www.info.gov.hk/gia/general/201410/03/P201410030047.htm" target="_blank">
appointed</a> the Chief Secretary to meet with the protesters and discuss 
constitutional development. But he said:</p>
<blockquote>&quot;We should work within the framework of the decision of 
the NPCSC and so on, so forth. Only do we follow the provisions of the Basic Law 
and the decisions of the NPCSC can we have universal suffrage in 2017.&quot;</blockquote>
<p>Now to recap, on 6-Apr-2004 during the debate over whether we could have 
universal suffrage in 2007, the NPCSC issued an
<a href="http://www.gld.gov.hk/egazette/pdf/20040805e/es22004080554.pdf" target="_blank">
interpretation</a> of the Basic Law laying out the &quot;five-step method&quot; for future reforms. It 
said:</p>
<ul>
	<li>The Chief Executive of the HKSAR shall make a report to the NPCSC as 
	regards whether there is a need to make an amendment;</li>
	<li>The NPCSC shall, in accordance with the provisions of Article 45 of the 
	Basic Law make a determination <strong>in light of the actual situation</strong> 
	in the HKSAR and in accordance with the principle of gradual and orderly 
	progress;</li>
	<li>The bill on the amendment shall be introduced by the HKSAR Government 
	into the Legislative Council (where it requires a two-thirds majority to 
	pass);</li>
	<li>The Chief Executive shall then approve (or reject) the amendent;</li>
	<li>Finally the NPCSC shall approve (or reject) the amendment.</li>
</ul>
<p>
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_4.html" target="_blank">
Article 45 of the Basic Law</a> says in relevant part:</p>
<blockquote>&quot;The method for selecting the Chief Executive shall be 
specified <strong>in the light of the actual situation</strong> in the Hong Kong 
Special Administrative Region and in accordance with the principle of gradual 
and orderly progress. The ultimate aim is the selection of the Chief Executive 
by universal suffrage upon nomination by a broadly representative nominating 
committee in accordance with democratic procedures.&quot;</blockquote>
<p>But when you read the CE's
<a href="http://www.2017.gov.hk/filemanager/template/tc/doc/report/ce_report.pdf" target="_blank">
report to the NPCSC</a> issued on 15-Jul-2014, it is quite evident that the 
current &quot;actual situation in HK&quot; has either changed since then, or he failed to 
get it right the first time. In fact, the report was so indecisive as to offer 
no advice to the NPCSC at all, even if they were seeking it, and Beijing came 
down hard with its own decision.</p>
<h3>The talks and the options</h3>
<h4>The democratic option</h4>
<p>The talks scheduled for 4pm on Friday between the Chief Secretary and the 
protest leaders (or at least, the Federation of Students) will go nowhere unless 
the governments here and in Beijing are willing to accept that the &quot;actual 
situation in HK&quot; has either changed or was not accurately reflected in the July report, and 
that the decision of the NPCSC was therefore made on faulty information.</p>
<p>Following the 5-step framework laid down by the NPCSC in 2004, the CE should send a new 
or &quot;supplemental&quot; report to the NPCSC with a clear 
recommendation for a formula that would be acceptable to the majority of the 
public. For it to be acceptable, it has to walk and talk like democracy and give 
every candidate who meets the Basic Law criteria (aged over 40, resident for 20 
years, Chinese without a foreign passport), a fair chance to be nominated and elected.</p>
<p>The recommendation does not need to go outside the Basic Law. It can continue 
to use a nominating committee rather than direct civic nomination, but it does 
need to contain a reasonable threshold for any candidate to be nominated by the 
1200-member committee, such as the 12.5% used in 2012 and not the 50% majority proposed by the NPCSC in its latest 
decision. That's not nomination, that's pre-election.</p>
<p>The Chief Executive and Beijing have one last chance to take the moral high 
ground and regain the confidence of the HK people. By the CE making a fresh 
report, and the NPCSC making a fresh decision, they can show that the &quot;two 
systems&quot; model is alive and well, and that, just as HK is a laboratory for RMB internationalisation, 
it will be a laboratory for democratisation, with the rest of China to follow 
when it is ready.</p>
<h4>The draconian option</h4>
<p>The alternative, of course, is for HK to join mainland 
China in the bottom-right quadrant of our table - non-democratic and no civic 
freedoms. That would involve tearing up the Basic Law, co-opting the judiciary, 
directing the media, filtering the internet and jailing dissidents after pushing 
through a heavy-handed piece of Article 23 national security legislation. Hey 
presto, no more protests (or at least, no more <em>reported</em> protests), and 
no more Webb-site, because we could only say what the Government thinks. The 
economy would be badly hit, and any economic impact that the protests have had 
would be miniscule by comparison.</p>
<p>It's worth noting that even if the Sino-British Joint Declaration is upheld, 
it only promises the &quot;two systems&quot; model for another 32.7 years until 
30-Jun-2047. We will need to know pretty soon, in the next 10 years or so, if 
China is leaning towards implementing its one system and removing civil 
liberties in HK in 2047, because it will start to impact confidence when making 
long-term investments. The outcome of the current struggle for democracy will 
tell us a lot about where we are headed, and by extension, where China is headed 
(if its leadership retains power).</p>
<p>The hope in 1984 was that by 2047, China would be a prosperous, open, 
democratic society, including HK seamlessly. So far, we are almost half-way 
through that 63-year forecast, but China has only about 20% of developed-world 
prosperity and none of the civil liberties. It probably won't get past 40-50% of 
developed-world prosperity without introducing those liberties. The only 
exceptions to that rule have been small, energy-rich kingdoms.</p>
<h4>The unsustainable option</h4>
<p>The two governments may be operating on the assumption that they can drag out 
the talks, clear the streets in the middle of one night and arrest a few hundred 
remaining protesters, and then press on with trying to implement the NPCSC's 
decision. That would be a mistake. Even if they can temporarily clear the 
streets and twist the arms of 4 of the 27 pan-democratic legislators to achieve 
the 2/3 majority of the 70-seat assembly, this would not resolve the real 
problem, that the Government lacks the legitimacy of an electoral mandate and 
therefore suffers from constant policy paralysis.</p>
<p>That policy paralysis, and the occasional spasmodic populist policies and 
interventions, are undermining the economy. You cannot have a free market 
without having free competition for the leaders and policies which allow it to 
function.</p>
<p>The protesters have broken and occupied new ground and found new 
confidence - if an issue has wide enough support, and democracy surely does, 
then the Government can no longer expect to contain dissent in carefully planned 
and authorised Sunday marches from A to B. If the democracy problem is not 
resolved now, then it will have to be revisited in future large-scale 
unauthorised protests. Next time it would be more coordinated - remember that it 
was accidental that it began when and how it did at Tamar - HK has actually 
functioned around this blockage pretty well.</p>
<p>So HK really only has 2 choices - either step up to democracy and join the 
top-left quadrant, or remove civic freedoms and join China in the bottom-right 
quadrant. Staying where we are, with recurrent protests and an illegitimate 
government, is not a sustainable choice.</p>
<h3>Reforming the committee is a subsidiary issue</h3>
<p>In the talks, the Government may seek to stay within the confines of the NPC's 31-Aug 
decision and deflect the argument by offering psuedo-reforms to the composition of the 
sub-sectors of the nominating committee or the ways in which its members are 
elected. While there is certainly a lot of room for improvement there (for 
example, abolition of voting by companies), in no way would that address the 
core issue of the nomination threshold.</p>
<p>Suppose for the sake of argument that the entire nominating committee 
was selected at random from the adult population, which is as &quot;broadly 
representative&quot; as you can get. It would then be equally unfair to both 
pro-Beijing and pro-democracy candidates that they should have to obtain 
majority support of the nominating committee before they can enter a general 
election. This would still amount to a pre-election rather than a nomination.</p>
<p>And of course, these psuedo-reforms would have to be false, because if China 
won't lower the nomination threshold, then it won't allow the nominating 
committee to be so broad that it might only pre-elect pan-democratic candidates, so 
the nominating committee would have to stay rigged.</p>
<h3>Sorry to drone on</h3>
<p>Finally we could not end this article without including the amazing Youtube 
video by Nero Chan, an amateur drone operator in HK, which gives you some idea 
of the scale of the peaceful protests last Tuesday, the third night of the 
protests.</p>
<div class="videobox">
	<iframe src="//www.youtube.com/embed/daB4npvO36w?rel=0" allowfullscreen></iframe>
</div>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
				<li><a href="/dbpub/subject.asp?c=27">Politics</a></li>
				
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