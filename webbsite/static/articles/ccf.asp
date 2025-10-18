
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

<script type="text/javascript">document.title="The Community Collusion Fund";</script>

	<div class="summary">We look at the numerous problems with Donald Tsang's proposed Community Care Fund. The boards of listed companies which support it either expect sufficient corporate benefit in return or are breaching their fiduciary duties. We call on Legislators to kill the CCF by vetoing the HK$5bn allocation and instead get the government to reform its welfare system using the normal budgetary process.</div>

<h2 class="center">The Community Collusion Fund<br>
<span class="headlinedate">4 November 2010</span></h2>
<p>It's not often that <em>Webb-site</em> finds itself in agreement with
<a href="../dbpub/positions.asp?p=895">Ronnie Chan Chi Chung</a>, Chairman of
<a href="../dbpub/orgdata.asp?p=495">Hang Lung Group Ltd</a> (<strong>HLG</strong>, 
0010) and its subsidiary <a href="../dbpub/orgdata.asp?p=496">Hang Lung 
Properties Ltd</a> (<strong>HLP</strong>, 0101), but kudos to him for being the 
only tycoon so far to come out and say that neither company will be contributing 
to Hong Kong Chief Executive <a href="../dbpub/natperson.asp?p=2191">Donald 
Tsang Yam Kuen</a>'s proposed &quot;Community Care Fund&quot; or <strong>CCF</strong>. 
Mr Chan (who, notably among tycoons, does not sport a
<a href="../dbpub/cat.asp?c=2">Bauhinia Gong</a> of any colour) 
was quoted by <em>SCMP </em>as saying:</p>
<blockquote>&quot;I have talked to the [Hang Lung] board. We don't think we 
have to make the donation to the fund. Hong Kong's success was built on a free 
economy and simple taxation...It would be better to make a private donation 
instead of donating money under the company's name; The [company's] money belong 
to the shareholders - not the management&quot;</blockquote>
<p>Here's an excerpt from Donald Tsang's
<a href="http://www.policyaddress.gov.hk/10-11/eng/p57.html" target="_blank">
policy address</a>: </p>
<blockquote>&quot;To encourage the business sector's participation in helping 
the poor, I have decided to set up a Community Care Fund, to which the 
Government and the business sector will each contribute $5 billion to support 
people in need in areas not covered by the Comprehensive Social Security 
Assistance Scheme. The fund will be chaired by the Chief Secretary for 
Administration. I will raise funds from the business sector. The initial 
response has been positive. I am confident that the fund can directly benefit 
many people in need. The Government will put forward an execution plan after 
consulting the community&quot;</blockquote>
<p>This proposal is wrong on so many levels that is hard to know where to start. 
Note the choice of words &quot;<u>will</u> each contribute&quot; and 
&quot;the initial response has been positive&quot; - quite obviously he had already lined 
up several pledges before his address, and those tycoons were quick to announce 
support in the following few days.</p>
<h3>What is it for?</h3>
<p>&quot;Areas not covered by CSSA&quot; - that begs the question: why not? The &quot;C&quot; stands 
for &quot;comprehensive&quot; after all. If there are deficiencies in CSSA or other 
existing welfare schemes, then fix them, and fund them annually with taxpayers' 
money as part of the budget, approved by the Legislative Council in the usual 
way. That is what taxes are for - to fund education, welfare, healthcare, law 
and order, and the other core infrastructure of a modern society. But setting up 
an off-balance-sheet vehicle, with one-time LegCo approval of a HK$5bn grant and 
no proper budgetary oversight thereafter, is no way to run public finances. It's 
the Government's favourite trick - set up a fund, such as the
<a href="http://www.itf.gov.hk/" target="_blank">Innovation and Technology Fund</a>, 
endow it with a lump sum, push it through the Finance Committee and then it is 
out of reach of budgetary oversight forever after.</p>
<h3>&quot;I will raise funds from the business sector&quot;</h3>
<p>Isn't that what taxes are for? If there is really a shortage of public funds 
for justifiable welfare expenditure, then uniform tax increases should be 
applied to raise the necessary funds. This does not require any passing around 
of the hat, calling up favourite friends before your policy address and asking 
them to chip in. If taxes are increased, nobody can expect special favours from 
the Government for paying them. But in any case, there is no shortage of public 
funds - our government holds over HK$1.1 trillion of liquid reserves - the 
fiscal reserves and the accumulated surplus
<a href="http://www.info.gov.hk/hkma/eng/press/2010/attach/20101029e3a1.xls" target="_blank">
in the Exchange Fund</a>, and will run another one of its structural surpluses 
this year thanks to <a href="leases2.asp">huge land premiums</a> and
<a href="stampout.asp">stamp duty addiction</a>.</p>
<h3>Fiduciary duties and SCR</h3>
<p>This may come as a surprise to a whole industry of consultants that makes its 
living telling companies how to polish their annual reports with green-wash and 
&quot;Corporate Social Responsibility&quot; or <strong>CSR</strong> reports, but companies 
aren't actually responsible for society. Yes, you read that right. The term CSR 
is upside down - it should be <strong>SCR</strong> -
<a href="../codocs/SCR_Exon2009.pdf" target="_blank">Social Corporate 
Responsibility</a>. Societies are responsible for companies. Societies, through 
their legislatures, make the laws, including tax laws, labour laws and 
environment laws. Companies then comply with those laws or face the 
consequences. Obeying those laws, it is the fiduciary duty of directors of 
companies to legally maximise shareholder value.</p>
<p>If it makes good business sense to advertise or promote the company, 
its brands or products, then they spend company money on that. If some of that 
expenditure goes to charities, rather than for-profit advertising outlets, then 
it is a happy consequence, but not the objective. As Lord Bowen said in the case 
of <em>Hutton v West Cork Railway Co.</em> (1883):</p>
<blockquote>&quot;The law does not say that there are to be no cakes and ale, 
but there are to be no cakes and ale except such as are required for the benefit 
of the Company&quot;</blockquote>
<p>Pure altruistic charity, without any benefit in return, is a personal choice 
for individuals, including tycoons, but not one that they can lawfully make with 
other people's money. We can't expect companies to do any more than is in their 
rational self interest. So when we read that some of these tycoons are going to 
get their listed companies to support the CCF, then it implies that:</p>
<ul>
	<li>either the board of the company believes that the 
	donation will result in commensurate benefit to the company; OR</li>
	<li>they do not expect commensurate benefit for the company, 
	and are in breach of their fiduciary duties</li>
</ul>
<p>But if they think the company will get something in return, then what? For 
example, will the Government decide not to impose tighter regulation, such as a
<a href="property888.asp">cooling-off period for new property sales</a>, 
or stricter disclosure requirements? Will they back-pedal on the proposed
<a href="../dbpub/subject.asp?c=115">competition law</a>, or water it down to 
protect cartels? Will they recommend retention of the rotten-borough &quot;<a href="corpvote.asp">functional 
constituencies</a>&quot; in 2016 and 2020? Will they decide against introducing a
<a href="../dbpub/subject.asp?c=111">class action system</a> for consumers and 
investors? After all, the next Chief Executive may serve until 2022. From the 
tycoons and listed companies' point of view, donating to the CCF might well be a 
very good investment, but from a public interest point of view, it is a recipe 
for collusion and corruption of policy-making. Even if the CCF donation is not 
made by a listed company, but by a tycoon or his wholly-owned company or 
foundation, the fact that it is made to the same government whose policies 
affect his business interests is a giant conflict of interests for the 
Government.</p>
<h3>What about the Community Chest?</h3>
<p>HK already has an organisation called the
<a href="../dbpub/orgdata.asp?p=20738">Community Chest of Hong Kong</a>, 
incorporated by
<a href="http://www.hklii.org/hk/legis/en/ord/1122/" target="_blank">special 
ordinance</a> in 1968 to acts as an umbrella fund-raising body for numerous 
welfare charities. The Chest raised HK$278m in the year to 31-Mar-2010 and 
disbursed $190m. If the tycoons and listed companies really believed it was in 
their shareholders' interests to donate to welfare in the large amounts 
&quot;requested&quot; by Donald Tsang, then they could have done so by giving it to the 
Community Chest, an organisation which at least maintains the appearance of 
being independent from Government, even though his wife is its President.</p>
<p>But they did not. The Community Chest did not receive anywhere near 
HK$5bn this year. The fact that tycoons see fit to give the money to the CCF 
rather than a more independent body such as the Community Chest, which would 
give them an equal amount of publicity and benefit the welfare community, 
suggests that only by giving this money to the CCF can they expect sufficient 
benefits in return.</p>
<h3>The line-up</h3>
<p>It is telling that only a dozen names, each chipping in HK$400m or
<a href="http://www.hutchison-whampoa.com/upload_docs/2010/10/Corporate/2248/2248_eng.htm" target="_blank">$500m</a>, will be enough to make up the Chief Executive's target of HK$5bn, and 
that is what is happening. If nothing else, it underlines that only a few big 
names call the shots in HK and each stands behind dozens of members of the 
Election Committee which elects the Chief Executive. In the 2012 CE elections, 
they will each have 50% more representatives than in 2008, because the corporate 
sub-sectors are being expanded to keep pace with the increase in the Election 
Committee from 800 to 1200 members.</p>
<h3>Legislators, wake up</h3>
<p>Legislators should stop this nonsense by vetoing the HK$5bn allocation in the 
Finance Committee. Instead, they should insist that the Government identifies 
the areas of welfare which need improvement, and the gaps in the so-called 
&quot;comprehensive&quot; assistance scheme, and fill them using the proper process and 
budgeted annual funds, without asking for donations. If legislators vote in 
favour of the CCF allocation, then they are voting in favour of a scheme which 
invites collusion and corruption of the policy-making process.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=2191">Tsang, Donald Yam Kuen</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=119">Corporate Social Responsibility</a></li>
				
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