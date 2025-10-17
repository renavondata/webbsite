
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

<script type="text/javascript">document.title="No Exceptions?";</script>

	<div class="summary">Two months ago the SEHK and SFC introduced standardised waivers of the GEM listing rules. Despite its denials of preferential  treatment, the Exchange has still not levelled the playing field by tightening the waivers on share options and lock-ups granted to Tom.com and Hongkong.com. Indeed, the wording on Tom.com's option limit has been relaxed further. Now the Exchange proposes a similar amendment to the option limits on the main board. Dilution city here we come.</div>

<h2 class="center">No Exceptions?<br>
<span class="headlinedate">14 May 2000</span></h2>
<p>Regular readers will recall our campaign against the raft of
waivers which were being granted to early GEM listings, and how public pressure
eventually led to the SEHK and SFC issuing a joint
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=GEM-WAIVER">announcement</a>
on 11-Mar-00. </p>

<p>In that announcement, the regulators &quot;<i>acknowledged that
the lack of transparency associated with such waivers has given cause for public
concerns</i>&quot;. They announced that they would accelerate the review of the
GEM Listing Rules which was originally planned to take place 6 months after the
launch of the market, to take place &quot;<i>as soon as possible before the end
of the six months period</i>&quot;. Well, guess what - the first GEM prospectus
was published on 16-Nov-99, and the 6 months are up on Tuesday. Still no sign of
that consultation paper! </p>

<p>Of course, the true purpose of that announcement was to even out
the playing field and stop the GEM listing committee from <i>ad hoc</i> waiving
of its rules any further. In return for GEM agreeing to tighten the waiver of
the share option limit and some other minor restrictions, the SFC had to concede
a shortening of the track record requirement from 2 years to 1 year. </p>

<p>It later became apparent why GEM needed this waiver - <a href="../dbpub/articles.asp?p=10458" target="_blank">Techpacific.com</a>
was lining up to float with a 1-year track record (the prospectus went out on
5-Apr-00). It takes several weeks to prepare a prospectus and the draft must
normally be submitted to the SEHK five weeks prior to the listing hearing, so it
is highly likely that the application for this deal was already being processed
by the SEHK before the SEHK/SFC meeting. That deal was sponsored by BNP Prime
Peregrine, as were Tom.com and Hongkong.com. </p>

<p>In the announcement, a number of &quot;relaxations&quot; (we'll
call them Standard Waivers) of the rules were announced pending that market
consultation. We've already criticised these proposals in a <a href="waiver2.asp" target="_blank">previous
article</a> so we won't waste time here. The Standard Waivers were announced
&quot;<i>with a view to ensuring a level playing field and transparency in the
application of the GEM Rules</i>&quot;. </p>

<h3>What level playing field?</h3>

<p>The waivers granted to <a href="../dbpub/articles.asp?p=10265" target="_blank">Tom.com</a>
and Hongkong.com prior to the regulators' announcement were more relaxed than
the new Standard Waivers in several ways: </p>

<ul>
  <li>
    <p>One of the Standard Waivers is to raise the limit on the
    number of shares which may be subject to option schemes from 10% to 30% of
    the issued share capital. That compares with the waivers granted to Tom.com
    and Hongkong.com of 50%.<br>
  </li>
  <li>
    <p>Another Standard Waiver is to relax the lock-up on
    management shareholders from 2 years to 6 months, but require them to hold
    at least 35% of the company for a further 6 months. But in the case of both
    Tom.com and Hongkong.com, they had been given unrestricted waivers after the
    first 6 months.</li>
</ul>
<p>Acting in the public interest, we wrote to both the SEHK and SFC
on 14-Mar-00 asking them to confirm by announcement that the waivers granted to
Tom.com and Hongkong.com would be amended to take into account the Standard
Waivers and level out the playing field. Do you remember all those assurances
from GEM officials, and the <a href="http://www.sehk.com.hk/CCD/content/0224a.htm" target="_blank">press
release</a>, that <i>&quot;the Exchange has given no preferential waivers to any
company&quot;?</i> </p>

<p>A period of silence followed. Then on 7-Apr-00 came an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20000408/00000MC20000408162654K.pdf">announcement
(in PDF format)</a> from Tom.com, in which they stated <i>&quot;at
the request of the [Exchange]&quot;</i> that certain conditions applied to the
waiver when it was granted at the time of the IPO. Strangely, these conditions
had not been stated in the 18-Feb-00 prospectus and we are asked to believe in
the pure coincidence that these pre-existing conditions just happen to be the
same as those in the SEHK/SFC announcement, with one important exception...read
on! </p>

<p>The Tom.com announcement confirmed that they still had a waiver
on share options up to <b>50%</b> of the share capital. Not only that, but the limit
applies to &quot;<i>all outstanding options granted and <u>yet to be exercised</u></i>&quot;.
An important implication of this wording is that the limit will not include
options which have <u>already</u> been exercised (or those that have expired). </p>

<p>By comparison, the limit under the existing Listing Rules and
the Standard Waivers relate to &quot;<i>all outstanding share option <u>schemes</u></i>&quot;
not just to all outstanding options. So in that case it includes options which
have already been exercised or expired. </p>

<p>These subtle words make a world of difference. Under the wording
of the Tom.com announcement, if the limit is reached, every time an option is
exercised creates room for another option to be granted. Under GEM rules,
options can be exercised after 3 years and within 10 years of the day of grant.
So that means that theoretically 50% of the company could be put under option
within 3 years, then another 50% within the next 3 years, and so on. </p>

<p>The only brake on this process is the requirement to get
shareholders' approval for each successive chunk of 10% of the company. But
since the major shareholders are allowed to vote on this, it will be a formality
so long as there are major shareholders. It only takes 2 weeks to call a
shareholders' meeting so that doesn't slow things down much. </p>

<h3>Lock-up unaffected</h3>

<p>What about that second bullet point above? No changes have been
announced to the moratorium waivers for Tom.com or Hongkong.com. If this
situation remains, then the lock-ups for Tom.com and Hongkong.com will expire
without conditions on 1-Sep-00 and 9-Sep-00. </p>

<h3>So much for the level playing field</h3>

<p>Here's an idiot's guide to the GEM waivers </p>

<table class="numtable center fcl">
  <tr>
    <td><b>The GEM uneven playing field</b></td>
    <td><i>Tom.com and Hongkong.com</i></td>
    <td><i>Everybody else (with Standard Waivers)</i></td>
  </tr>
  <tr>
    <td>Limit on share options</td>
    <td><b>50%</b></td>
    <td>30%</td>
  </tr>
  <tr>
    <td>Management shareholder lock-up in second 6 months</td>
    <td><b>0%</b></td>
    <td>35%</td>
  </tr>
</table>
<p>Perhaps the Exchange would argue that the Tom.com and
Hongkong.com waivers were granted before the Standard Waivers and cannot be
amended retrospectively. That's nonsense - the relevant options have not yet
been granted, the lock-ups have not yet expired, and there's no reason why the
Tom.com and Hongkong.com waivers can't be brought into line. Indeed, the
Standard Waivers (unless further amended during the consultation process) will
become listing rules, and the rules should apply to everybody. </p>

<p>We wrote again to the SEHK on 10-Apr-00 asking what they will do
about this, but have not received any reply. </p>

<h3>And the main Board is Next</h3>

<p>The Exchange has recently issued a <a href="http://www.sehk.com.hk/lid/C_paper4.doc" target="_blank">consultation
document (in MS Word format)</a> to amend Chapter 17 of
the Listing Rules for the main board which relates to share option schemes. Some
of these proposals are positive, and we'll comment in more detail in a future
article, but one of the proposals that leaps out and strangles us is the
proposal to allow companies to grant options with the following limit: </p>

<blockquote>
  <p>&quot;the
  securities underlying all outstanding options should not exceed a certain
  percentage, say 30%, of the securities in issue from time to time&quot;</p>
</blockquote>
<p>Note
those words - &quot;outstanding options&quot; not &quot;option schemes&quot;.
Again, this means that once an option has been exercised, it no longer counts
towards the limit. Under these proposals, there is also no minimum period before
options can be exercised. The rest of the limits are similar to the GEM
proposals,
including the formality of a shareholders' approval for each 10% block of
options. So after 3 mandates have been exhausted, the 30% limit will be reached,
but as soon as some of the options are exercised, this will make room for
another mandate to be obtained, and more options to be granted, effectively
scrapping even the 30% limit.</p>

<p>This will lead to cases of abuse and massive dilution of
shareholders' interests, and is similar to the way in which their interests are
diluted by abuse of the general mandate to repeatedly issue shares without
offering them to existing shareholders (see our article <a href="placing.asp">The
Placing Game</a>). </p>
<p><em>&copy; Webb-site.com, 2000</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=10220">Sino Splendid Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10265">TOM GROUP LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=147">Growth Enterprise Market</a></li>
				
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