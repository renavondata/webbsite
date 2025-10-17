
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

<script type="text/javascript">document.title="NPCSC poll results: not much optimism";</script>

	<div class="summary">The results of the Webb-site Opinion Poll on "NPCSC decision - pocket or not" show that the opponents of the NPCSC proposal don't want to get stuck with it, but they don't expect a veto will produce a better offer for 2022.  Meanwhile the proponents recognise that the current offer is fake democracy, but they think it is worth taking in the hope of real democracy later.</div>

<h2 class="center">NPCSC poll results: not much optimism<br>
<span class="headlinedate">10 February 2015</span></h2>
<p>The Webb-site Opinon Poll on "NPCSC decision - pocket or not" closed at 6pm 
on Friday, 6-Feb-2015. We can now analyse the
<a href="../vote/result.asp?p=49" target="_blank">results</a>.</p>
<p>The first question was whether the Legislative Council should approve the 
proposal of the National People's Congress Standing Committee (<strong>NPCSC</strong>) 
to introduce universal suffrage in 2017 on the basis that the 2 or 3 candidates 
are first approved by a majority vote of the 1200-member Nominating Committee. 
Of 696 respondents, 34.2% say yes, 61.8% say no, and 4.0% were undecided. This 
is probably why the Government would not put this question to the general public 
in its own referendum ahead of the LegCo vote, as no opinion poll has yet shown 
a majority in favour.</p>
<p>The second question was whether the NPCSC proposal is what the World would 
recognise as free and fair elections. Only 11.4% said yes, 81.5% said no, and 
7.1% were undecided.&nbsp; When we
<a href="../vote/crosstab.asp?pq1=210&amp;pq2=209" target="_blank">
cross-tabulate with question 1</a>, we can see that, even among those who 
thought that LegCo should approve the proposal, only 31.1% thought the World 
would regard it as free and fair elections while 49.2% did not and 18.1% were 
undecided.</p>
<p>The third question was, if the proposal is approved, what difference would 
this make to HK's economic performance? 19.2% said better, 32.4% said worse, 
38.3% said no difference, and 10.1% were undecided. Looking at the
<a href="../vote/crosstab.asp?pq1=211&amp;pq2=209" target="_blank">cross-tab 
with question 1</a>, the views were highly correlated; of those who thought 
LegCo should approve the proposal, 52.9% thought this would improve the economy 
while 2.5% said it would not, while of those who thought LegCo should veto the 
proposal, only 1.2% thought the proposal was positive for the economy while 
50.0% said it would make things worse.</p>
<p>The fourth question was, if the proposal is approved, then do you think 
Beijing would improve it further for 2022? Only 21.1% thought that there would 
be further improvements in 2022, while 66.6% said no and 12.3% were undecided. 
Now look at the
<a href="../vote/crosstab.asp?pq1=212&amp;pq2=209" target="_blank">cross-tab 
with question 1</a>. Of those who thought that LegCo should approve the 
proposal, 55.0% thought that if it was approved then Beijing would improve it 
further in 2022, 22.7% said Beijing wouldn't, and 21.8% were undecided.</p>
<p>Among those who said LegCo should veto the proposal, only 3.0% thought 
that if it was approved, then it would lead to further improvements in 2022, 
while 89.8% thought that if it was approved, then it would be left unchanged in 
2022. This suggests that one of the strongest reasons why people think LegCo 
should veto the proposal is that if they instead approve it then we will be 
stuck with the same arrangement in 2022.</p>
<p>But what if LegCo rejects the proposal? The fifth question was, if the 
proposal is rejected, then would Beijing eventually make an offer of reforms for 
the CE election in 2022, and if so, would it be better than the offer they are 
currently making? In those circumstances, 13.4% of respondents thought that a 
better offer would be forthcoming for 2022, 28.2% said it would be the same 
offer, and 38.6% thought there would be no offer at all. 19.8% were undecided.</p>
<p>In the <a href="../vote/crosstab.asp?pq1=213&amp;pq2=209" target="_blank">
cross-tab with question 1</a>, of those who want LegCo to vote down the 
proposal, they are not optimistic about getting a better deal in 2022. Only 
20.5% thought this would lead to a better offer for 2022, 23.0% said it would be 
the same offer, 33.0% said there would be no offer and 22.6% were undecided. 
This perhaps indicates the difficulty of the task ahead and of future governance 
under our <a href="twooptions.asp">unique combination</a> of civil 
liberties with a lack of what the World would recognise as democracy.</p>
<p>The opponents of the NPCSC proposal don't want to get stuck with it, 
but they don't expect a veto will produce a better offer for 2022.&nbsp; 
Meanwhile the proponents recognise that the current offer is fake democracy, but 
they think it is worth taking in the hope of real democracy later.</p>
<p>We will submit this report and poll results to the
<a href="http://www.legco.gov.hk/general/english/panels/yr12-16/ca.htm" target="_blank">
Panel on Constitutional Affairs</a> of the Legislative Council.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
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