
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

<script type="text/javascript">document.title="Moving on from Occupy to the Central Issue";</script>

	<div class="summary">The protesters have overstayed their welcome in Admiralty. They should withdraw and set a new deadline for C Y Leung to do the right thing: send a new report to the NPCSC, recommending restoring the nomination threshold to 12.5% from 50%. That would achieve free and fair elections without civic nomination. After all, only 305 members of the 1200-member committee nominated him in 2012. A New Year's Day march should celebrate or protest his choice. Sign the petition!</div>

<h2 class="center">Moving on from Occupy to the Central Issue<br>
<span class="headlinedate">7 December 2014</span></h2>
<p>Someone should take former Secretary for Insecurity <a href="../dbpub/positions.asp?p=14748">Regina Ip Lau 
Suk Yee</a> to task for today's
<a href="http://www.scmp.com/print/comment/insight-opinion/article/1656297/protesters-must-abandon-fantasy-hong-kong-race-free-mainland" target="_blank">
opinion piece</a> in the SCMP. So we will. Mrs Ip is the person, you will 
remember, who was
<a href="http://www.scmp.com/print/news/hong-kong/article/1299092/vote-chief-executive-must-be-wide-open-says-regina-ip" target="_blank">
quoted</a> just 15 months ago, on 24-Aug-2013 (<em>Vote for chief executive must 
be wide open, says Regina Ip</em>) as follows:</p>
<blockquote>&quot;She told the South China Morning Post the dividend 
brought by universal suffrage, such as a stronger mandate for chief executive, 
would be lost if the electoral or nominating methods were rigged to rule out 
some candidates.&quot;</blockquote>
<p>Quite right, and it also suited her interest in becoming CE. Like any 
potential 
candidate, she should have a fair opportunity. But Mrs Ip is someone who changes 
her tune more often than a jittery jukebox, and she now prefers her chances under a 
rigged election, if the British-trained bureaucrat can
<a href="http://news.xinhuanet.com/english/china/2014-09/19/c_133656988.htm" target="_blank">
ingratiate herself with Beijing</a> first. She says that the Occupy protest is 
&quot;not really about democracy&quot; and opines:</p>
<blockquote>&quot;Occupy is an attempt to redefine &quot;one country, two 
systems&quot; and, by implication, Hong Kong's relationship with China. By rejecting 
the decision of the National People's Congress Standing Committee of August 31, 
which ensures Beijing's say on the outcome of the chief executive election in 
2017 via the nominating committee, the Occupy demonstrators are effectively 
saying no to China's sovereignty over Hong Kong.&quot;</blockquote>
<p>No, Mrs Ip, they are not saying that. The protesters, like the majority of HK 
people who have voted for pan-democrat candidates in every Legislative Council 
election since the Handover, just want what they were promised: universal 
suffrage to elect their own leader, as a highly autonomous Special 
Administrative Region of China. Yes, that is a call for self-determination, but 
no, it is not a call for independent sovereignty. She fails to mention that 
&quot;Hong Kong People ruling Hong Kong&quot; is exactly what we were promised. Look no 
further than the Government's &quot;<a href="../codocs/BLfactSheet141207.pdf" target="_blank">Hong 
Kong: The Facts</a>&quot; sheet:</p>
<blockquote>&quot;The Basic Law is a constitutional document for the 
HKSAR. It enshrines within a legal document the important concepts of 'one 
country, two systems', 'a high degree of autonomy' and 'Hong Kong People ruling 
Hong Kong'.&quot;</blockquote>
<p>You cannot have true democracy if someone else picks your leader, or 
eliminates popular candidates before the election. The nomination threshold for 
the Chief Executive has until now been 1/8 (12.5%) of the Election Committee, 
and Beijing wants to quadruple that to 50%, principally because the CPC-Tycoon 
coalition that forms a majority of the committee would no longer elect the 
winner, so it must have a right to veto any candidate, or as Mrs Ip put it 
&quot;ensure Beijing's say on the outcome of the chief executive election&quot;.</p>
<p>The &quot;Hong Kong People&quot; want to elect their own leader, just like the peoples 
of California or Florida do when they elect their Governor, without the US 
Government having to approve the candidates. They have a high degree of autonomy within the USA, not absolute autonomy. They don't have sovereignty. The same is true 
of all federal countries, and of places like Scotland within the United Kingdom.</p>
<p>The protesters have undoubtedly overstayed their very popular welcome in 
Admiralty, with a clear majority in opinion polls saying they should end. 
However, there is also a clear majority who support the <em>reasons</em> the 
protesters 
are there in the first place. Of those who express a view, the majority of HK 
people have repeatedly said that the NPCSC proposal of 31-Aug-2014 is not just 
bad, but <u>so bad</u> 
that the Legislative Council should veto it and implicitly hold out for 
something better, rather than pocket fake democracy and have a chance to vote 
for the least-unpopular Beijing-approved candidate. In the latest
<a href="http://www.com.cuhk.edu.hk/ccpos/research/1411TaskForce_SurveyResult_141117_English.pdf" target="_blank">
CUHK poll</a> taken on 5-11-Nov-2014, 56.4% of those who expressed a view said 
LegCo should veto the proposal (table 6). Amongst the remainder there are surely 
many who would prefer something better but would take what they can get.</p>
<p>In his
<a href="http://www.scmp.com/print/news/hong-kong/article/1657124/cy-leung-refuses-student-calls-restart-political-reform-process-2017" target="_blank">
latest patronising remarks</a> today, Chief Executive Leung Chun Ying again 
ruled out sending a new report to the NPCSC asking for a fresh decision and said:</p>
<blockquote>&quot;Students who are on hunger strike and other 
students taking part in the Occupy protest are not familiar with, first the 
content of the Basic Law, second the decision handed down by the NPCSC and more 
importantly third, the process of political reform.&quot;</blockquote>
<p>They are very familiar with it, Mr Leung, as are the constitutional law 
experts who advise them, and as are you. They know that it is entirely within 
your rights, as Chief Executive, to send a new report to the NPCSC, whenever you 
feel it is appropriate. This would not be a complete restart, because you have 
already held a consultation and would not need to repeat that. All you need to 
do is properly reflect the &quot;actual situation&quot; in HK. To quote the NPCSC
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/images/basiclawtext_doc18.pdf">
interpretation</a> of 6-Apr-2004:</p>
<blockquote>&quot;The Chief Executive of the Hong Kong Special 
Administrative Region shall make a report to the Standing Committee of the 
National People's Congress as regards whether there is a need to make an 
amendment; and the [NPCSC] shall...make a determination in the light of the 
actual situation in the [HKSAR]&quot;.</blockquote>
<p>If you don't think there has been a change in the &quot;actual situation in the 
HKSAR&quot; since you started the consultation exercise on 4-Dec-2013, then you 
haven't been watching the news. The Umbrella Movement has made it plain and 
clear that the Hong Kong People are out of patience with being ruled by a leader 
without a popular electoral mandate. They want a Government that is led by the 
most popular candidate and who can work with a fully-elected legislature to get 
things done.</p>
<p><strong>So do the right thing, Mr Leung. Send a new report to the NPCSC, 
advising them to restore the nomination threshold to 12.5% from 50%. Don't 
forget that you were only </strong>
<a href="http://www.gld.gov.hk/egazette/pdf/20121611e/egn2012161110.pdf" target="_blank">
<strong>nominated</strong></a><strong> by 305 members of the 1200-member 
committee in 2012, while 578 members nominated someone else. The majority of HK 
people would undoubtedly see restoration of the 12.5% threshold as providing 
free and fair elections, without introducing civic nomination and without any 
amendment to the Basic Law.</strong></p>
<p>The protesters should now clear the streets, and give the Chief Executive a 
reasonable time, we suggest until 1st January 2015, to send this new report to 
Beijing. A further march should now be organised for that day, to either 
celebrate that he has, or protest that he has not, sent that report. Simply 
pushing on with &quot;phase 2&quot; and rearranging the Nominating Committee would be like 
rearranging the deck chairs on the Titanic. With a 50% approval threshold, it is 
never going to produce a free and fair election.</p>
<p><strong>
<a href="https://secure.avaaz.org/en/petition/Hong_Kong_Chief_Executive_Leung_Chun_Ying_Send_a_new_report_to_the_NPCSC_asking_for_true_democracy_in_HK/" target="_blank">
Sign the petition for C Y Leung to send a new report to the NPCSC</a></strong>. 
Your e-mail address will not be disclosed.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=14748">Ip Lau, Regina Suk Yee</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1680">Leung, Chun Ying</a></li>
				
		</ul>
	
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