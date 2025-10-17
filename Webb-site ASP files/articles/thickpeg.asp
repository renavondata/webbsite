
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

<script type="text/javascript">document.title="Yam's Thick Peg";</script>

	<div class="summary">After 18 months of destructive ambiguity, in which interest rates have been on the floor and property prices bubbling up to the ceiling, Joseph Yam has admitted the need for a two-way convertibility undertaking on the Hong Kong dollar. The bad news is that, for the sake of preserving bankers' jobs and banks' profits, we have a thick peg, 10 cents wide, and continuing uncertainty, rather than a fixed exchange rate.</div>

<h2 class="center">Yam's Thick Peg<br>
<span class="headlinedate">27 May 2005</span></h2>
<p>On 15-Oct-03, in our article <a target="_blank" href="peg20.asp">Destructive 
Ambiguity</a>, we marked the 20th anniversary of Hong Kong's peg to the US 
dollar by criticising Hong Kong Monetary Authority Chief Executive Joseph Yam's 
doctrine of &quot;constructive ambiguity&quot;. Mr Yam argued that the asymmetry in Hong 
Kong's currency board was a good thing. The HKMA undertook to convert Hong Kong 
dollars into US dollars at 7.80, but there was no undertaking to provide 
conversion in the opposite direction at 7.80 or at any other level. 
Consequently, when the HKD strengthened below 7.80, as it did in 2003, people 
were unwilling to convert HKD back into USD, in case the HKD was allowed to 
strengthen some more.</p>
<p>Mr Yam wrote in his column of 2-Oct-03:</p>
<blockquote>
  <p>&quot;I am sure that the market will calm down soon. In the meantime, no doubt 
  there will be critical comments again on the asymmetry in the manner in which 
  we operate the Currency Board system, in that there is no formal 
  convertibility undertaking on the strong side of the Link. But then there is 
  no harm to have a bit of constructive ambiguity...&quot;</p>
</blockquote>
<p>There certainly were critical comments. We called then for the HKMA to 
introduce a two-way convertibility undertaking at a fixed rate of 7.80. We 
argued that ambiguity by definition constitutes uncertainty, that uncertainty 
attracts speculation, and that this was contrary to the objective of the peg 
which was to eliminate speculation on the value of the Hong Kong dollar.</p>
<p>In a
<a href="http://www.hkma.gov.hk/eng/publications-and-research/reference-materials/viewpoint/20031016.shtml" target="_blank">rebuttal</a> the following day, Mr Yam rejected these concerns. As a 
consequence, Hong Kong has spent the last 18 months with a continuation of 
record low interest rates even as US rates rose, and this has been a 
contributory factor (amongst other factors) in the inflation of local property 
prices by facilitating record low mortgage rates. In our opinion, we are in the 
midst of a new property bubble.</p>
<p>Now, in a U-turn, the HKMA has accepted that a two-way convertibility 
undertaking is needed, and on 18-May-05 it
<a href="http://www.hkma.gov.hk/eng/key-information/press-releases/2005/20050518-4.shtml" target="_blank">announced</a> &quot;refinements&quot; to the operation of the &quot;linked exchange rate 
system&quot; (you will never hear them call it the peg). That's the good news. The 
bad news is that they put political considerations, namely jobs for bankers and 
profits for banks, ahead of common sense, and maintained a 10-cent spread 
between the convertibility rates, so you can have as many HKD as you like at 
7.75, or as many USD as you like at 7.85. This range is what they call the 
&quot;Convertibility Zone&quot;, or what we would call a &quot;Thick Peg&quot; - not a single point, 
but a range.</p>
<p>The real reasons for this were not spelt out in the recent announcement, but 
if you look back to a
<a href="http://www.hkma.gov.hk/eng/key-information/speech-speakers/jckyam/20040119-1.shtml" target="_blank">speech</a> by Mr Yam on 19-Jan-04, he makes it clearer:</p>
<blockquote>
  <p>&quot;There is a further consideration and this is the impact of a two-way 
  convertibility undertaking on the jobs of all those employed in the dealing 
  rooms of banks trading the Hong Kong dollar against the US dollar. Depending 
  on whether there is a spread between the strong side and the weak side in the 
  convertibility undertaking, market activity will be diverted to us and we 
  would play the role as the market maker. In the extreme case when there is no 
  spread and we buy and sell both at the level of 7.80, all buying and selling 
  of Hong Kong dollar against US dollar will be diverted to us. We would be the 
  counter-party to every deal and there would be much less a need for dealers 
  that live on market volatility. Obviously, this is not something that any of 
  us would wish to see...&quot;</p>
</blockquote>
<p>There you go, he said it...&quot;dealers that live on market volatility&quot;. Mr Yam 
is essentially arguing that we should keep some uncertainty in the HKD/USD 
exchange rate so that people can be employed to speculate on it. Jobs for jobs' 
sake, and economic inefficiency for the sake of intermediaries. It's like 
arguing that we must keep some crime or there wouldn't be any jobs for the 
police.</p>
<p>In fact, there is another aspect to this, besides gratuitous job support. 
Banks currently make money by skimming a few tenths of a cent (or more) each way 
on conversions, and they are able to hide this by telling their customers that 
the exchange rate fluctuates, and that what they are offering is the &quot;market 
rate&quot;. In the absence of a live quotation screen, or in a situation where the 
instruction is not negotiated in real time, most customers just accept what they 
are given as the market rate, and have no real choice, given that they cannot 
get a different counterparty without incurring the time and cost of moving money 
between banks. But if everyone knew that the peg was fixed at a two-way 7.80, 
then there would be virtually no scope for skimming these profits. Banks would 
compete and end up charging no more than the cost of taking your phone call or 
receiving your USD/HKD instruction on the internet. In short, the market would 
be more efficient. This would be great for everyone except those poor 
impoverished banks and bankers. But don't feel too sorry for them, because 
trades with all other currencies besides the USD would still carry risk and 
profit potential - Hong Kong's foreign exchange markets would continue, and you 
would still pay the bank a profit each time you switched other currencies.</p>
<p>Incidentally, Mr Yam is wrong to say that the HKMA would be the 
&quot;counter-party to every deal&quot; if the rate were fixed at 7.80. Only adjustments 
to banks' net positions would end up with the HKMA. When a customer decides to 
switch her HKD7,800 deposit into USD1,000, the bank wouldn't immediately convert 
HKD7,800 in its clearing account at the HKMA. Most of the time, as is currently 
the case, the bank would simply net that off against a trade they had made with 
another customer, or accept a tiny change in the bank's net HKD liabilities, 
particularly given that they would have no currency risk, since the rate of 7.80 
would be fixed.</p>
<p>In the last week, the effect of the two-way convertibility undertaking has 
been what you would expect - investors now have the confidence to buy USD if the 
HKD is near the strong boundary of 7.75, and this prevents the massive build-up 
of HKD in the clearing system, and as a consequence, local interest rates have 
quickly adjusted upwards to close to the USD interest rate curve. However, by 
adopting a thick peg rather than a two-way conversion point of 7.80, we will all 
continue to pay more than we need to for foreign exchange, keeping a few bankers 
and their employers happy at our expense.</p>
<p>There is a second problem with adopting the thick peg rather than a single 
point, and that is that there is still foreign 
exchange risk attached to switching into the currency with the higher interest 
rate, so the interest rate arbitrage mechanism doesn't work as efficiently to 
level out the rates. By comparison, with a single exchange rate, the moment you 
are offered a higher interest rate in the other currency, it makes sense to 
switch, and so the rates are kept level. Already, the HKMA has had to intervene 
to create HKD within the range, rather than waiting to be hit at the boundary, 
and this has created further uncertainty about whether there is a boundary 
within the boundaries.</p>
<p>Some time in the next two years, but not yet, Mr Yam will probably admit to 
another error and move the boundaries to a fixed conversion point.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2192">Yam, Joseph Chi Kwong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=121">Currency board/ peg</a></li>
				
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