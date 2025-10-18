
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

<script type="text/javascript">document.title="Why you should march for democracy";</script>

	<div class="summary">If you are a market professional or investor, wavering on whether to join the march for democracy on July 1st, and wondering whether it is a waste of time, then this article is for you. The choice you make now will affect the future prosperity of Hong Kong.</div>

<h2 class="center">Why you should march for democracy<br>
<span class="headlinedate">25 June 2004</span></h2>
<p>If you are a market professional, a lawyer, accountant, regulator or 
investor, wavering on whether to spend a few hours this coming July 1st holiday 
demonstrating a call for democracy, and wondering whether it is a waste of time, then 
this article is for you.</p>

<p>Hong Kong has always held itself out to the World as a free market, with a 
level playing field in which participants compete for economic resources and 
fight for the legitimacy and success of their ideas, within the framework of the 
rule of law, freedom of speech (including a free media), freedom of belief and 
freedom of association.</p>

<p>Indeed, Hong Kong does have many of the characteristics of a free market. But 
there is a key element missing, an omission which may ultimately provide Hong 
Kong's downfall. At 
the highest level of the governance structure, there is no free market. Citizens 
cannot choose between competing sets of policies by electing leaders who would carry those policies into office. And it is those policies which determine 
the laws and framework within which we compete in the semi-free market.</p>

<p>In any ecosystem, the Darwinian process of &quot;natural selection&quot; or &quot;survival 
of the fittest&quot; can happen only if there is competition. Without this, we are 
unlikely to get an optimal outcome, and the success of the system in competition 
with others is at risk. So we need competition between policy makers for the 
right to implement their ideas by gaining elected office. Think of Hong Kong has 
just one of hundreds of economic ecosystems competing in the world economy, and 
you will see why it is crucial that we have the best policies implemented by the 
best policy-makers we can choose, if we are to win in international competition.</p>

<p>In recent months, the Central and HK Governments have urged the population to 
&quot;focus on the economy rather than politics&quot;. But what they fail to acknowledge 
is that the economy is itself a product of policies, and politics is, literally, 
the art of policy making.</p>

<p>In a competitive democracy, politicians would campaign for election on the 
basis of their policies, and the public would weigh up their merits. Even once 
elected, the checks and balances between an elected executive and legislative 
branch would provide a continuing &quot;ecosystem&quot; in which policies would continue 
to evolve by natural selection.</p>
<p>Take, for example only, the following policies which might be advocated by 
pro-market (as opposed to pro-tycoon) politicians, if they were to win elected 
office:</p>
<ul>
  <li>
  A competition law, overseen by a competition 
  authority with investigative powers, to prevent abuse by monopolies or cartels 
  such as price fixing, restraints of trade or predatory pricing, thereby 
  creating a level playing field in which small businesses could enter and 
  compete in markets dominated by larger firms. Most modern countries have such 
  a law, but Hong Kong does not.</li>
  <li>
  An end to market-distorting subsidies - taxpayer 
  money dolled out by our unelected Government to special interest groups or as 
  a way of supporting small and medium enterprises (SMEs) to make up for the 
  lack of competition law.
  <a target="_blank" href="http://www.smefund.tid.gov.hk/">SME Funding Schemes</a> 
  amounting to HK$7.5bn include the SME Loan Guarantee Scheme, the SME Training 
  Fund, the SME Development Fund and the SME Export Marketing Fund. Other 
  schemes which squander tax money include efforts to push the economy in a 
  certain direction, such as the $5bn <a href="http://www.itf.gov.hk/">
  Innovation and Technology Fund</a>, the $750m
  <a target="_blank" href="http://www.info.gov.hk/itc/eng/funding/arf.shtml">
  Applied Research Fund</a>, and the $100m
  <a target="_blank" href="http://www.fso-tela.gov.hk/film_development_fund.cfm">
  Film Development Fund</a>.</li>
  <li>
  A reform of land policy, away from the up-front 
  land premium system which lends itself to a cartel of dominant developers with 
  massive balance sheets. This results in an inefficient feudal &quot;tax farming&quot; 
  system in which developer &quot;lords&quot; collect the tax from property buyers 
  (embedded in the price of a flat) and in turn pay land premiums to the crown, 
  taking a big cut along the way. The system also produces volatile Government 
  revenues. A replacement might be a land rental system in which bidders for 
  land commit to make payments over the duration of the land lease, which would 
  provide a more predictable Government revenue stream from ground leaseholders.</li>
  <li>
  A change in transport policy, to stop destroying 
  the harbour front with new road systems on reclaimed land, and start charging 
  users for the real cost of using existing roads. For example, franchised buses 
  are currently exempt from fuel duty and pay only a nominal road tax of about 
  HK$4,000 p.a., yet are among the heaviest road users and air polluters, and 
  motorists in general get to drive on land in Central that would fetch a small 
  fortune as office or retail space, yet comes at no incremental cost to 
  motorists as roads 
  (other than the fuel duty, which is the same on a countryside road). It's no 
  wonder that rail systems find it hard to compete when they have to recover the 
  cost of their own tracks.</li>
  <li>
  A change in public housing policy, to remove 
  tenants whose incomes and assets have risen to a level where they can afford 
  to rent private housing, and a shift away from government construction of public 
  housing in favour of rental subsidies for the most needy, which are far easier 
  to remove than are people from flats.</li>
  <li>
  And on the investment front, the introduction of 
  class action rights for shareholders to recover damages from abusive and 
  criminal controlling shareholders; an end to a system in which a listed 
  company regulates listed companies; and a unified regulator to cover the 
  overlapping areas of banking, insurance, pensions and securities.</li>
</ul>

<p>We could go on to numerous other policy areas, but you get the idea - you may 
not agree with any of the above proposals, but at the moment, you have no 
choice, because you cannot vote in favour or against a person proposing them, 
unless you are one of the 800 privileged few who select the Chief Executive.</p>

<p>The tycoons who currently call the shots have expressed fears that democracy 
would lead to a &quot;social welfare state&quot; in which an elected Government squanders 
public resources and drives us into deficit. Wait a minute - don't we have an 
unelected Government which squanders resources on corporate welfare schemes such 
as the SME Funding Schemes or the Cyberport? And have they not presided over the 
most massive deficits in recent history? We are talking about a government which 
also indulged in salaries tax and rates rebates at various times since the 
handover in an attempt to keep the middle classes happy, further exacerbating the 
deficit. Who's making the hand-outs here?</p>

<p>To be sure, democracy is no panacea. It is not the solution to our problems, 
but it is the means by which solutions are most likely to be found. With the 
powers of an elected Government comes responsibility and accountability at the 
next election. Any Government which indulged in a social welfare state and ran 
up massive deficits would drive the economy into the ground and get voted out of 
office for its performance. The unfit policies would fail, and that's what makes 
a free market in policy making.</p>

<p>Tycoon scare-mongers have suggested that we could end up like certain African 
&quot;democracies&quot; which are in economic ruin and run by quasi-dictators. Zimbabwe 
might be a good example. But these economies normally lack the institutions 
needed for successful democracy, including a low level of corruption, an 
independent judiciary, freedom of speech and assembly, freedom of the press and 
free and fair elections. Other failed democracies suffer from an illiterate 
electorate whose votes are easily manipulated or bought. Hong Kong does not 
suffer these problems.</p>

<p>It has also been argued that some quasi-dictatorships or one-party states 
have presided over successful economies. To be sure, that is always a possible 
outcome if, by random chance, you have an unelected but optimal government with 
optimal policies, but 
it is far less likely than an economy with the checks and balances of elected 
government and democratic institutions. There are no guarantees that democracy 
will produce the best outcome, but it has a higher probability than a 
non-competitive process, or one in which the majority of economic participants 
are excluded.</p>

<p>So if you are a market professional or an investor living in Hong Kong, and 
if you want the highest probability of a prosperous and stable economy in 
future, then you should be in favour of a democratic system which allows us to 
choose the best policy-makers and policies that Hong Kong can offer.</p>

<p>The mainland Government recently usurped the reform process set out in the 
Basic Law by making a pre-emptive ruling (the &quot;three No's&quot;)&nbsp; that in any 
reforms in Hong Kong, there would be:</p>

<ul>
  <li>No universal suffrage for electing the Chief 
Executive and Legislature (as allowed for in the Basic Law respectively from 
2007 and 2008 onwards);
  </li>
  <li>
No change in the 50:50 relative proportion of 
&quot;special interest&quot; functional constituencies to geographically elected 
constituencies; and
  </li>
  <li>
No change to the requirement that Bills proposed by 
members of LegCo must have the approval of a majority of the functional members 
and a majority of the geographically elected members.
  </li>
</ul>

<h3>What you can do</h3>

<p>Of course, whatever an authoritarian Government decides, they can also 
change. But in our view, the only way they are likely to change their minds is 
if they recognise that Hong Kong's stability will be assured if the people are 
allowed to choose their policy makers, and jeopardised if they cannot. A 
Government that has a popular electoral mandate will find it far easier to 
govern and to make the difficult decisions that a responsible and accountable 
government must make.</p>

<p>To achieve  democracy now, the people of Hong Kong must make this the &quot;path 
of least resistance&quot; for the mainland decision makers. It must be clear that if 
the people are not granted universal suffrage, then they will repeatedly join 
peaceful mass demonstrations until they get it, and they will elect legislators 
who are likely to do what they can to improve Government policy through 
legislative veto.</p>

<p>There is nothing unpatriotic about marching on July 1st. It is a celebration 
of your rights under the Basic Law to freedom of speech and assembly, rights 
guaranteed under the &quot;One Country, Two Systems&quot; formula. It is a demonstration 
of the &quot;need for change&quot; and that Hong Kong people are ready to fulfil the 
stated goal of &quot;Hong Kong people ruling Hong Kong&quot; by universal suffrage. Nobody 
is calling for sovereignty or independence from the mainland. A city should be 
able to elect its Mayor and Council without electing the country's President. 
New York City, for example, is not a sovereign state, and as our leaders have 
often said, we strive to be the Manhattan of Asia. Indeed, New York shows that a 
tycoon can win elected office, as do Thailand and Italy, both of which have 
multi-party democracies.</p>

<p>What mainland leaders may fear most is the prospect of having a successful, 
prosperous and stable democracy within their sovereign territory, because of the 
implications for their own system. But they should not fear this, but embrace it 
as a test-bed for future change in China. The transition from centrally-planned 
authoritarian economy to a market-driven liberal competitive economy will take 
many more years, but ultimately the mainland will have to adopt similar 
change to its political structure if it is to attain long-term success as a free market economy.</p>

<p>Now you must make a choice. Either join the call for democracy, or suffer the 
lack of choice of Government for years to come. A low turn-out on July 1 would 
be a significant set-back to the democracy movement. Your presence will count, 
but simply claiming that you were in moral support will not.</p>

<p>The march begins at 3pm in Victoria park, Causeway Bay, and goes to the 
Government Offices in Central. If you can't get into the park, join the march 
along Hennessy Road. Wear white - it's this year's theme. It also reflects more 
heat. Bring your friends, family, and plenty of water.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=133">Electoral reform</a></li>
				
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