
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

<script type="text/javascript">document.title="Swire Pacific Voting Recommendations";</script>

	<div class="summary">The 10th AGM in Project Poll is on 15-May-03. We recommend investors to vote against the re-election of the group's only Principal Banker as an independent director, and against the general mandate. The AGM is followed by separate A-Share and B-share meetings.</div>

<h2 class="center">Swire Pacific Voting Recommendations<br>
<span class="headlinedate">5 May 2003</span></h2>
  <table class="txtable">
    <tr>
      <td>Company:</td>
      <td>Swire Pacific Limited (<b>SP</b>)</td>
    </tr>
    <tr>
      <td>Stock codes:</td>
      <td>0019 (A), 0087 (B)</td>
    </tr>
    <tr>
      <td>Meeting types:</td>
      <td>Annual, A-Share and B-Share</td>
    </tr>
    <tr>
      <td>Date of meeting:</td>
      <td>15-May-03</td>
    </tr>
    <tr>
      <td>Time of meetings:</td>
      <td>3 consecutive meetings starting 11:00</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>05-May-03</td>
    </tr>
    <tr>
      <td>CCASS voting cut-off:</td>
      <td>12-May-03 <span style="color:red"><b>VOTE NOW</b></span></td>
    </tr>
    <tr>
      <td>Notice of Meeting:</td>
      <td>
      <a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030416/LTN20030416094.DOC">Click
        here</a></td>
    </tr>
    <tr>
      <td>Voting method:</td>
      <td><i>Webb-site.com </i>will require a poll, all proxies will be counted, 
      except Meeting 3, where we don't own B-Shares is up to you.</td>
    </tr>
  </table>

<p><b>Note to journalists:<br>
We have up to 4 proxy seats available inside this AGM. Please <a href="../contact/" target="_blank">contact
us</a> if you want one.</b></p>

<h3>Special note</h3>

<p>This advice covers three meetings: the first meeting is the Annual General 
Meeting of all shareholders, the second is of A-Shareholders only, and the third 
meeting is of B-Shareholders only. Blame SP - they are the only company left on 
the SEHK with two classes of ordinary shares. The meetings take place one after 
the other, starting at 11.00.</p>

<p>The two classes allow the Swire family to maintain voting control with only a 
minority equity position. Each A-Share or B-Share has 1 vote, but 5 B-shares 
carry the same dividend and equity rights as 1 A-Share. This makes the B-Shares 
5 times more powerful than the A-Shares. This is illustrated by the following 
table:</p>

<p class="center"><img alt="" src="../images/0019AG1.gif" style="max-width:527px;width:100%"></p>

<p>The table shows that the controlling shareholder has 29% of the equity but 
52.2% voting control. However, they only have 4.4% of the A-Shares and 67.0% of 
the B-Shares, so they cannot determine the outcome of the A-Share meeting! For 
simplicity, we have ignored the Swire family's modest direct holdings.</p>

<p>We will give you all the recommendations for the 3 meetings first, and then 
the reasons.</p>

<h3>Meeting 1 - AGM</h3>

  <table class="txtable">
    <tr>
      <td><i><b>Item</b></i></td>
      <td><i><b>Description</b></i></td>
      <td><i><b>Vote</b></i></td>
    </tr>
    <tr>
      <td>1</td>
      <td>Declare final dividends</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2.a</td>
      <td>Approve the re-election of all directors in a single resolution (only 
      if passed unanimously)</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>2.b</td>
      <td>If resolution 2.a is not passed unanimously, then:</td>
      <td>&nbsp;</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>re-elect David Gordon Eldon</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>re-elect Keith Graham Kerr</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>re-elect James Wyndham John Hughes-Hallett</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>re-elect David M Turnbull</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>re-elect Davy Ho Cho Ying</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>re-elect Clement Kwok King Man</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>re-elect Marjorie Yang Mun Tak</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3</td>
      <td>Re-appoint PriceWaterhouseCoopers</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>4</td>
      <td>Mandate the directors to repurchase shares</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5</td>
      <td>Mandate the directors to issue additional shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>6</td>
      <td>Mandate the directors to issue repurchased shares</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>7</td>
      <td>Approve Directors' fees (up to a total of HK$2m)</td>
      <td>FOR</td>
    </tr>
    </table>

<p><i>Note: the lack of numbering on the 
individual election resolutions adds to the confusion that voters may feel.</i></p>

<h3>Meeting 2 - A-Shares only</h3>

  <table class="txtable">
    <tr>
      <td><i><b>Item</b></i></td>
      <td><i><b>Description</b></i></td>
      <td><i><b>Vote</b></i></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Approve ordinary resolutions 4 and 6 in the Notice of the 
      AGM&nbsp; </td>
      <td><b>AGAINST</b></td>
    </tr>
    </table>

<p>Note: the controlling shareholder of SP, John Swire &amp; Sons Ltd, only owns 
about 4.4% of the A-Shares, so you have a chance to outvote them. <i>
Webb-site.com </i>will demand a poll. </p>

<h3>Meeting 3 - B Shares only</h3>

  <table class="txtable">
    <tr>
      <td><i><b>Item</b></i></td>
      <td><i><b>Description</b></i></td>
      <td><i><b>Vote</b></i></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td>Approve ordinary resolutions 4 and 6 in the Notice of the 
      AGM&nbsp; </td>
      <td><b>AGAINST</b></td>
    </tr>
    </table>

<p>Note: <i>Webb-site.com</i> has no B-Shares (they are not in the Hang Seng 
Index), so they are not in Project Poll. If you want your votes to count, then you 
will have to demand a poll yourself, unless the Chairman does the decent thing 
and calls for one.</p>

<h3>Reasons AGAINST - Meeting 1 - AGM</h3>

<h4>Item 2.a</h4>

<p>Resolution 2.a would only be appropriate if 
every shareholder was happy with the list of directors proposed for re-election. 
As we oppose one of the candidates, we will vote against resolution 2.a, and 
hence it will not be passed unanimously, and hence resolution 2.b will apply. 
Frankly, the inclusion of 2.a is a waste of time since on a poll there will 
almost certainly be some votes against it, so it is almost certain never to 
pass.</p>

<h4>Item 2.b</h4>

<p>We are in favour of all candidates except David Eldon (<b>Mr Eldon</b>). Mr 
Eldon is 
proposed for re-election as an independent non-executive director, but he has a 
conflict of interest because he is also Chairman of The Hongkong and 
Shanghai Banking Corporation Ltd (<b>HSBC</b>), which is listed by SP in its 
annual report as its only Principal Banker. SP's associate Hong Kong 
Aircraft Engineering Co Ltd (0044) also lists HSBC as its only Principal Banker.</p>

<p>Furthermore:</p>

<ul>
  <li>James Hughes-Hallett, Chairman of SP, is a 
non-executive director of HSBC. He first joined the Swire group in 1976.</li>
  <li>Baroness Lydia Dunn, an Executive Director of John 
Swire &amp; Sons Ltd, the controlling shareholder of SP, is a non-executive 
Deputy Chairman of HSBC Holdings plc (0005), which owns HSBC. She is also a 
non-executive director of SP, and first joined the Swire group in 1963.</li>
  <li>Raymond Or Ching Fai, General Manager of HSBC, is also an 
&quot;independent&quot; director of associate Cathay Pacific Airways Ltd (0293). 
We oppose his re-election too, see <a target="_blank" href="0293AGM2003.asp">
Cathay Pacific Voting Recommendations</a>.</li>
</ul>

<p>These cross-directorships between Swire and HSBC constitute a further 
conflict of interest for Mr Eldon, so we cannot regard him as independent. This is 
not a new position for bankers at SP - he succeeded John Gray on 1-Jun-96, when 
Gray retired as Chairman of HSBC. It seems that HSBC has 
traditionally had a seat on the board of SP, which would be fine for SP if the 
company didn't claim that the occupant was independent. The same pattern is 
observed at Cathay Pacific.</p>

<p>Regular readers will know that we have opposed &quot;independent&quot; directorships at 
Hang Seng Bank, Hong Kong &amp; China Gas and Bank of East Asia for the same 
reasons. We are not alone in this - the New York Stock Exchange has recently 
submitted <a target="_blank" href="http://www.nyse.com/pdfs/amend1-04-09-03.pdf">
proposals</a> to the SEC which frowns upon a company's bankers from being 
considered as independent directors, and in the UK, the
<a target="_blank" href="http://www.dti.gov.uk/cld/non_exec_review/">Higgs 
report</a>&nbsp; on non-executive directors made a similar recommendation that 
the UK Combined Code on corporate governance be amended to make clear that those 
whose employers have &quot;material business relationships&quot; with a company should not 
be considered as independent of that company.</p>

<h4>Items 5 and 6</h4>

<p><i>Webb-site.com</i> urges all investors to vote against the general issue mandate
for all listed companies, for the reasons explained in <a href="vampire1.asp" target="_blank">Project
Vampire</a>, unless they comply with the recommendations set out in that 
article. The 
non-pre-emptive issue mandate allows management to choose  the shareowners 
 
by allotment of shares. This corrupts the governance mechanism. Shareowners should govern 
management, not the other way around. If a company wishes to raise cash by 
issuing shares, then it should do so by rights issue.</p>

<h3>Reasons AGAINST - Meetings 2 and 3</h3>

<p>The A-Share and B-Share meetings each have a single proposal, namely to 
approve Resolutions 4 and 6 as set out in the AGM notice. We are opposed to 
resolution 6, and as it is not offered separately from resolution 4, we must 
recommend against the bundle, so we urge shareowners to vote against the 
resolution in both meetings.</p>

<h3>Comment</h3>

<p>SP, in common with HSBC Holdings plc, is in a small minority of companies 
that insist on referring to their directors by cryptic initials, as if they 
wanted to be &quot;private&quot; directors of a public company. For example, one of the 
directors is only named as &quot;D Ho&quot; - and it is only through research that we have 
discovered his full name of &quot;Davy Ho Cho Ying&quot;. The proxy form just asks you to 
re-elect &quot;D Ho&quot; - there are probably hundreds of people fitting that description 
in Hong Kong alone.</p>

<p><em>Copyright Webb-site.com, 2003</em> </p>
<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=384">SWIRE PACIFIC LIMITED</a></li>
				
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