
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

<script type="text/javascript">document.title="The insider blackout period";</script>

	<div class="summary">Webb-site.com supports the Listing Committee's proposal to rebase the blackout period on directors' dealings from the end of the financial period until results are published. Tell us what you think in our opinion poll.</div>

<h2 class="center">The insider blackout period<br>
<span class="headlinedate">24 April 2008</span></h2>
<p class="center"><strong><a target="_blank" href="../vote/poll.asp?p=25">Take our 
blackout poll</a></strong></p>
<p>The recent
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/cp200801_e.pdf">
consultation paper</a> on the Listing Rules by the Stock Exchange of Hong Kong 
Ltd (<strong>SEHK</strong>) includes a proposal to rebase the blackout period on 
directors' dealings in their companies' shares.</p>
<p>Currently, under Rule A.3 of the Model Code in
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Appendix_10.pdf">
Appendix 10</a> of the Listing Rules, a director cannot deal within 1 month 
before the announcement date of results. This obviously gives directors, who 
control the release date, an incentive to delay the results in order to have 
more time to deal on inside information. That absurd rule has featured in our
<a target="_blank" href="../pages/loopholes.asp#DelayInsider">Listing Loopholes</a> 
page since <em>Webb-site.com</em> was founded in 1998, along with the solution 
which SEHK is at last proposing.</p>
<p>Another perverse effect of the rule is that, although companies only have to 
disclose the results date at least &quot;7 clear business days&quot; before the meeting 
date (<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_13.pdf">Listing 
Rule 13.43</a>), they must either know the date 1 month ahead of time in order 
to enforce the blackout, or they have to delay the results if someone deals. </p>
<p>The solution is to rebase the blackout period by reference to the end of the 
financial period, and prohibit dealings until the results are released. This 
will give directors an incentive to get their company's results out faster so 
that they have longer periods of the year in which they can deal, and will 
remove the incentive to keep investors in the dark.</p>
<p>When we say &quot;by reference to&quot;, there is nothing magic about whether the 
blackout should start the day after the financial period, or at some point 
earlier than that. It could certainly be argued that any CEO or finance director 
who has no idea of his company's financial performance until the period has 
ended isn't doing his job properly. That is particularly true if the company 
does not report quarterly, because the end of each period is 6 months after the 
previous period ended, so a huge information gap opens up between insiders and 
outsiders regarding the company's performance.</p>
<p>Right now, for example, some companies have yet to report their results for 
2007, and the best information the public has is half-year results for 
30-Jun-07, a period which began 16 months ago and ended 10 months ago. Unless 
the directors are asleep, they know much more than you do, but they 
could have been dealing in the shares until 31st March if they set their results 
date on the deadline of 30th April.</p>
<p>So SEHK's proposal in paragraph 18.13 of the consultation paper, a proposal 
which is specifically endorsed by the Listing Committee, is a simple one.
<strong>Start the blackout on the day after the financial period ends, and end 
it when results are announced. We strongly support this.</strong></p>
<p>Predictably, listed companies and their directors are opposing this move. 
They whinge that it will deter companies from listing in HK in the first place, 
or that it will deter people from becoming directors - as if insider dealing is 
one of the perks of the job! We disagree, and more importantly, we say that 
keeping the status quo deters investors from investing here or paying as much 
for shares as they would otherwise, because they cannot expect a level playing 
field.</p>
<p>Listed companies choose markets where they can get the best price for their 
shares, so building a regulatory framework which attracts investors to pay more 
is consistent with that. If we deter a few cowboys from listing here, those who 
would rather benefit from loose rules on insider dealing at the expense of other 
shareholders, then that is a good outcome.</p>
<p>Opponents of change also point to the law that prohibits insider dealing on 
price-sensitive information, and 
claim that this is sufficient. The hole in that argument is that it is far 
harder and costlier to prove insider dealing to a standard of a civil tribunal 
or a criminal court - evidence of what the directors knew, when they knew it, 
and whether it was price-sensitive (relative to market expectations) are all 
hard to obtain. That's why we have very few insider dealing cases in HK and have 
yet to see a completion of a civil case in the
<a target="_blank" href="http://www.mmt.gov.hk/">Market Misconduct Tribunal</a> 
or a criminal case in the courts since the Securities and Futures Ordinance came 
into effect on 1-Apr-03, over 5 years ago. 3 MMT cases and 1 criminal case are 
now underway.</p>
<p>By comparison, the Model Code in the Listing Rules can provide a clear-cut prohibition on dealing 
during periods when a director could reasonably obtain an information advantage 
simply by looking at the latest monthly management accounts of the group (as 
they all should, if they run their boards well). By the end of a 6-month period 
he should at least have access to 5 months of extra information.</p>
<p>These same issues are currently playing out in Australia, where governance 
research firm <a target="_blank" href="http://www.regnan.com.au/">Regnan</a>, 
which represents institutional investors, recently
<a target="_blank" href="http://www.regnan.com.au/documents/Position%20Paper%20-%20Share%20Trade%20Governance.pdf">
found</a> that directors of 23 of Australia's largest 200 companies traded 
shares between books-close and results-release dates, prompting articles like
<a target="_blank" href="http://business.smh.com.au/directors-broke-blackout-rules/20080309-1y8n.html">
this one</a> in the Sydney Morning Herald.</p>
<p>In the
<a target="_blank" href="http://fsahandbook.info/FSA/html/handbook/LR/9/Annex1">
UK Model Code</a>, the blackout period for annual results starts from the end of 
the accounting period or 60 days before the results announcement, whichever 
comes later. In practice, since most companies announce their results within 60 
days, it is the period-end which forms the base. For half-year results, the UK 
blackout starts from the end of the half-year period, because the Rules require 
interim results within 2 months anyway.</p>
<p>Company directors should not be regularly dealing in their shares anyway. 
Their job is to run the company to generate long-term shareholder value, not to 
punt in and out of the shares. It should be more than sufficient that they have several months 
of the year in which they can invest on the basis of fresh results available to 
all shareholders. If they are slow to report results, then they should not be 
allowed to benefit from that by insider dealing.</p>
<p>What do you think? <strong><a target="_blank" href="../vote/poll.asp?p=25">Take our opinion poll</a></strong> on 
the insider dealing blackout!</p>
<p><em>&copy; Webb-site.com, 2008</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
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