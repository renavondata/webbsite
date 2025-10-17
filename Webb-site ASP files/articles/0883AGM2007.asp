
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

<script type="text/javascript">document.title="CNOOC voting recommendation";</script>

	<div class="summary">We urge shareholders to cast their votes against the re-election of INEDs who have not served them well, and to vote against the general mandate, as usual. We note that one of the candidates appears to have discovered time travel.</div>

<h2 class="center">CNOOC voting recommendation<br>
<span class="headlinedate">16 May 2007</span></h2>
<table class="txtable">
    <tr>
      <td>Company:</td>
      <td>CNOOC Limited (<b>CNOOC</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0883</td>
    </tr>
    <tr>
      <td>Meeting type:</td>
      <td>Annual</td>
    </tr>
    <tr>
      <td>Date of meeting:</td>
      <td>25-May-07</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>16-May-07 <span style="color:red"><b>VOTE NOW</b></span></td>
    </tr>
    <tr>
      <td>Notice of meeting</td>
      <td>
      <a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070411/LTN20070411060.pdf">Click
        here</a></td>
    </tr>
    <tr>
      <td>Proxy form:</td>
      <td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070411/LTN20070411132.pdf">
		Click here</a></td>
    </tr>
    <tr>
      <td>Circular:</td>
      <td>
		<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070411/LTN20070411131.pdf">
		Click here</a></td>
    </tr>
    <tr>
      <td>Voting method:</td>
      <td>The Chairman intends to demand voting by poll</td>
    </tr>
    <tr>
      <td>How to vote:</td>
      <td>See our <a target="_blank" href="../pages/howtovote.asp">voting guide</a></td>
    </tr>
  </table>
<p><b>Note to journalists:<br>
We have up to 4 proxy seats available inside this AGM. Please <a href="../contact/" target="_blank">contact
us</a> if you want one.</b></p>

  <table class="txtable">
    <tr>
      <td><i><b>Item</b></i></td>
      <td><i><b>Description</b></i></td>
      <td><i><b>Vote</b></i></td>
    </tr>
    <tr>
      <td>A1</td>
      <td>Adopt the accounts</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>A2</td>
      <td>Declare a final dividend</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>A3(i)</td>
      <td>Re-elect Luo Han as NED</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>A3(ii)</td>
      <td>Re-elect Wu Guangqi as ED</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>A3(iii)</td>
      <td>Re-elect Chiu Sung Hong as INED</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>A3(iv)</td>
      <td>Re-elect Tse Hau Yin, Aloysius as INED</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>A3(v)</td>
      <td>Authorise directors to fix their own 
		remuneration</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>A4</td>
      <td>Re-appoint auditors</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>B1</td>
      <td>Mandate the directors to repurchase shares</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>B2</td>
      <td>Mandate the directors to issue additional 
      shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>B3</td>
      <td>Mandate the directors to issue repurchased shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    </table>

<h3>Reasons AGAINST</h3>

<h4>Items A3(iii) and A3(iv)</h4>

<p><i>Webb-site.com</i> advises shareholders to vote AGAINST the re-election of 2 independent 
non-executive directors of CNOOC, CHIU Sung Hong and Aloysius TSE Hau Yin, because we think they 
and their fellow INEDs (who are not up for re-election) have done a poor job in advising 
independent 
shareholders over the years, telling them to vote in favour of proposals which 
in our view were not in their interests, and which shareholders have voted down.</p>
<p>Of course, CNOOC's parent is allowed under Hong Kong's Listing Rules to vote 
on the re-elections of its so-called independent directors, thereby ensuring the 
outcome, but your protest votes will count. If we can show that the majority of 
independent votes (excluding shares voted by the parent company) are voted 
against the re-election of these INEDs, then we will have shown how ridiculous 
it is to allow controlling shareholders to vote in such elections. You can't be 
&quot;independent&quot; of the people who elect you. If INEDs are re-elected against the 
wishes of independent shareholders, then in what sense are they &quot;independent&quot;?</p>
<p>The Listing Rules should be amended to prohibit directors and controlling 
shareholders from voting in shareholder meetings on INED elections.</p>
<p>Mr Chiu has served as an INED since Sep-99, before the IPO, while Mr Tse has 
served since 8-Jun-05. On two occasions since then, minority shareholders have 
voted down resolutions recommended by the INEDs. The
<a target="_blank" href="CNOOCnoncompete.asp">first occasion</a> was the Dec-05 
proposal to amend the non-compete undertaking which CNOOC's parent gave at the 
time of CNOOC's IPO. This was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060103/LTN20060103073.pdf">
voted down</a> on New Year's Eve by 59:41. Eight days later, CNOOC entered into 
a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20060109/LTN20060109091.pdf">
deal in Nigeria</a> which added 3% to its market value overnight. If the vote 
had gone the other way, that deal could have been done by CNOOC's parent without 
approval from CNOOC shareholders, cutting them out of the deal.</p>
<p>Incidentally, CNOOC was advised on the Nigerian deal by Goldman Sachs (Asia) 
LLC, whose then Vice Chairman Kenneth Courtis was an INED of CNOOC. He had 
advised CNOOC minority shareholders to vote in favour of amending the 
non-compete undertaking, although he <a target="_blank" href="CNOOCcourtis.asp">
withdrew his name</a> at the last moment. He left Goldman Sachs in Mar-06 and 
stepped down from CNOOC on 25-May-06.</p>
<p>The <a target="_blank" href="CNOOCloans.asp">second occasion</a> was the 
loans to CNOOC Finance which were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070402/LTN20070402116.pdf">
voted down</a> 52.2:47.8 at the EGM on 30-Mar-07.</p>
<p>In Mr Chiu's biography in the shareholder
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20070411/LTN20070411131.pdf">
circular</a>, it is claimed that he <i>&quot;is a director of a listed company in 
Australia&quot;. </i>That company has never been named by CNOOC. We found Mr Chiu in 
the
<a target="_blank" href="http://www.lawsociety.com.au/Search/Detail.aspx?m=96BFBD835FAFAA8FE62894E9D03BC12CBBC2D1">
register</a> of the Law Society of New South Wales under the English name of 
Stephen. A search for Stephen Chiu in ASX-listed companies finds that he is a 
director of Globe Securities Ltd (ASX:GTI), which has been suspended from 
trading on the
<a target="_blank" href="http://www.asx.com.au/asx/research/CompanyInfoSearchResults.jsp?searchBy=asxCode&allinfo=on&asxCode=GTI">
ASX</a> since 17-Mar-06 for failure to file accounts. Amazingly, after inquiries 
were made by friends of <i>Webb-site.com</i> in Australia, its
<a target="_blank" href="http://www.asx.com.au/asxpdf/20070514/pdf/312g0klmc10wzq.pdf">
accounts</a> for the year ended 30-Jun-06 were finally signed off last Friday 
and filed with ASX on Monday 14-May-07.</p>
<p>In those fresh accounts, it states that Mr Chiu resigned as a non-executive 
director way back on 16-Jul-06. However, when the company published its
<a target="_blank" href="http://www.asx.com.au/asxpdf/20070307/pdf/311c997kbncc8y.pdf">
interim report</a> on 7-Mar-07 (for the 6 months to 31-Dec-05), he was still 
listed as a director. Mr Chiu has discovered the secret of time-travel and was 
able, some time between 7-Mar-07 and last Friday, to go back in time and resign 
on 16-Jul-06. This means that the statement in the CNOOC circular is false - he 
is not a director of a listed company in Australia. Perhaps he could travel back 
in time and amend the circular too.</p>
<p>As for Mr Tse, he is also an INED of China Construction Bank Corp (0939) and 
China Telecom Corp (0728) which, like CNOOC, are controlled by the PRC 
Government. He is also an INED of Linmark Group Ltd (0915) and Wing Hang Bank, 
Ltd (0302).</p>
<p><b>A3(v)</b></p>
<p>You should vote against A3(v), authorising the directors to set their own 
remuneration, for the same reason that they don't hand out blank cheques to 
their employees every month and invite them to set their own pay. In our view, 
directors' fees should be proposed by the board to shareholders for their 
approval. In the case of INEDs, that should be independent shareholder approval, 
along with their election.</p>
<p>Incidentally, CNOOC's INEDs are paid HK$950,000 per year, one of the highest 
rates in Hong Kong, although two of them, Edgar Cheng Wai Kin (appointed 
24-May-06) and Lawrence Lau Juen Yee (appointed 31-Aug-05), waived their fees 
since appointment, which makes one wonder why they do the job.</p>
<p>On 5-Feb-04, the board granted each INED of the time, including Mr Chiu, 
1.15m options with an exercise price of $3.152. At last night's price of $6.93 
they had an intrinsic value of HK$4.34m.</p>
<h4>Items B2 and B3</h4>

<p><i>Webb-site.com</i> urges all investors to vote against the general issue mandate
for all listed companies, for the reasons explained in <a href="vampire1.asp" target="_blank">Project
Vampire</a>, unless they comply with the recommendations set out in that 
article. The non-pre-emptive issue mandate allows management to choose the 
shareowners by allotment of shares. This corrupts the governance mechanism. 
Shareowners should govern management, not the other way around. If a company 
wishes to raise cash by issuing shares, then it should do so by rights issue.</p>

<p>If your company offers new shares to other investors at a discount, but not 
to you, then your company is transferring value from you to the new 
investors. Their gain is your loss. That's why we believe an issue for cash 
should be done by rights issue, failing which it should be limited to 5% of 
existing issued shares and a maximum discount of 5%.</p>
<p><em>&copy; Webb-site.com, 2007</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9164">CNOOC LIMITED</a></li>
				
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