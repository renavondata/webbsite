
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

<script type="text/javascript">document.title="Universal pensions in HK: the case against";</script>

	<div class="summary">In a guest contribution, economist Jim Walker lays out the case against calls for a universal pension in HK, including the lessons from history of the European welfare state.</div>

<h2 class="center">Universal pensions in HK: the case against<br>
<span class="headlinedate">12 March 2011</span></h2>
<p class="revisedate">By guest contributor <a href="#walker">Jim Walker</a></p>
<p>Recently there have been calls from some legislators which raise the issue of whether or not Hong Kong, like 
so many other countries, should introduce a universal pension scheme. After all, 
Hong Kong has an embarrassment of fiscal riches so why not make good use of them 
by taking good care of our old folk?</p>
<p>While I would 
agree that there is plenty that the government could be doing to better use Hong 
Kong's fiscal stockpile (who needs an even faster rail link to Shenzhen, for 
example?) adopting policies which are abject failures in other countries is not 
a sensible option. Admittedly, this seems to be lost on the Hong Kong government 
as it continues to introduce and propose Western-style policies - a minimum 
wage, Competition Law, maximum work hours - that have done nothing but reduce 
employment and entrepreneurship levels elsewhere. Albert Einstein once wrote, 
"The definition of insanity is doing the same thing over and over again and 
expecting a different outcome".&nbsp; We 
need to guard against Hong Kong falling into the same traps as everyone else.</p>
<h3>Old Age Pension: Historical backdrop</h3>
<p><a href="http://en.wikipedia.org/wiki/Neville_Chamberlain" target="_blank">Neville 
Chamberlain</a> introduced the 
<a href="http://en.wikipedia.org/wiki/Rise_of_Neville_Chamberlain#Minister_of_Health" target="_blank">
Widows, Orphans and Old Age Contributory Pensions Act</a> into the UK parliament in 1925. 
This act promised a pension to male citizens on reaching the age of 65 (60 for 
women). Despite the loss of life in the First World War the UK was then a 
relatively young, vibrant country with a low dependency ratio i.e., many more 
workers than dependents (under 15s plus over 65s) in the population.</p>
<p>The only problem 
with Chamberlain's proposal was that in 1925 the average life expectancy for a 
man in the UK was 56 and, for a woman, 60. In other words, the government of 
that day was promising something that it never intended to pay - hence the 
reason that no UK government since has ever actually pooled National Insurance 
(the original MPF-style form of contribution) into a pension fund for the 
future.</p>
<p>When the Welfare 
State was given the green light by the Labour Government in 1945 its commitments 
barely meant a thing either. By that time the life expectancy of a man in the UK 
was 64 while that for a woman was 68. At least the state pension would only need 
to feed half the population and that only for eight years. Of course, by 1999 
the picture had changed somewhat. Male life expectancy in the UK had risen to 75 
and female to 80. They have since increased further. Between 1925 and now the 
UK, along with nearly every other European country, has made no attempt to set 
aside funds explicitly for old age pensions. These have been non-contributory 
entitlement schemes. </p>
<p>This is all very 
well as long as the contributions to National Insurance and general taxation 
from workers and private businesses are greater than the demands from the 
growing old age pensioner cohort. The UK and Europe, because of the ageing 
population, is fast reaching a point where, between pensions and social welfare 
entitlement programmes, the Ponzi scheme is being laid open. (A 
<a href="http://en.wikipedia.org/wiki/Ponzi_scheme" target="_blank">Ponzi scheme</a> is 
where payments to earlier members of a project or fund are funded from the 
contributions of new members. It comes to a crashing end when there are fewer 
and fewer new entrants and more and more existing members looking to take money 
out). </p>
<p>Politicians like 
to promise the electorate something for nothing. European governments have been 
doing so for decades. In most of Europe government spending is now over 50% of 
GDP. Fiscal deficits have been used for many years to prop-up this spending but 
government debt loads have now reached levels that cannot be tolerated. From 
here onwards the private sector in Europe is going to find out just how much the 
past promises of politicians are going to cost it. It cannot pay.</p>
<h3>Government finances: Your money</h3>
<p>It is worth 
stating a simple truth at this point: the government is entirely financed by the 
private sector. Only private sector workers and companies pay taxes. Public 
sector workers' net salaries (i.e., less the taxation which they pay) are entirely 
funded by private sector contributions (or, in some countries, borrowing). 
Public sector capital spending is also entirely funded by the private sector, 
either at home or abroad. Even government revenue from land sales - and who 
granted the government the right to own land in the first place? - is dependent 
on private sector purchase.</p>
<p>The distinction in 
people's minds (aided and abetted by bad economists, I freely admit) between the 
private and the public sectors is mythical. The public sector is entirely paid 
for by the private sector. That is why the terms 'public servant' or 'civil 
servant' came into use and are still appropriate - not that government employees 
act like they are.</p>
<p>With that in mind, 
the question should be asked of the Hong Kong Government, "Why do you have so 
much of our money in reserves and what are you going to do with it?".</p>
<p>Hong Kong is in something of an unique situation in that -
<b>for now</b> - it runs a budget surplus 
and has accumulated vast wealth to the tune of 65% of current GDP (in the Budget 
Statement it is claimed that reserves amount to only 30% of GDP but that is purely 
fiscal reserves and omits many other capital funds in the overall public 
accounts, including the HKMA). There is absolutely no good reason for this to be 
the case. It is not government's role to 'save for a rainy day' nor are these 
surplus reserves necessary to support the Hong Kong dollar peg.</p>
<p>That aside, 
governments should run only balanced budgets at any time (or at least balanced 
through a normal economic cycle). Neither borrowers nor lenders should they be - 
unfortunately that is not the way of the world.</p>
<h3>Hong Kong's Future</h3>
<p>Here is a recent 
comment from someone described as a 'battle-scarred veteran of municipal finance 
boards': &quot;During my time on two pension 
boards, the boards did less as the problems got worse. Board members tend to be 
town employees caught in the headlights. They are not financially trained, and 
they tend to believe rather unsophisticated consultants who all say the same 
thing: 'You can earn your way out in 15 years.' This is not true. Not even 
compounding can save you when benefits are rising faster than the return on 
assets. We have yet to begin to seriously attack this problem. The most we have 
done is 'tried' to initiate cuts of annual percentage increases in benefits.&quot;</p>
<p>Maybe Hong Kong 
public servants would be better than this but I doubt it.</p>
<p>The problem with 
European and US pension schemes is that they have never been fully costed nor 
have they ever been based on realistic assumptions about what pension scheme 
managers can be expected to produce as a return. The 8% per annum projected 
returns of most US state and private pension schemes is an artifact of the 
inflationary 1970s when pension plans were exploding in addition to state 
guaranteed benefits. </p>
<p>Here is what you 
have to consider before Hong Kong plunges headlong into the same hole:</p>
<ul>
	<li>What are the realistic outgoings to the Hong Kong old age population 
	based on a realistic monthly pension and a realistic life expectancy?</li>
	<li>How much 
will have to be contributed by every worker in the economy on an annual basis to 
pay for this scheme out of <b>current</b> income?</li>
	<li>Assuming 
that some portion of the current fiscal reserves can be ring-fenced (I would 
argue that that is not a safe assumption in any event, but that is by the way)
as a bequest to 'the old', what realistic return on that pool of capital 
can be expected? I would urge that you do NOT assume anything better than the 
risk-free return on a 10-year government bond at best.</li>
	<li>What are 
the demographic dynamics facing Hong Kong over the next 50 years and how do 
these change the payments and contributions profiles?,</li>
	<li>What are 
the chances that, in 2047, Hong Kong's fiscal balance will be subsumed into a 
central Chinese pool and how will that change the financing dynamics?</li>
</ul>
<p>At the moment, the 
government's finances would tell us that Hong Kong is a very rich place. That 
encourages politicians and pressure groups to be generous with the money. That 
is all well and good but it is very different from setting in place an unfunded 
entitlement programme. It is open-ended, unfunded entitlement programmes that 
are quickly becoming the rod for people's backs all over the developed world. It 
is not good enough to adopt schemes such as old age pensions just because 
everyone else has done so.</p>
<p>Bear in mind that, 
when all is said and done, "the road to hell is paved with good intentions".</p>
<p id="walker"><em>Jim Walker is the Founder and Managing Director of
</em><a href="http://www.asianom.com/" target="_blank"><em>Asianomics Ltd</em></a><em>, 
an economic research and consultancy company servicing principally the fund 
management industry.</em></p>
<hr>
<p><strong>So, what would a universal pension cost and can we afford it? Read 
our other article today, </strong><a href="pensioncost.asp"><strong>The cost of 
a universal pension</strong></a>.</p>

<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=52225">ASIANOMICS MACRO LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=64881">Walker, James Russell (SFC:AAB473)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=24">Social welfare</a></li>
				
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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