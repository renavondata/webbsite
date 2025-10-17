
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

<script type="text/javascript">document.title="Cyber-Sale?";</script>

	<div class="summary">Two recent votes in Legco approved funding for the Cyberport's basic infrastructure, after a meeting between the government and 10 leading developers who had raised objections to the deal. Webb-site.com has learned that the Government has appointed Morgan Stanley to advise it in relation to the project. Rumours are circulating that a Government announcement is expected in the next few days. We make a prediction of what they will say...</div>

<h2 class="center">Cyber-Sale?<br>
<span class="headlinedate">9 June 1999</span></h2>
<p>After the Government announced its Cyberport property joint-venture with
Pacific Century Group (PCG) on 3-Mar-99, a group of 10 leading developers (let's call them
the G10) appointed a lawyer and public relations consultant to present their protests to
the Government against the lack of tendering for the project.</p>

<p>The developers were:</p>

<table class="txtable center">
  <tr>
    <td>Hang Lung Development<br>
    Henderson Land Development<br>
    HKR International<br>
    Hongkong Land<br>
    Hysan Development</td>
    <td>New World Development<br>
    Shun Tak Holdings<br>
    Sun Hung Kai Properties<br>
    Swire Properties<br>
    Wharf</td>
  </tr>
</table>

<p>Many of the G10 were represented at a meeting with Financial Secretary
Donald Tsang and Chief Secretary for Administration Anson Chan Fang On-sang on 17-Mar-99.
The previous day, the Government stated&nbsp; that it &quot;<em>would be prepared to sell
its share of equity interest in the residential development to third parties who may be
interested</em>&quot;.</p>

<p>Through their lawyer, the G10 wrote to the Financial Secretary on
21-Apr-99 proposing that the residential part of the project (which comprises 75% of the
gross floor area) be put to tender, and they would promise a minimum bid of HK$8bn for the
site. The G10 later stated that it was just as prepared to underwrite construction of the
other 25% of the project.</p>

<p>The G10 proposal was consistent with the &quot;auction reserve&quot;
system whereby a reserve list of sites is held by the government, and if a minimum bid is
received for a site then the site is brought to auction.</p>

<p>Had the project been brought to auction, then the site would almost
certainly have received significantly higher bids (unless of course, developers colluded
to make a low protest bid). The $8bn figure represents an accommodation value of only
HK$1,840 per sq ft.&nbsp; We estimate that in today's market, the auction of the 4.35m sq.
ft. residential component would achieve an accommodation value of HK$3,000 per gross
square foot, or <strong>HK$13bn</strong>. This payment would be up-front and risk free.
Its about 11% higher than our earlier estimate (22-Mar-99) of $2,700 per sq. ft., as the
market has improved since then.</p>

<p>Deducting the estimated $5bn cost of constructing the rest of the project,
this would leave a profit of HK$8bn for the government to invest in education of our
future IT professionals.</p>

<p>The government rejected the proposal. Executive Councillor Sir T.L. Yang
said on 28-Apr-99 &quot;<em>we must not allow real estate development to creep into it as
an important element of the project</em>&quot;. Of course not!</p>

<p>However, on 3-May-99, the Government held another meeting with
representatives of the G10. The meeting was mentioned in Legco on 6-May-99. Both sides
stressed that no deals or commitments were made, calling it an &quot;exchange of
views&quot;, but acknowledged that the subject of the Government selling part of its
interests in the Cyberport was discussed.</p>

<p>On 10-May-99, in response to the G10's first press release which was
issued that day, the Government stated &quot; <em>we are prepared to consider the best way
of selling [our] equity stake in the Cyberport residential development to third parties.
We will give this detailed consideration and come up with the best option in the next few
months</em>&quot;.</p>

<h3>Legco approvals</h3>

<p>Two key votes were held in Legco to approve $964m of engineering
infrastructure for the project. The first, on 12-May-99, was passed 14:10 by the Public
Works Sub-Committee of the Finance Committee. Against were 7 Democrats, 3 Frontier
legislators and 1 from the Citizen's Party. One Democrat, who represents the Information
Technology constitutency, voted in favour. He admitted to industry pressure to back the
funding, although he agreed the way it was awarded was not fair. Also in favour were 3
legislators from the normally pro-business Liberal Party. Their support was key, and it
seems that the G10, who have shown their influence in legco before, either could not, or
chose not to, exercise it this time. The second vote, of the full Finance Committee on
22-May-99, approved the funding by 30 to 14.</p>

<p>In between the two votes, the G10 issued a final statement in which they
appeared to regard the matter as closed. After the first vote on 12-May-99 they wrote:
&quot;<em>members of the Group had indicated their desire to attend a public hearing in
the Legistative Council to express their views. As the decision has now been made, the
Group feels that the need for a public hearing no longer exists</em>&quot;. </p>

<p>They continued &quot;<em>the Group wishes to urge the Government not to
award any other projects on the basis of private treaty...in future. In other words, the
Cyberport process should not become a precedent</em>&quot;.</p>

<p>We can't help feeling that they gave in too easily....</p>

<h3>Our Prediction</h3>

<p>Webb-site.com has learned that leading investment bank <strong>Morgan
Stanley</strong> has been appointed to advise the Government in connection with the
Cyberport. A spokesman for the bank declined to go into details on the mandate. </p>

<p>Rumours are circulating that the government will shortly make an
announcement.</p>

<p>Here's what we think they'll say, based on our own speculation. The
Government would announce that, due to unprecedented public interest in the Cyberport and
having noted the earlier criticism, they have decided to sell their stake in the
residential project. They will continue to hold the office component on completion.</p>

<p>We hope that the Government will not simply sell stakes to big developers
without some sort of tender process, because that would just be compounding their error.
We think it more likely that they will announce a flotation of the project on the Stock
Exchange or its new GEM second board.</p>

<p>In a flotation, as is common practice, a large part of the offering could
be privately placed, and then the G10 developers could be given a piece of it. That would
leave a small percentage available to the public offering. The offer would be attractively
priced and massively over-subscribed. Memories of Beijing Enterprises would come flooding
back. Most of the public would get no shares at all, and the shares would begin trading at
a big premium, giving the developers an instant paper profit.</p>

<p>The government would then claim that the market had determined the price,
and that therefor there can be no suspicion of cronyism or favouritism, conviently
ignoring that most of the public were unable to get stock. If we are right, it remains to
be seen whether PCG would pay the same price for its shares.</p>

<h3>We're a Prophet of Profit</h3>

<p>The Government has been steadily increasing its estimate of what PCG
stands to make from the project. Here's a brief history:</p>

<p><em>16-Mar-99</em></p>

<p>A Government spokesman says &quot;<em>our assessment is that the return
[to PCG] would be <u>less</u> than that achievable in normal property developments</em>&quot;
(our underline).</p>

<p><em>22-Mar-99</em></p>

<p>Webb-site.com, in our article <a href="cybervillas.asp">Cyber Villas by
the Sea</a>, estimates that PCG stands to make a profit of HK$9.3bn on the project, based
on then-current prices and the Government's then-estimated valuation of the site at
$5.5bn. PCG's $7bn investment might be partly funded by debt.</p>

<p><em>24-Apr-99</em></p>

<p>An un-named government official was quoted by SCMP on 24-Apr-99 as saying
&quot;<em>PCG won't be able to profit much more than from a normal property development</em>&quot;.
&quot;<u>Much</u>&quot; more? Why should they profit <u>any</u> more than normal? That's a
bit like saying we won't give this racehorse &quot;much&quot; of a head-start.</p>

<p><em>29-Apr-99</em></p>

<p>The Government releases an announcement which sticks to its current
estimate of land value at $5.5bn, giving it a 44% equity stake (PCG's commitment is $7bn),
but then produces a table of profit share for the Government assuming a land value of
$8bn, giving it a 53.5% stake. The final land value (and equity stake) will not be
produced until the Pokfulam Outline Zoning Plan has been approved by the Town Planning
Board in 12-15 months' time, and this value will be crucial.</p>

<h3>No precedent</h3>

<p>The Government has dug deep in an effort to portray the Cyberport award as
normal. Secretary for Information Technology and Broadcasting Kwong Ki-Chi said on
17-Mar-99 &quot;<em>we have given land to MTR and Kowloon-Canton Railway to expand and
create infrastructure, so this is not a unique phenomenon, though not so common</em>&quot;.</p>

<p>Mr. Kwong failed to point out that both the MTR and KCR are wholly-owned
by the government, and they both conduct their property developments in joint venture with
developers by a tender process. That is what the government should have done on the
Cyberport.</p>

<p>Of course, in future, the MTR will be a public listed company and the
amount of land they are allocated for property development will become a major issue, but
that's another story!</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17936">HONG KONG CYBERPORT MANAGEMENT COMPANY LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2925">PCCW LIMITED</a></li>
				
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