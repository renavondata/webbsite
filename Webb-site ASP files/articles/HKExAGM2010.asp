
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

<script type="text/javascript">document.title="HKEx AGM: veto item 7";</script>

	<div class="summary">We urge shareholders of HKEx (0388) to veto a proposed change to the Articles of Association which would damage good governance and facilitate the stifling of dissenting views. We speak from first-hand experience. HKEx is setting a bad example to the companies it regulates, and the rot should stop now. In passing, we also cast an eye on the ongoing CITIC Pacific case.</div>

<h2 class="center">HKEx AGM: veto item 7<br>
<span class="headlinedate">11 April 2010</span></h2>
<p>The Annual General Meeting of Hong Kong Exchanges and Clearing Ltd (<strong>HKEx</strong>, 
0388) will be held on 22-Apr-2010. The circular, including the notice of meeting 
on pages 4-8, is
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100317/LTN20100317122.pdf" target="_blank">
here</a>. </p>
<p>Webb-site.com has no objection to the first 6 items on the agenda, but urges 
shareholders to <strong>vote against item 7</strong>, the last item on the list, 
which proposes changes to the
<a href="http://www.hkex.com.hk/eng/exchange/org/Documents/hkex_articles.pdf" target="_blank">
Articles of Association</a>. This is a Special Resolution, so it needs 75% 
approval of shares which vote. Two parts of this proposal are not objectionable, 
relating to the use of electronic communications with shareholders, and the 
nomination period for candidates for directors (although the Listing Rules in 
this respect should be amended, but that's another topic). However, because it 
contains a toxic element, the bundle must be rejected.</p>
<p>The part that is highly objectionable and damaging to good 
governance is the proposal to allow the board to pass written resolutions, 
without a board meeting, by obtaining written approval from a simple majority of 
directors. Currently, the articles, in common with most listed companies, allow 
written resolutions only if they are unanimous. That is the way it should be, 
because:</p>
<ul>
	<li>if something is important enough to require board-level approval, then 
	that approval should only be given after the board has had an opportunity to 
	discuss it;</li>
	<li>if any director has objections to a proposal, then he should have the 
	opportunity to convince his fellow directors that he is right and they are 
	wrong, in boardroom discussion;</li>
	<li>obviously, if everyone is in agreement with a proposal then there would 
	be no debate even if a board meeting was convened, so in these 
	circumstances, a written resolution signed by each director is acceptable;</li>
	<li>if any director cannot be contacted to obtain his written consent and 
	the matter is urgent, then a board meeting can be convened instead, on short 
	notice (sometimes just a few hours' notice are given). Those who can attend, 
	in person or by phone, will form a quorum and decide the matter.</li>
</ul>
<h3>Even worse for HKEx than others</h3>
<p>On top of the reasons above, which apply to any company, HKEx has a unique 
governance structure in which only 6 out of its 13 directors can be elected by 
shareholders. Another 6 are appointed directly by Government, and the remaining 
1 is the Chief Executive, who is appointed with the approval of the Securities 
and Futures Commission, the directors of which in turn are appointed by the 
Government.</p>
<p>So the proposal to allow passing of resolutions by 7 directors is, in 
effect, a proposal to tighten government control and stifle dissenting views. 
With the block votes of 6 government-appointed directors plus the Chief 
Executive, or just one of the other directors, the Government can pass 
proposals, and there would be no record in the board minutes of dissenting 
views, because there would be no board minutes without a board meeting. </p>
<p>This is not just a theoretical risk. Your editor, David Webb, was a 
shareholder-elected director of HKEx from 2003-2008. Without divulging 
confidential details, we can tell you that there were at least two occasions on 
which he objected to circulated proposals, and as a result they were discussed 
in a board meeting instead, because that's what the Articles require. One of 
those proposals regarded a matter on which he had been in the
<u>majority</u> view at the previous board meeting. The 
proposal related to a matter which involved another Government body and 
Government policy. Subsequent to the meeting, the Government-appointed directors 
made a U-turn (after the Chairman discussed it with Government ministers) and 
the revised, reversed position was circulated for board approval. Webb objected 
and, at the subsequent meeting, the proposal was approved after vigorous debate, 
by 9 to 3. The Government-appointed directors each considered that they did not 
have a conflict of interest in voting on this matter, even though it related to 
Government policy and 4 of them were Executive Councillors (cabinet members) 
under a duty of &quot;collective responsibility&quot; to support it.</p>
<h3>Calling a board meeting is easy</h3>
<p>The quorum (the number needed to do business) for an HKEx board meeting is 
just 4 directors, which should not be difficult to achieve, since they could all 
phone in, and if you cannot contact 4 directors by phone then you are unlikely 
to be able to get 7 to sign something anyway. However, at least half of those 
present must be Government-appointed, just in case the independent 
shareholder-elected directors start acting too independently.</p>
<p>HKEx, in proposing this amendment to <span lang="en-gb"></span>its articles, 
is also setting a bad example to the market which it is supposed to regulate 
through its subsidiary, the Stock Exchange of Hong Kong Ltd. We don't want other 
companies behaving this way, so we must stop the rot. The feeble justification 
HKEx offers in the circular is:</p>
<blockquote>&quot;decision making by way of a resolution in writing is of no 
avail if any of the Directors or committee members are not contactable, or are 
unable to sign for reasons such as being away from Hong Kong&quot;</blockquote>
<p>This does not hold even a thimble of water. First of all, there is this 
modern invention called the telephone, by which one can attend a short-notice 
board meeting without being here, and a more recent invention called a &quot;fax 
machine&quot;, by which one can sign documents. If one of the directors is really 
uncontactable for more than a few hours, and there is an urgent matter, then a 
short-notice board meeting is the way to go. If HKEx was really concerned about 
not being able to contact one director, it would have proposed &quot;all but one&quot; or 
&quot;excluding any director who is known to be outside HK <u>and</u> 
not immediately contactable&quot;. That would give overseas directors a chance to 
answer the phone. But that's not what they are proposing. They also claim that 
the proposal will:</p>
<blockquote>&quot;help balance the pursuit of good corporate governance and 
timely decision making&quot;</blockquote>
<p>That's a false trade-off when you think about it. It makes &quot;good corporate 
governance&quot; sound like a hindrance to &quot;timely decision making&quot;, which it is not, 
and carries the implication that timely decision making is bad for corporate 
governance. Of course it isn't, but unilateral decision-making and the 
elimination of dissenting views and debate is indeed bad for corporate 
governance.</p>
<p>There have been a few occasions when a director has been incapacitated 
longer-term - for example, in 2008-2009 <a href="../dbpub/positions.asp?p=55">
Henry Fan Hung-ling</a> retained his government-appointed seat but
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2008/0810223news.htm" target="_blank">
excused</a> himself from board meetings and papers during the ongoing
<a href="../dbpub/articles.asp?p=379">CITIC Pacific</a> investigation. So he 
could not have signed any written resolution. He continued to accept his HKEx 
director's fee though, and when his term expired after the AGM on 23-Apr-2009, 
the Government did not reappoint him. Incidentally, we are still waiting for the 
outcome of the police investigation, which was &quot;still underway&quot; according to a
<a href="http://www.info.gov.hk/gia/general/201001/20/P201001200098.htm" target="_blank">
Legislative Council answer</a> on 20-Jan-2010. It's now more than a year since 
the police
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20090403/LTN200904031211.pdf" target="_blank">
searched the premises</a>. Perhaps the Department of Justice is having one of 
its &quot;<a href="http://www.info.gov.hk/gia/general/199902/04/0204140.htm" target="_blank">Sally 
Aw&quot;</a> moments. The longer we wait, the less credible the Government looks. If 
ever a case was black and white, this was it (<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20080912/LTN20080912310.pdf" target="_blank">page 
43 of the circular</a>)</p>
<p>But if HKEx really finds it inconvenient to have a director who can't direct 
but declines to resign, then there is a simple answer - remove him from the 
board. All the other directors can resolve to do that, or in the case of 
Government-appointed directors, they can't, but the Financial Secretary can 
(Article 94).</p>
<h3>Publish your M&amp;A</h3>
<p>Finding online the Memorandum and Articles of Association (<strong>M&amp;A</strong>) 
or Bye-laws of HK-listed companies, the most fundamental document of any 
company, is almost impossible. The Listing Rules now require that every listed 
company must have a web site. So the <strong>Listing Rules should be amended</strong> to require that every 
listed company puts its M&amp;A on its web site (preferably in the Corporate 
Governance section), and uploads a copy to HKEx as well, so we can find them in 
the
<a href="http://www.hkexnews.hk/listedco/listconews/advancedsearch/search_active_main.asp" target="_blank">
central depository</a> of company filings. Meanwhile, if you work for a listed 
company, do this voluntarily! We did manage to find a few M&amp;A though, and here 
they are:</p>
<table class="txtable center">
	<tr>
		<th>Company</th>
		<th>Written resolution</th>
		<th>Article</th>
	</tr>
	<tr>
		<td>Bank of East Asia</td>
		<td>Unanimous</td>
		<td>
		<a href="http://www.hkbea.com/FileManager/EN/Content_2971/bea%2520m&a%2520%2528e%2529_4.12.2009.pdf" target="_blank">
		108</a></td>
	</tr>
	<tr>
		<td>CLP</td>
		<td>Unanimous</td>
		<td>
		<a href="https://www.clpgroup.com/ourcompany/corporategovernance/framework/codespoliciesandguidelines/Documents/Articles109to1592.pdf" target="_blank">
		122</a></td>
	</tr>
	<tr>
		<td>HK Electric</td>
		<td>All except those absent from HK or incapacitated through ill health 
		or disability</td>
		<td>
		<a href="http://www.heh.com/NR/rdonlyres/8ABBB27F-6B2E-46CA-93C3-2F82C7108F08/0/MemAndArt2605063.pdf" target="_blank">
		134</a></td>
	</tr>
	<tr>
		<td>HSBC</td>
		<td>Unanimous</td>
		<td>
		<a href="http://www.hsbc.com/1/PA_1_1_S5/content/assets/investor_relations/090331a_manda.pdf" target="_blank">
		129.1</a></td>
	</tr>
</table>
<p>Finally, we note that in
<a href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/09CE5FD152D7B36EC8256480004327C9?OpenDocument" target="_blank">
Part 1 of Table A of Schedule 1</a> of the Companies Ordinance, which contains 
the standard Articles of Association for a public company incorporated in Hong 
Kong, Article 108 requires unanimous approval for written resolutions. So keep 
HKEx the same, and vote against item 7 at the AGM. </p>
<p>Webb-site.com understands that the leading voting advisory firm, 
Institutional Shareholder Services Inc. (a subsidiary of
<a href="http://www.riskmetrics.com" target="_blank">Riskmetrics</a>), has 
recommended its clients to vote against this resolution.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=379">CITIC Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
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