
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

<script type="text/javascript">document.title="Investors don't count at HKEx";</script>

	<div class="summary">HKEx has released the conclusions of its year-old consultation on the Listing Rules, and in an outrageous disregard of investor interests, it has counted 337 responses submitted via Webb-site.com as a single submission, while counting everyone else in the total of 167, including 110 listed companies, separately. Opponents of Article 23 must be wondering if their petitions will be treated in the same way.</div>

<h2 class="center">Investors don't count at HKEx<br>
<span class="headlinedate">19 January 2003</span></h2>
<p>Hong Kong Exchanges and Clearing Limited (<b>HKEx</b>) has at last <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2003/030117news.htm" target="_blank">announced</a>
the results of a market consultation on the listing rules relating to corporate
governance issues, which was <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/0201212news.htm" target="_blank">launched</a>
almost a year ago on 21-Jan-02. The consultation period was <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020422news.htm" target="_blank">extended</a>
on 22-Apr-02 and ended on 24-May-02, so it has taken them 8 months to make
conclusions. </p>

<p>The proposals, which were hardly revolutionary to begin with, have been
progressively watered down and in may cases scrapped, and the end result is an
exercise in form over substance, a collection of superficial enhancements to the
rules without really getting to the main issues. We will cover the details of
this in a later article, but the most shocking part of the announcement is the
way in which HKEx has chosen to count the submissions it received. </p>

<p>Regular readers may recall that <i>Webb-site.com</i> produced a series of 5
detailed articles covering major aspects of the reform proposals, what was wrong
with them, what was right with them, and where HKEx had missed the point
altogether. We then made it possible for readers, rather than filling in the
HKEx's 142-page
<a href="http://www.hkex.com.hk/-/media/HKEX-Market/News/Market-Consultations/Before-2005/cgi_questionaire.pdf?la=en" target="_blank">questionnaire</a>,
to submit their views to HKEx through a web-based <a href="../forms/rulesSubmit2002.htm" target="_blank">form</a>
on our site, which included a box in which the reader could add any other points
they wished to make, agreeing or disagreeing with the content of our articles. </p>

<p>Altogether, 337 people took the time to submit their views to HKEx in this
way. Most of them were investors, and many were professionals from the financial
industry. Some gave a company name, while others wrote in their own name. 25 of
them added their own variations to the submission. </p>

<p>We shouldn't have bothered to write anything at all. In the announcement on
Friday 17-Jan-03, HKEx wrote: </p>

<blockquote>
  <p>&quot;There were 167 responses to the consultation, including submissions
  from issuers, market practitioners and a variety of organisations. One of
  responses (sic) represents near identical responses from 337 individuals who
  submitted their views to the Exchange indirectly through a website operated by
  a financial analyst.&quot; </p>

</blockquote>
<p>So in other words, the 337 separate responses made by e-mail, almost all in
support of our views, count for only 1. HKEx also released a 
<a href="http://www.hkex.com.hk/-/media/HKEX-Market/News/Market-Consultations/Before-2005/pr-e.pdf?la=en" target="_blank">profile
and analysis</a> of the respondents and responses. In this afterthought, the
HKEx did condescend <i>&quot;for information purpose&quot;</i> to produce a
calculation of what the results would have been if these 337 were counted
separately, but has ignored that completely in reaching its conclusions. If HKEx
had used these alternative results in their conclusions paper, then it would
have been clear that investors views were often very different from what the
issuers wanted. </p>

<p>Throughout the 
<a target="_blank" href="http://www.hkex.com.hk/consul/conclusion/cc-e.PDF">conclusion
paper</a>, there are repeated references to <i>&quot;the majority of
respondents&quot;</i> taking various views, most of which investors would
disagree with - which really should read <i>&quot;the majority of respondents
(excluding investors)&quot;</i>, because they have indeed been excluded from
such statements. Even HKEx recognises this in places; we found 5 occurrences of
the phrase <i>&quot;a majority of respondents (mostly issuers)&quot;.</i> </p>

<p>Of the other 166 respondents, 110 were listed issuers, counting for 66% of
the total, and 28 were from financial advisers, lawyers and accountants, whose
income from listed companies is far greater than anything they might earn from
investors. There were also 13 submissions from <i>&quot;professional and trade
associations&quot; </i>which probably includes people like the Institute of
Directors, Institute of Company Secretaries and Society of Accountants, the
members of which would principally be issuer-based. That just leaves 3
&quot;other&quot; market practitioners and 12 &quot;others&quot; of no
description. </p>

<p>There appear to be no other investor submissions included in the 166 other
&quot;responses&quot;, so it is safe to say that in summarising the views of
respondents, the views of all but 1 investor were disregarded. If we had not
made our form available, some of these 336 other people might have submitted
directly and been counted. Ironically, by facilitating investor input, we have
in fact reduced it. </p>

<p>It is notable that HKEx did not aggregate the views of any of the other 166
respondents. Are we supposed to believe that all of the 110 listed companies are
independent of each other and made different submissions? This is almost
certainly not the case, given the number of pyramid groups in Hong Kong. Cheung
Kong, for example, has 7 listed companies in its group, while Henderson Land has
6 and Wheelock has 5. We wonder how many of these companies made submissions. </p>

<h3>Democracy with Hong Kong characteristics</h3>

<p>This is all reminiscent of the worst subterfuge of colonial rule in which a
1987 Green Paper on direct elections attracted 368,431 responses. The pro-China
lobby distributed pre-printed forms which were signed and sent back, and counted
separately against democratic reforms, while most of the signatures in favour of
direct elections were attached to petitions led by the United Democrats
(forerunner of today's Democratic Party). The Government Survey Office decided
to count all the pre-printed forms separately while treating each petition as
just one submission, and thereby was able to declare that <i>&quot;more were
against than in favour of direct elections in 1988&quot;. </i>In fact, 72% of
the signatures had been in favour. (for more on this, see Jonathan Dimbleby's <i>The
Last Governor</i>, p107). </p>

<p>Members of the public who are currently signing petitions against the
draconian <a href="http://www.article23.org.hk" target="_blank">Article 23</a>
have good cause to wonder whether the Government will count their petitions in
the same way. </p>

<p>In another parallel, this abuse is rather like a typical shareholders'
meeting here, where in a show of hands, the public investors represented by Hong
Kong Clearing (owned by HKEx) count for 1 vote, and all the company's employee
shareholders who attend the meeting count for 1 vote each. </p>

<p>Now, HKEx is treating the views of investors in the same casual manner. In so
doing, it seems certain to have put another nail in its own regulatory coffin.
As we have <a href="expertgroup1.asp" target="_blank">submitted</a> to the
Expert Group on market reform, HKEx, as a for-profit listed company regulating
others by contract, should get out of regulation altogether. We need a regulator
that will act in the public interest, not that of the tycoons, and listing rules
which are made by the full-time regulator and not by a part-time committee of
issuers and their advisers. The Expert Group is currently working on its report
which is due in March. </p>

<h3>A Breach of Law?</h3>

<p>Under <a href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/7d46d2b5452ae1be48256897000af4ac" target="_blank">Section
8(2) of the Exchanges and Clearing Houses (Merger Ordinance)</a>, HKEx must: </p>

<blockquote>
  <p>&quot;(a) act in the interests of the public, having particular regard to
  the interests of the investing public; and </p>

  <p>(b) ensure that where the interests referred to in paragraph (a) conflict
  with any other interests...the former shall prevail&quot;. </p>

</blockquote>
<p>Now how on Earth can HKEx be said to have <i>&quot;particular regard to the
interests of the investing public&quot;</i> when the investing public who took
an interest in it by submitting responses are being so blatantly ignored? Are
they really claiming that 337 respondents are not representative of what the
investing public thinks? Will the Government prosecute HKEx for breaking this
law? </p>

<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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