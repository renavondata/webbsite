
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

<script type="text/javascript">document.title="The Client that got away";</script>

	<div class="summary">A light-hearted look at the events of Summer 1998.</div>

<h2 class="center">The Client that got away<br>
<span class="headlinedate">28 August 1998</span></h2>
<p><i>The Scene:</i></p>

<p>Summer 1998, Hong Kong. The Hang Seng Index just passed through 7,000.
Downwards. A bored stockbroker in Queen's Road gazes out of the window as the rain
trickles down the pane somewhat faster than the volume on his broker screen. A
mild-mannered, slightly greying gentleman strolls into the broker's office and sits
down in an amply padded leather armchair, rainwater seeping out of his shoes. He begins to
speak:</p>

<table class="opltable">
  <tr>
    <td>Man:</td>
    <td>I'd like to open a trading account.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>Excellent. Always good to have new business in these
    difficult times. Now I'll just need to ask you a few questions to satisfy the
    &quot;know your client&quot; rules of the Exchange. You know, old chap - money laundering
    - that sort of thing. Your name isn't Launder is it?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>No, wrong sketch mate. Go ahead with your questionnaire.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>Have you any previous experience of trading in the stock
    market?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Well, not really, I normally use fund managers for that sort
    of thing.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>OK, I'll just put &quot;complete amateur&quot; on the
    form. And how much were you thinking of investing?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Oh, I don't know. Say about 15 bars for starters?</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>&quot;Very good Sir&quot; [the broker instantly folds away
    his copy of the Racing Standard and becomes polite] &quot;that's 15 million Hong
    Kong...</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>No no, I mean bars as in billion, US dollars</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>Jesus Christ!</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>No, but you are close. The name's &quot;Joseph&quot;</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>And I suppose you've got a technicoloured dreamcoat too?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>No, but a colleague of mine does a natty line in bow
    ties....</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>Never mind that. We'll just put &quot;more money than
    sense&quot; in the net-worth box. May I ask how you came by all this um, shall we say,
    &quot;liquidity&quot;?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Well, actually, I collected it from 6 million people, over a
    period of about 147 years.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>Are you <i>sure</i> you're not connected with the
    Church?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Not a bit of it. We just skim a bit off here and there -
    you know, stamp duty, land premiums, booze, betting levy, that sort of thing.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>No drug money?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Nope. We used to tax opium but we banned that before World
    War II.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>Do you have any particular stocks in mind?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Anything and everything. And I'd like to play the
    futures too. A mate of mine in a hedge funds said I could make some dough.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>[aside] hmmm. Rich <u>and</u> gullible. I <i>like</i> this
    guy...<br>
    [To client]: and how will Sir be settling his account?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Are Hong Kong dollars OK?</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>[sharp intake of breath] Oooh, I don't know, we
    don't get much call for them these days...</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Aw, come on man, that's all I got right now. I've been
    spending my greenbacks in the forward market.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>Very well. But I want non-sequential used notes. None of that
    Exchange Fund Bill junk.</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Done. And money's no object. In fact, pay as much as you
    can. Give me &quot;expensive&quot; with a capital E on them stocks.</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>Are you crazy? You want me to pay as much as humanly
    possible? Top dollar? The whole shebang?</td>
  </tr>
  <tr>
    <td>Man:</td>
    <td>Yes, BUY, BUY!</td>
  </tr>
  <tr>
    <td>Broker:</td>
    <td>OK, bye-bye...you clearly don't have the <em>compos mentis</em>
    to sign this form.</td>
  </tr>
</table>

<p>and with that the broker booted the would-be client out of his office
and passed up the opportunity to execute the easiest, biggest, take-no-prisoners buy order
of all time. </p>
<p><em>&copy; Webb-site.com, 1998</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2191">Tsang, Donald Yam Kuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2192">Yam, Joseph Chi Kwong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=160">Laughing stock</a></li>
				
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