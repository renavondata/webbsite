
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

<script type="text/javascript">document.title="HKEx voting recommendations";</script>

	<div class="summary">The race is on, and we need your help. If you own shares in HKEx, and want a better-run market, then you should elect an HKEx board which for the first time includes investor representatives. Vote for David Webb and Oscar Wong and against the incumbent broker-directors at the AGM. Vote now! We also urge investors to vote against the new issue mandate and support Project Vampire.</div>

<h2 class="center">HKEx voting recommendations<br>
<span class="headlinedate">28 March 2003</span></h2>
  <table class="txtable">
    <tr>
      <td>Company:</td>
      <td>Hong Kong Exchanges and Clearing Limited (<b>HKEx</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0388</td>
    </tr>
    <tr>
      <td><b>Date of meeting:</b></td>
      <td><b>15-Apr-03</b></td>
    </tr>
    <tr>
      <td>Time of meeting:</td>
      <td>16:30</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>28-Mar-03</td>
    </tr>
    <tr>
      <td>Notice of Meeting:</td>
      <td><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030321/0388/f113.pdf">Click here</a></td>
    </tr>
    <tr>
      <td>Shareholder circular:</td>
      <td><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030321/LTN20030321067.pdf">Click here</a></td>
    </tr>
    <tr>
      <td>Voting method:</td>
      <td><i>Webb-site.com </i>will require a poll, all proxies will be counted</td>
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
      <td>1</td>
      <td>Adopt the accounts</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Declare a final dividend</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3.1</td>
      <td>Re-elect Mr Fan Chor Ho, Paul</td>
      <td>AGAINST</td>
    </tr>
    <tr>
      <td>3.2</td>
      <td>Re-elect Dr Kwok Chi Piu, Bill</td>
      <td>AGAINST</td>
    </tr>
    <tr>
      <td>3.3</td>
      <td>Re-elect Mr Lee Jor Hung, Dannis</td>
      <td>AGAINST</td>
    </tr>
    <tr>
      <td>3.4</td>
      <td>Re-elect Mr Lee Kwan Ho, Vincent Marshall</td>
      <td>AGAINST</td>
    </tr>
    <tr>
      <td>3.5</td>
      <td>Re-elect Mr Seto Gin Chung, John</td>
      <td>AGAINST</td>
    </tr>
    <tr>
      <td>3.6</td>
      <td>Elect Mr Wong Sai Hung, Oscar</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3.7</td>
      <td>Re-elect Mr Yue Wai Keung</td>
      <td>AGAINST</td>
    </tr>
    <tr>
      <td>3.8</td>
      <td>Elect Mr Webb, David Michael</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>4</td>
      <td>Re-appoint PriceWaterhouseCoopers as Auditors</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5.1</td>
      <td>Mandate to issue additional shares</td>
      <td>AGAINST</td>
    </tr>
    <tr>
      <td>5.2</td>
      <td>Mandate to repurchase shares on-market</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5.3</td>
      <td>Extend the mandate granted pursuant to item 5.1</td>
      <td>AGAINST</td>
    </tr>
    <tr>
      <td>5.4</td>
      <td>Approve the payment of remuneration to the non-executive directors</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5.5</td>
      <td>Amend the Memorandum and Articles of Association</td>
      <td>FOR</td>
    </tr>
  </table>

<p>If you don't know how to send in your votes, see our
<a target="_blank" href="../pages/howtovote.asp">Voting Guide</a>.</p>

<h3>Reasons for recommendations</h3>

<h4>Items 3.1-3.8 </h4>

<p>This is the first time that HKEx has held elections for directors since it 
was listed on its own Stock Exchange in 2000. At the time of its listing (when 
no new shares were issued), all the shares in HKEx were owned by the former 
members of its two exchanges, the Stock Exchange and the Futures Exchange. Those 
members elected 6 representatives to the board, all of whom are affiliated with 
local stockbrokers. They are now standing for re-election.</p>

<p>The Government, under law, appointed 8 directors prior to listing. This will 
be reduced to 6 directors after the AGM, but we do not yet know who the 
Government will appoint or re-appoint. Several of the incumbent appointed 
directors work for an investment bank, a broker, a listed company, or a 
corporate law firm. None of them works for an asset manager.</p>

<p>The Chief Executive of HKEx is an ex-officio director, taking the total to 15 
before the AGM, and 13 afterwards. He is the only executive director.</p>

<p>As there are 8 candidates for 6 seats, this will be a contested election. It 
will be decided based on the <b>net votes</b> for each candidate, being votes in 
favour minus votes against. If more than 6 candidates have net positive votes, 
then the top 6 will win. If there is a tie, the winner will be chosen by random 
draw.</p>

<h4>Vote for David Webb and Oscar Wong (3.6 and 3.8)</h4>

<p>David Webb is editor of <i>Webb-site.com</i>. Oscar Wong Sai-hung is Chief 
Executive of <a target="_blank" href="http://www.boci-pru.com.hk">BOC-Prudential 
Asset Management Ltd</a>, a local fund management firm which is a joint venture 
between <a target="_blank" href="http://www.bochk.com">Bank of China</a> and the 
UK's <a target="_blank" href="http://www.prudential.co.uk">Prudential plc</a> 
and . We don't know him personally, but HKEx needs investor representatives on 
the board, so please vote for him. Biographies of all candidates are in the 
shareholder
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030321/LTN20030321067.pdf">
circular</a>. If both Webb and Wong are elected, there will still only be 2 
investor-affiliated directors on the HKEx board, out of 13 directors.</p>

<h4>Positive votes are not enough - vote against 3.1, 3.2, 3.3, 3.4, 3.5 and 3.7</h4>

<p>Because of the net votes system, it is not sufficient to vote in <b>favour
</b>of Oscar Wong and David Webb. If you want to elect them, you must also vote
<b>against</b> the six incumbent broker-directors. You can be confident that 
their supporters will vote against the 2 new candidates. It would be a great 
shame if we were in the top 6 in terms of positive votes but not elected due to 
negative votes. Each share you own has double voting power - a vote in favour of 
Webb and Wong and against the others&nbsp; makes a 2-vote difference to the net 
votes.</p>

<p>Some shareholders may be concerned that if they vote against the incumbents, 
then only two directors (Webb and Wong) may be elected with net positive votes. 
Don't worry about that, because if there are any vacancies, then the board can 
fill them by appointing new directors whose term will last until the next AGM. 
That in fact would open the door to appointment of more investor-affiliated 
directors, offsetting the brokers and investment banks. It would be a good 
thing.</p>

<p>And please, <b>do not</b> try to pick 4 out of the 6 incumbents to go with 
the two investor candidates, because if you pick randomly, that will just result 
in giving all 6 of them two thirds of the votes you give to Webb and Wong, and 
it will make it harder for the two investors to be elected. So please vote <b>
against</b> all the other candidates.</p>

<p>We don't know if we can win. We do need every vote we can get, because it is 
likely that the percentage turnout of those brokers who still hold their shares 
in HKEx will be higher than the institutional shareholders who often ignore AGM 
votes. But if institutions fail to get out and vote for us, and we are not 
elected, then they should not complain to us later that the market seems to be 
run like a club for brokers and tycoons.</p>

<h4>Items 5.1 and 5.3 </h4>

<p><i>Webb-site.com</i> urges all investors to vote against the general mandate
for all listed companies, for the reasons explained in our article <a href="vampire1.asp" target="_blank">Project
Vampire</a>.</p>

<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13215">Webb, David Michael (1965-08-29)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17286">Wong, Oscar Sai Hung</a></li>
				
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