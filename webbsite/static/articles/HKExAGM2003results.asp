
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

<script type="text/javascript">document.title="HKEx AGM Shake-up";</script>

	<div class="summary">We look back on an eventful evening on the floor of the Hong Kong Stock Exchange, as shareholders seized their first chance to shake up the board of HKEx, electing the first investors, including Webb-site.com editor David Webb, to serve on the board, and rejecting 5 out of the 8 broker candidates, 3 of whom were incumbent directors recommended by the board.</div>

<h2 class="center">HKEx AGM Shake-up<br>
<span class="headlinedate">16 April 2003</span></h2>
<p>It was a fun-packed evening at the annual general meeting of Hong Kong 
Exchanges and Clearing Ltd (<b>HKEx</b>) yesterday, held on the trading floor of 
the Stock Exchange which it owns. We've always wondered what a &quot;seat on the 
Stock Exchange&quot; would be like, and now we can tell you - they are made of hard, 
red plastic and rather uncomfortable.</p>

<p>The evening began with your editor David Webb asking why, as a public listed 
company, the meeting was not open to media observers, and what kind of example 
this set for transparency to other listed companies, which HKEx currently 
regulates. We also pointed out that HKEx was perhaps the only listed company 
with its own viewing gallery overlooking the proceedings. After some debate, and 
our citation of Bank of East Asia and HSBC for allowing media observers, 
Chairman Charles Lee reluctantly agreed, and the doors of the Exchange (or at 
least, the windows of the viewing gallery) were flung open to the media. Score 
one for the public interest!</p>

<p>Next, the Chairman asked the meeting if we could skip straight to the 
election of directors, item 3 on the agenda, as this was going to involve a poll 
(a tally of shares voted) and would take some time. Your editor then suggested 
that it would be better to handle items 1, 2, 4 and 5, which were relatively 
non-controversial, before moving to item 3, as we would then be seeking an 
adjournment, and in any case, we would require a poll on all resolutions anyway, 
in accordance with our <a target="_blank" href="projectpoll1.asp">Project Poll</a>, 
which is aimed at abolishing the Victorian show-of-hands system in listed 
companies, a system which ignores proxy votes. The Chairman quickly claimed that 
this polling was what they were planning to do anyway, but decided that the 
meeting would still handle item 3 first.</p>

<h3>Moving for adjournment</h3>

<p>At that point, we reminded the Chairman of his fiduciary duty to all 
shareholders and explained that it would not be fair to all shareholders to hold 
this election without allowing sufficient time for them to vote on the complete 
list of candidates. We pointed out that the clearing system was only open for 
voting for 3 days after the last three candidates had been named (one, David 
Parker, dropped out after a day), and this would surely not be enough time for 
everyone to vote. For details of this complaint, see our previous article,
<a target="_blank" href="adjournHKExAGM.asp">HKEx should Adjourn the AGM</a>.</p>

<p>Stanley Chow, for Allen and Overy, legal advisers to the board, then opined 
that it was <i>&quot;theoretically possible&quot;</i> for institutional shareholders to 
have voted in the 3-day window. And most improbable, we thought. From the floor, 
Walter Reisch, the Vice President of Clearing at HKEx, which processes incoming 
votes from custodians, banks, brokers and investors, then said that &quot;about 200 
million&quot; shares had been voted on the 2 new candidates, but then declined to 
tell us how many shares had been voted on the first 8 candidates, which figures, 
as we will show below, would have made our point. By giving only half the 
picture, he was in fact arguing against the interests of many of the ultimate 
clients of his clearing company around the world, who would have favoured an 
adjournment so that they had time to vote.</p>

<p>The Chairman declined to exercise his right under Article 69(2)of the
<a target="_blank" href="http://www.hkex.com.hk/exchange/asso/0316news1-hkec-ma.doc">
Articles of Association</a> to adjourn the meeting. We were then left with no 
option but to seek to defend the voting rights of absent shareholders. So we 
played our trump card. As a shareholder, we proposed a motion under Article 
69(1) that the meeting &quot;direct&quot; the Chairman to adjourn the meeting for 14 days 
until 4.30pm on 29th April. We demanded a poll on the adjournment motion. Under 
article 71(2), such a poll must be taken <i>&quot;immediately and without 
adjournment&quot;.</i></p>

<p>Much head-scratching ensued on the flummoxed board as the realisation 
gradually dawned on them that they would have to comply. Someone asked if we 
could do the other business of the meeting first, and then adjourn. &quot;No&quot;, we 
said, the articles were quite clear, and besides, we had previously invited the 
Chairman to process the other items first, and he had declined.</p>

<p>So a pause followed while the scrutineers PriceWaterhouseCoopers headed off 
to fiddle with a word processor and came up with a voting form for the proposed 
adjournment, which the meeting then filled in. We didn't expect to win, but the 
outcome would demonstrate that only a small percentage of the company was 
represented at the meeting, and had pushed the election forward. Of course, the 
very shareowners who were disadvantaged by the lack of an adjournment were also 
unable to vote on the adjournment. The result of the poll on the adjournment 
were:</p>

<img class="center" alt="" src="../images/HKExAG1.gif">

<p>So we made the point that only 11% of the company was represented at the 
meeting and had decided to proceed.</p>

<p>Next, the meeting proceeded with the long process of reading out the 
resolutions for the election the directors. The board planned to adjourn for a 
poll on that, until we suggested that the meeting discuss all the other 
resolutions and then put them on the same poll, or else we would be there all 
night. The Chairman gladly agreed. Sometimes, one just has to point out the 
obvious.</p>

<h3>The unknown budget variable</h3>

<p>So on we went. On the dividend, we asked the board whether they had 
considered distributing surplus capital as a special dividend. Many observers 
have suggested that they may be sitting on too much cash, did the board agree? 
The Chairman replied that they have to take into account a number of factors, 
including risk management on the securities clearing business, and <i>&quot;projected 
strategic investment opportunities&quot;</i>, when deciding on the cash requirements. 
In essence, the board did not think they had surplus capital. We asked then, how 
much money did they &quot;project&quot; they would need for these investment 
opportunities, and did they have any such <i>&quot;opportunities&quot;</i> in mind? They 
replied that there was no specific figure in the projections, and no specific 
opportunities - which raises the obvious question - how can you include an 
unknown figure in a budget, and then know that you have no spare cash? It is 
mathematically impossible.</p>

<h3>Auditors</h3>

<p>On the reappointment of auditors, you will be happy to learn that the only 
non-audit work performed by PriceWaterhouseCoopers was tax compliance work, for 
a fee of $564,000. We always ask this question at every listed company whose AGM 
we attend, because there is increasing concern about conflicts of interest. We 
were satisfied that in this case, there were none.</p>

<h3>Project Vampire begins to bite</h3>

<p>As regular readers know, we have been campaigning to amend the Listing Rules 
which allow directors to choose who owns the company by granting them a mandate 
to issue new shares up to 20% of existing shares, to whomever they choose at any 
discount they choose. Unnoticed by the market, one small listed company has 
already complied with our recommendations to reduce the mandate as made in
<a target="_blank" href="vampire1.asp">Project Vampire</a>, and we will give them a fanfare in a 
day or two, as promised. We hope others will follow their lead.</p>

<p>Meanwhile, HKEx has continued to seek the maximum authority to issue new 
shares under its own listing rules. So we opposed that, and as the results show, 
there is increasing opposition to this management proposal by listed companies. 
As the year moves on, we expect more investors to wake up to the damage that 
the general mandate can do to their ownership rights, and vote against the 
mandate in annual general meetings of other listed companies.</p>
<p>Here are the results of the board's proposals:</p>
<img class="center" alt="" src="../images/HKExAG2.gif">

<p>It is notable that two of the above proposals (the dividend and paying fees 
to the directors) received about 50m more votes in total than the other 
resolutions, which makes us wonder whether those investors really understood the 
other proposals, which are more technical in nature, or simply chose to abstain 
on them.</p>

<h3>The Elections</h3>

<p>Now we come to the sweetest part. There was a contest by 10 candidates for 6 
seats on the board. 8 of the candidates were included in the original
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030321/LTN20030321067.pdf">
shareholder circular </a>published on 21-Mar-03, included 7 recommended by the 
board, and David Webb, who wasn't recommended, but was
<a target="_blank" href="HKExciting.asp">proposed</a> by a shareholder. The 7 
candidates recommended by the board included all 6 incumbent broker directors, 
plus Oscar Wong, CEO of BOC-Prudential Asset Management Ltd. The final two 
candidates, each proposed by a shareholder, were included in a second
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030408/LTN20030408066.pdf">
shareholder circular</a> published last Tuesday, 8-Apr-03.</p>

<p>The board decided that the winners would be determined by net votes, being 
votes in favour minus votes against each candidate. Only those with a net 
positive vote would be elected, and if there were more than 6 with a net 
positive vote, then the top 6 would be elected. Here's the result:</p>

<img class="center" alt="" src="../images/HKExAG3.gif">

<p>This is remarkable on several counts:</p>

<ul>
  <li>3 of the 6 incumbent broker-directors recommended by 
the board were rejected by shareholders</li>
  <li>5 of the 8 broker candidates were rejected by 
shareholders</li>
  <li>The only investor recommended by the board, Oscar 
Wong, scored the highest net votes. Even if you deduct the 40m&nbsp; shares he 
says employer Prudential owns and voted for him, he still polled well.</li>
  <li>The other investor, David Webb, who stood without 
recommendation of the board and owns just 10 shares, was elected by shareholders. This is the first time 
we can recall a minority shareholder proposal being passed in a general meeting 
of a Hong Kong listed company.</li>
</ul>

<p>It goes against the grain for institutional investors to oppose management, 
and they only do so if they feel very strongly, so this sends a clear message 
that shareholders have had enough of the way HKEx has been run by vested 
interests, including the brokers who have held all the elected seats since the 
company was listed, at which time they owned 100% of it. Many have since sold 
their shares, and yesterday's election marks at least the beginning of the end 
of broker dominance which has impeded market development.</p>

<p>Readers will also note that the last two candidates proposed last week, Henry 
Chan and Kenneth Lam, scored bottom, but also that the total votes cast on their 
resolutions was 197 and 168m, far fewer than the other 8 candidates, who had 
total votes of 287-364m. Clearly then, our point that many investors were 
excluded from voting by the short timetable was well made, although with 
hindsight their defeat would probably have been even greater if everyone had 
enough time to vote.</p>

<p>Judging by the total votes cast, it's a fair bet that Prudential voted their 
40m shares in favour of only their own candidate Oscar Wong, against Yue Wai 
Keung and John Seto, and abstained on the others in the original batch of 8.</p>

<p>Only 5 candidates were elected, so the Board will fill the remaining vacancy 
by appointment, probably at its first meeting this afternoon. David Webb will 
propose candidates who we believe will act independently of vested interests and 
in the public interest, and hopefully we will then have at least 3 out of 13 
directors who have some influence in pushing reform forward.</p>

<p>Late last night, the Government belatedly
<a target="_blank" href="http://www.info.gov.hk/gia/general/200304/15/0415242.htm">
announced</a> its six appointees to the board, 3 of whom have been given only 1 
year terms and the rest, two year terms. It is to be hoped that this will pave 
the way for the transition of HKEx as it is relieved of the regulatory role by 
implementation of the <a target="_blank" href="hkexpublic.asp">Expert Group 
recommendations</a>, and can focus on its commercial activities of building a 
better exchange, and the number of government appointees can then be reduced in 
favour of a board elected by shareholders.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
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