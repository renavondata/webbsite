
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

<script type="text/javascript">document.title="CITIC Pacific/ CLP AGM Roundup";</script>

	<div class="summary">It was a CITIC Pacific AGM with a few surprises - a Boto (0585) independent director reveals for the first time that he did not regard last year's deal as fair and reasonable - so why didn't he say so at the time? Meanwhile Project Vampire bites, as the public vote, excluding insiders, appears to be against the general mandate by a 55% majority. And we take a brief look at the CLP meeting.</div>

<h2 class="center">CITIC Pacific/ CLP AGM Roundup<br>
<span class="headlinedate">6 May 2003</span></h2>
<p>The Annual General Meeting of CITIC Pacific Ltd (<b>CITIC Pacific</b>, 0267) 
was the 6th AGM in <a target="_blank" href="projectpoll1.asp">Project Poll</a>, which has so far 
been successful in either demanding, or persuading the Chairman to demand, a 
poll at each meeting, so that unlike previous years, all proxy votes will be 
counted, 1 vote per share. While voting turnouts are still far too low, we are 
beginning to see results, as you will see below.</p>

<p>With Chairman Larry Yung Chi Kin (<b>Mr Yung</b>) on medical leave, it fell 
to managing director Henry Fan Hung-ling (<b>Mr Fan</b>) to kick off the meeting 
and he was duly proposed to chair it. Would shareholders, he asked, be demanding 
a poll on that? &quot;Not at all&quot;, we replied, as the election of a chair&nbsp; was 
entirely a matter of procedure, and not something that was included in the proxy 
form, so we had no objection to a show of hands.</p>

<p>So on we went, with Mr Fan duly enthroned, and he took the initiative of 
calling for a poll on each proposal, which saved <i>Webb-site.com's</i> 5 
shareholders from demanding one, as we had to do at yesterday's
<a target="_blank" href="../dbpub/articles.asp?p=341">CLP Holdings Ltd</a> (<b>CLP</b>, 0002) 
meeting.</p>

<h3>Speaking of CLP...</h3>

<p>Despite all its corporate governance awards, CLP does not yet extend 
transparency to the ballot box unless shareholders at the meeting demand a poll, 
and its executive directors are not subject to retirement by rotation, so owners 
never get to vote on them anyway. <i>&quot;But rest assured, we do <u>feel</u> 
accountable&quot;</i> shareholders were told - it's a bit like the Chief Executive of 
Hong Kong - accountable to his controlling shareholders, but not to the public 
at large through the ballot box. But CLP did agree to look at that point, so we 
look forward to that, hopefully sooner than we get to vote for a Chief Executive 
of Hong Kong, which won't happen until 2007 at the earliest.</p>

<p>We also encouraged the Kadoorie family to extend their corporate governance 
framework at CLP to The Hongkong &amp; Shanghai Hotels, Limited (0045), which they 
also control.</p>

<h3>A stunning revelation on Boto</h3>

<p>Now back to the CITIC Pacific AGM. As readers will know from our
<a target="_blank" href="0267AGM2003.asp">voting recommendations</a>, we opposed 
today's re-election of Alexander Reid Hamilton (<b>Mr Hamilton</b>) because we 
found him unwilling to listen or respond to the views of independent 
shareholders in the controversial <a target="_blank" href="../dbpub/articles.asp?p=4778">Boto</a> (0585) transaction 
last year, when the company sold all of its core businesses to a Carlyle-backed 
buyout vehicle. To recap, the first
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020403/LTN20020403015.doc">
announcement</a> of the original transaction stated:</p>

<blockquote>

<p>&quot;The Directors, including the independent non-executive directors, consider 
that the Consideration is fair and reasonable to [Boto]&quot;</p>

</blockquote>

<p>This raised a few eyebrows at the time because the directors had not yet 
received any independent financial advice. The transaction was later 
restructured and the consideration was modestly increased. At today's meeting, 
in his defence, Mr Hamilton said that after receiving the independent financial 
advice, he did not regard the transaction as fair and reasonable. This was a 
revelation so stunning that we didn't think to ask the obvious question: why 
didn't he say so earlier? For 9 months Mr Hamilton has remained publicly silent 
on this issue, and now reveals that he agrees with the opinion of Independent 
Financial Adviser Anglo Chinese Ltd, who recommended shareholders to vote against 
the transaction. </p>

<p>The &quot;Letter from the Board&quot; in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020802/LTN20020802082.pdf">
shareholders circular</a> (p.33) stated:</p>

<blockquote>

<p>&quot;The Board is of the opinion that the proposed Revised Transactions are fair 
and reasonable and are in the best interest of the Company and the 
Shareholders.&quot;</p>

</blockquote>

<p>and the Chairman continued, in the first person:</p>

<blockquote>

<p>&quot;Therefore, I, for myself and on behalf of the management team, urge you to 
support the opinion of the Board and vote in favour...&quot;</p>

</blockquote>

<p>Take a close look at those two quotes. It was a careful choice of words. The 
truth, but not the whole truth. True: a majority of the directors (including 
executive directors) would be enough to pass a &quot;Board&quot; resolution expressing an 
&quot;opinion of the Board&quot; in favour of the deal. The use of the term &quot;Board&quot; 
implies only a majority, not unanimity in the boardroom. But the circular did 
not state Mr Hamilton's dissenting view. And the term &quot;management team&quot; was not 
defined, but does not implicitly include Mr Hamilton, since he was 
non-executive. As for the other independent director, Mr Oh Kok Chi (<b>Mr Oh</b>), 
he failed to express any opinion to shareholders even when his presence was
<a target="_blank" href="botout.asp">revealed</a> at the Boto shareholders 
meeting. After today's revelation, we now think Boto's circular was misleading 
by omission of Mr Hamilton's dissenting view and Mr Oh's views, if he had any.</p>

<p>In Mr Hamilton's defence, Mr Fan reminded the audience that Mr Hamilton won 
an <a target="_blank" href="http://www.hkiod.com/awards2001/1.pdf">award</a> 
from the Institute of Directors as &quot;listed company non-executive director of the year&quot; in 2001. 
That was before the Boto transaction, and with such a shining reputation, if Mr 
Hamilton had made his views known at the time, they would have been given great 
credence, and the outcome of the Boto vote, which was approved by a narrow 53% 
majority vote, might well have been different.</p>

<p>In our book, non-executive directors do not win awards by telling us 9 months after a 
transaction has been voted through that they were in fact opposed to it. To this 
day, Mr Hamilton remains an &quot;independent non-executive director&quot; of Boto, now 
renamed IMI Global Holdings Ltd, and so does Mr Oh. There's nothing we can do 
about that, because in Hong Kong, controlling (management) shareholders get to 
vote on the re-election of independent directors, making a mockery of the term 
&quot;independent&quot;.</p>

<h3>Vampire bites</h3>

<p>Moving on to the results of the CITIC Pacific poll, remember that we have 
urged shareholders in all listed companies to &quot;Vote Against the Mandate for 
Placings, Issues by Rights Excepted&quot; (<a target="_blank" href="vampire1.asp">Project 
Vampire</a>) unless the issue mandate meets the criteria in that project, of a 
maximum placing size of 5% of issued shares, and a maximum discount of 5% to 
market.</p>

<p>It is always an easy sell to offer new shares to a short-term trader at a big 
enough discount to market, as such traders will flip the shares on for a profit, 
but that profit represents a transfer of value from the existing owners of the 
company - it is a zero-sum game.</p>

<p>The object of Project Vampire, combined with the voting records of Project 
Poll, is to prove public investor opposition to the issue mandate, and hence 
pressure the Stock Exchange to amend its rules in this area. To estimate the 
level of public support or opposition, we deduct the insiders votes from the 
total.</p>

<p>The two largest shareholders in CITIC Pacific are state-owned China 
International Trust &amp; Investment Corp (<b>CITIC</b>) which owns 632.1m shares, 
or 28.88%, and Mr Yung, who owns 400.4m shares, or 18.30%. Mr Yung's father used 
to chair CITIC. We are assuming that they voted in favour, and also that Mr Fan, 
who defended the general mandate at the meeting, voted his 43m shares, or 1.96%, 
in favour. That makes a total of 1,075,447,285 shares, which we deduct from the 
vote in favour of the mandate on the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030506/LTN20030506134.pdf">
official results</a> of the poll.</p>

<p>There is one other large insider, a non-executive director, Mr Andre 
Desmarais, with 100.3m shares, who is based in Canada. If our assumption on 
CITIC, Mr Yung and Mr Fan is right, then the total implies that Mr Desmarais did 
not vote. All the other directors together hold 5.9m shares between them. We 
make no assumption about whether the other directors voted.</p>

<p>So although the official result shows a 95.04% vote in favour, if you remove 
the assumed votes of CITIC, Mr Yung and Mr Fan, you get :</p>

  <table class="numtable center fcl">
    <tr>
      <th>&nbsp;</th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td>In favour</td>
      <td>47,940,282</td>
      <td>45.01%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td>58.575,610</td>
      <td><b>54.99%</b></td>
    </tr>
  </table>

<p>What this appears to show is that a 55% majority of the public votes were 
opposed to the issue mandate. Vampire has begun to bite. </p>

<p>The alternative but unlikely explanation is that one of the 3 insiders failed 
to vote some or all of their shares in favour, in which case our figures are 
wrong, and the board have not backed their own proposal in favour of the 
mandate.</p>

<p>However, we note that the total public vote appears to be only 106.5m shares, 
or about 10.6% of the public float, lower even than the 17.8% public turnout at 
Hang Seng Bank. We still need much higher voting turnouts to prove the case 
beyond all doubt. We were somewhat late putting out our voting recommendations, 
and we will try to accelerate this. The turnout is also hampered by the 
inadequacies of Hong Kong's voting system, where many banks and brokers do not 
seek AGM voting instructions from retail investors.</p>

<p>One puzzle in the poll on the other resolutions is that the votes in favour 
of Mr Fan's re-election were only 949.6m, which is less than the total of shares 
held by CITIC and Mr Yung, and some 225m votes fewer than voted in favour of the 
other directors. So at least some of CITIC or Mr Yung's shares were not voted in 
favour of Mr Fan. We wonder why.</p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=379">CITIC Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=341">CLP HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4778">Imagi International Holdings Limited</a></li>
				
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