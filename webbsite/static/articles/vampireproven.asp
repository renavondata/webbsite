
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

<script type="text/javascript">document.title="Vampire - Nothing Left to Prove";</script>

	<div class="summary">Last week saw AGMs of CITIC Pacific, Hysan, Li & Fung, China Unicom, Cathay, Swire, HK Electric and CKI. In every case, a majority of investor votes were against the 20% cash issue mandate, but controllers pushed it through. With 10 HSI companies now having voted, Project Vampire has nothing left to prove - investors have voted on average by more than 2 to 1 against the issue mandate. It's time for the regulators to act.</div>

<h2 class="center">Vampire - Nothing Left to Prove<br>
<span class="headlinedate">16 May 2004</span></h2>
<p>Last week was a conclusive time in the battle for pre-emptive 
rights in Hong Kong. In each of eight Annual General Meetings which we cover in 
this article, seven of which are in the Hang Seng Index, a majority of investors 
voted against the general issue mandate which allows companies to dilute their 
shareholders by issuing shares for cash at a discount.</p>
<p>You can skip straight to the <a href="#Conclusion">conclusion</a> 
at the end of this article, where we declare conclusive victory and call for 
regulatory action, or read our detailed coverage of each vote.</p>

<h3>CITIC Pacific</h3>

<p>On 10-May-04 at the AGM of CITIC Pacific Ltd (0267),
<i>Webb-site.com</i> had to force a poll. This year, most members of the Hang 
Seng Index have stated in their notice of AGM that their Chairman would call a 
poll, but the company is one of the minority who are holding out against change, so we'll 
have to keep going to their meetings to get your votes counted and stop them 
trying to pass things on a show of hands. And the poll voting figures carry a 
clear message, as we show below.</p>

<p>The directors and their associates hold 1,183,264,185 shares 
(54.03%) and we assume they voted in favour of their own mandate. Deducting the insiders from the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040510/LTN20040510097.pdf">poll results</a>, the investing public voted as follows:</p>

<table class="numtable center fcl">
<tr>
  <th></th>
  <th>Votes</th>
  <th>Share</th>
</tr>
<tr>
  <td>In favour</td>
  <td>46,221,056</td>
  <td>22.51%</td>
</tr>
<tr>
  <td><b>Against</b></td>
  <td><b>159,084,239</b></td>
  <td><b>77.49%</b></td>
</tr>
<tr>
  <td>Total</td>
  <td>205,305,295</td>
  <td>100.00%</td>
</tr>
</table>

<p>Voting turnout was  20.39% of the publicly held shares. So 
investors voted by more than 3 to 1 against the general mandate.</p>

<h3>Hysan Development</h3>

<p>Hysan Development Co Ltd (<b>Hysan</b>, 0014) was removed from 
the Hang Seng Index back on 2-Dec-02, so they were never part of
<a target="_blank" href="pollsapart.asp">Project Poll</a>, but credit goes to 
them for adopting best practice and calling a poll at their AGM on 11-May-04. The controlling 
shareholders and directors together own 445,885,338 shares (42.71%). We'll 
assume they voted in favour of giving themselves a mandate to issue new shares. Deducting the insiders from the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040511/LTN20040511060.pdf">poll results</a>, the investing public voted as follows:</p>

<table class="numtable center fcl">
	<tr>
	  <th></th>
	  <th>Votes</th>
	  <th>Share</th>
	</tr>
	<tr>
	  <td>In favour</td>
	  <td>88,519,165</td>
	  <td>38.99%</td>
	</tr>
	<tr>
	  <td><b>Against</b></td>
	  <td><b>138,492,859</b></td>
	  <td><b>61.01%</b></td>
	</tr>
	<tr>
	  <td>Total</td>
	  <td>227,012,024</td>
	  <td>100.00%</td>
	</tr>
</table>

<p>Voting turnout was  23.16% of the publicly held shares. So 
investors voted by more than 3 to 2 against the mandate. We hope the board of Hysan will take this into account and propose a Vampire-compliant general 
mandate at the next meeting.</p>

<h3>Li &amp; Fung</h3>

<p>On 11-May-04 at Li &amp; Fung Ltd (0494), the controlling 
shareholders and directors held a total of 1,233,487,200 shares (42.37%). 
Excluding those assumed votes in favour from the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040511/LTN20040511051.pdf">
poll results</a>, the investing public voted as follows:</p>

<table class="numtable center fcl">
    <tr>
      <th></th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td>In favour</td>
      <td>255,413,582</td>
      <td>29.90%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td><b>598,908,990</b></td>
      <td><b>70.10%</b></td>
    </tr>
    <tr>
      <td>Total</td>
      <td>854,322,572</td>
      <td>100.00%</td>
    </tr>
</table>

<p>Voting turnout was 50.92% of the publicly held shares.</p>

<h3>China Unicom</h3>

<p>On 12-May-04 at China Unicom Ltd (0762), the controlling 
shareholders and an incoming director held a total of 9,725,584,020 shares 
(77.42%). Excluding those assumed votes in favour from the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040513/LTN20040513032.pdf">
poll results</a>, the investing public voted as follows:</p>

<table class="numtable center fcl">
    <tr>
      <th></th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td>In favour</td>
      <td>324,027,264</td>
      <td>35.88%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td><b>579,094,392</b></td>
      <td><b>64.12%</b></td>
    </tr>
    <tr>
      <td>Total</td>
      <td>903,121,656</td>
      <td>100.00%</td>
    </tr>
</table>

<p>Voting turnout was 31.84% of the publicly held shares.</p>

<h3>Cathay Pacific Airways</h3>

<p>On 12-May-04 at Cathay Pacific Airways Ltd (0293), the 
controlling shareholders Swire Pacific Ltd (0019, 0087) and CITIC Pacific Ltd 
(0267) and directors held a total of 2,399,451,708 shares (71.26%). Excluding 
those assumed votes in favour from the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040512/LTN20040512085.doc">
poll results</a>, the investing public voted as follows:</p>

<table class="numtable center fcl">
    <tr>
      <th></th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td>In favour</td>
      <td>7,619,366</td>
      <td>4.14%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td><b>176,532,494</b></td>
      <td><b>95.86%</b></td>
    </tr>
    <tr>
      <td>Total</td>
      <td>184,151,860</td>
      <td>100.00%</td>
    </tr>
</table>

<p>Voting turnout was 19.03% of the publicly held shares.</p>

<h3>Swire Pacific</h3>

<p>Moving up the chain from Cathay, on 13-May-04 at Swire Pacific 
Ltd (0019, 0087), which is the last remaining HK-listed company with a two-class 
A/B voting structure, controlling shareholders and directors held a total of 
2,102,132,972 votes (53.44% of the voting rights). Excluding those assumed votes 
in favour from the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040513/LTN20040513081.doc">
poll results</a>, the investing public voted as follows:</p>

<table class="numtable center fcl">
    <tr>
      <th></th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td>In favour</td>
      <td>208,136,991</td>
      <td>30.84%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td><b>466,721,021</b></td>
      <td><b>69.16%</b></td>
    </tr>
    <tr>
      <td>Total</td>
      <td>674,858,012</td>
      <td>100.00%</td>
    </tr>
</table>

<p>Voting turnout was 36.85% of the publicly held voting rights.</p>

<h3>Hongkong Electric</h3>

<p>Kicking off the Li Ka-shing meetings, on 13-May-04 at Hongkong 
Electric Holdings Ltd (0006), the controlling shareholder, Cheung Kong 
Infrastructure Holdings Ltd (1038) and directors held a total of 829,753,362 
shares (38.88%). Excluding those assumed votes in favour from the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040513/LTN20040513082.pdf">
poll results</a>, the investing public voted as follows:</p>

<table class="numtable center fcl">
    <tr>
      <th></th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td>In favour</td>
      <td>151,861,216</td>
      <td>36.33%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td><b>266,090,317</b></td>
      <td><b>63.67%</b></td>
    </tr>
    <tr>
      <td>Total</td>
      <td>417,951,533</td>
      <td>100.00%</td>
    </tr>
</table>

<p>Voting turnout was 32.04% of the publicly held voting rights.</p>

<h3>Cheung Kong Infrastructure</h3>

<p>On 13-May-04 at Cheung Kong Infrastructure Holdings Ltd (1038), 
the controlling shareholder, Hutchison Whampoa Ltd (<b>HWL</b>, 0013) and 
directors held a total of 1,912,209,945 shares (84.83%). Yes, the free float of 
this company is only 15.17% and it has always been a bit of a joke that it is 
included in the Hang Seng Index, which counts 100% of its value, especially when 
you consider that its parent HWL is also in the index and so is its controlling 
shareholder, Cheung Kong (Holdings) Ltd (0001).</p>

<p>Anyway, excluding the insider votes from the vote in favour in 
the official
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040513/LTN20040513098.pdf">
poll results</a>, the investing public voted as follows:</p>

<table class="numtable center fcl">
    <tr>
      <th></th>
      <th>Votes</th>
      <th>Share</th>
    </tr>
    <tr>
      <td>In favour</td>
      <td>18,683,181</td>
      <td>15.18%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td><b>104,416,148</b></td>
      <td><b>84.82%</b></td>
    </tr>
    <tr>
      <td>Total</td>
      <td>123,099,329</td>
      <td>100.00%</td>
    </tr>
</table>

<p>Voting turnout was 35.99% of the publicly held shares.</p>

<h3 id="Conclusion">Conclusion: Vampire has nothing left 
to prove</h3>

<p>The results of <a target="_blank" href="vampire1.asp">Project Vampire</a> 
in 2004 are already compelling. No further analysis of future voting figures 
will be needed to prove the point.</p>

<p>Excluding Hang Seng Bank, which
<a target="_blank" href="0011agm2004.asp">proposed</a> a Vampire-compliant 
mandate, there are 10 members of the Hang Seng Index who have held polls at 
their AGMs so far, and 9 of these 10 have had a majority of investor votes cast 
against the general mandate. All of these 9 had to rely on controlling 
shareholders to push the vote through against the wishes of the investing 
public. Only one company, Bank of East Asia, got a slim majority of investors in favour, 
51.80%, but in that particular case, there are probably wider family members of 
the founding Li family who do not show up on the disclosure screen (not being 
directors or 5% shareholders) and voted in favour.</p>

<p>Here's a summary of the votes in the 10 index members:</p>

<img class="center" alt="summary" src="../images/vampir1.gif">

<p>As you can see, on average, investors voted by more than 2 to 1 
against the general issue mandate. Without our
<a target="_blank" href="projectpoll1.asp">Project Poll</a> forcing index 
members to count the votes at AGMs, we would not have these data, as in the 
past, such mandates were routinely voted on by a show of hands. That continues 
to be the case for most companies outside of Project Poll.</p>

<p>Project Vampire is now like Michael Schumacher - it has scored 
so many victories that it really has nothing left to prove. Investors will 
continue to vote against the cash issue general mandate until it is brought into 
line with international best practice. When a company needs cash, investors 
simply want the right to be offered new shares to maintain their shareholding 
rather than being forcibly diluted at a discount. They are voting against giving 
up that right. </p>

<p><i>Webb-site.com </i>has produced the evidence of investor 
opinion from the voting figures, but only regulators can make it happen across 
the board. So once again, we call on the Stock Exchange and its 
Listing Committee to amend the Listing Rules to reflect investor wishes and 
restrict the general mandate to issue new shares for cash to levels found in international best practice, which in this respect is 
in the UK. In a
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2004/documents/0401304news.pdf">press release</a> on 30-Jan-04, the Exchange said 
in paragraph 37:</p>

<blockquote>
  <p>&quot;Under the current Rules, listed issuers are allowed to issue 
  securities representing up to 20% of their share capital under the general 
  mandate. We have retained the existing provision for the time being. However, 
  subject to further market consultation, we will consider lowering the maximum 
  number of securities that are allowed to be issued under the general mandate 
  to bring our requirements closer to those of the United Kingdom.&quot;</p>
</blockquote>

<p>This should have happened already. During the last &quot;market consultation&quot; in 2002, HKEx received 
337 responses from the public, submitted via an e-mail form on this web site. 
They <a target="_blank" href="investorsignored.asp">counted</a> these responses 
as a single response in declaring that <i>&quot;a majority of respondents&quot;</i> (83%) 
were in favour of the general mandate - including 110 listed companies who were 
counted separately, even though many of their submissions were probably 
identical and from interrelated companies. In fact, if the public submissions 
had been counted separately as well, then only 20% of submissions were in favour 
of the 20% mandate.</p>

<p>Well, you  can 
&quot;consult&quot; the market as often as you like, but the clearest measure of investor 
opinion must surely be the way they vote, and they are voting by more than 2 to 
1 against the 20% mandate. It is time for change.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=385">CATHAY PACIFIC AIRWAYS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11359">CHINA UNICOM (HONG KONG) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=379">CITIC Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=784">CK Infrastructure Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=365">HYSAN DEVELOPMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=362">LI & FUNG LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=388">Power Assets Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=384">SWIRE PACIFIC LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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