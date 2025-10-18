
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

<script type="text/javascript">document.title="Mucking out the Jockey Club";</script>

	<div class="summary">We look at the structural incentive for corruption in membership admission to  HKJC, and its small-circle voting system, highlighted by yesterday's arrest of 3 of the 200 Voting Members. If private clubs wish to avoid the reputational risk of corruption, then they should adopt tender-based admission systems to remove the incentive and capture full value for their members.</div>

<h2 class="center">Mucking out the Jockey Club<br>
<span class="headlinedate">18 November 2010</span></h2>
<p>It's basic economics - if something is on offer for less than its fair value, 
then there will always be excess demand and people who attempt to capture the 
difference between the offer price and what buyers are willing to pay. Where 
there's muck, there's brass. So it comes as no surprise that once again, not 
one, but three of the Voting Members of the Jockey Club are
<a href="../codocs/ICAC101117.pdf">under arrest</a> on suspicion of soliciting 
or receiving bribes for nominating members to
<a href="../dbpub/articles.asp?p=1415">The Hong Kong Jockey Club</a> (<strong>HKJC</strong>).</p>
<p>HKJC charges a fee for
<a href="http://member.hkjc.com/en/others/membership.asp" target="_blank">Racing 
Membership</a> of HK$68k and
<a href="http://member.hkjc.com/en/others/membership_full.asp" target="_blank">
Full Membership</a> of $250k. This is far less than they are worth to some 
aspiring members, who are willing to pay a substantial premium to attain 
membership.</p>
<p>When cash is changing hands, it is perhaps not surprising that people 
sometimes get caught offering or receiving it. Far more subtle, however, is the 
non-cash form of advantage - the favour-trading and influence-peddling that 
inevitably goes on when there is value to be captured for admission to clubs. 
That's the underwater part of the iceberg that is never seen.</p>
<h3>Removing the corruption incentive</h3>
<p>If clubs are serious about avoiding the reputational damage caused by 
corruption, then they should change the way they admit members to remove the 
incentive for corruption. Each club has the capacity to handle a finite number 
of members. This number depends on how large the facilities are, and how often 
the members actually use them. The spare capacity is determined by the death or 
departure of members, an expansion of facilities, or a change in their 
utilisation. So a club can determine, perhaps on a quarterly basis, the number 
of new members it can admit.</p>
<p>There are two ways that clubs could remove the corruption incentive. The 
first method is to have fixed fees but a random ballot, without nomination, in 
which all applicants have an equal chance of winning. If the fixed fees are set 
above market value, then there would be fewer applicants than the quota of 
memberships, and every applicant would succeed. If the fixed fees are below 
market value, then some applicants would be unsuccessful, and would have to 
enter again. If there were any right to nominate people for the lucky draw, or 
to filter the applications on some subjective criteria, then that right would 
have value, which would reintroduce the corruption incentive. The lottery method 
is unlikely to appeal to most clubs, even one which runs HK's gambling monopoly, 
because it more obviously creates winners who pay less than fair value.</p>
<p>The second method is market-driven and allows the club to capture the 
full and fair value of its new memberships, rather than leaving value up for 
grabs. That means establishing what the fair value is, by way of a reverse 
tender. The club should invite sealed bids from individuals who wish to join. 
Each bidder would state the price they are willing to pay for membership, and 
enclose a deposit. The club would then accept bids in descending order of price 
until the quota of memberships is exhausted. In order to avoid &quot;winner's curse&quot;, 
clubs can use a
<a href="http://en.wikipedia.org/wiki/Uniform_price_auction" target="_blank">
uniform price auction</a> in which all the successful bids pay the same price as 
the lowest successful bid. There should be no subjective qualifications for 
admission. No nomination requirements, no requirement to be &quot;the right sort of 
fellow&quot;. If there are any requirements at all, then they should be objective, 
such as not having a criminal record, if that is thought undesirable.</p>
<p>Some club members will recoil in horror at such an idea. They say that the 
&quot;wrong sort&quot; of person could then join a club. They say that their club, rather 
than the courts, should act as a filter on probity and quality of members of 
society. This notion is rather disproven by the fact that existing members of 
clubs are convicted of criminal offences from time to time, whether related to 
the club affairs or not. Indeed, having a membership admission system which 
invites corruption almost guarantees that from time to time, members will be 
caught and convicted of corruption. Perhaps what the opponents of reform are 
really saying is that they like the existing system because it gives them the 
ability to peddle their influence over membership for favours, and gives 
membership an air of exclusivity. Some may like the system for more personal 
reasons - they can nominate their adult children for membership (or if that is 
not allowed, then they can nominate the children of their fellow members in 
reciprocal arrangements).</p>
<p>There will always be some members who want to join a club not to use its 
facilities or for camaraderie but just to be able to say that they are members. 
It gives their friends and business colleagues the impression that they have 
been endorsed and vetted by society as fit and proper. Ironically these are the 
kind of members who may be most willing to offer an advantage or bribe to gain 
entry. But if entry was based purely on price, then that incentive would 
disappear, because membership would not prove that you had passed any vetting 
test, but simply that you had paid a fair price for membership. So in fact, the 
way to disincentivise status-seekers is to remove the vetting filter and let the 
market set prices.</p>
<p>Apart from anything else, selling memberships for less than market value is a 
drain on a club's finances. Even though it is not run for profit, the relevant 
club will have to make up the income from monthly subscriptions and services to 
cover its costs. So selling memberships below market value is a cross-subsidy 
from existing members to new members. If a member joins a club purely for status 
and will not use the facilities, then other members should welcome that, because 
it allows the club to admit another member who will, and the club gets two fees, 
and two monthly subscriptions, for the price of one.</p>
<h3>HKJC's structure makes it worse</h3>
<p>While this lack of market pricing, and hence the corruption incentive, is 
common to many private clubs in Hong Kong, HKJC's own convoluted governance 
structure exacerbates it. Like most members' clubs, HKJC is a company limited by 
guarantee, and governed in accordance with its 
<a href="../codocs/HKJC_M&A101119.pdf" target="_blank">Memorandum and Articles of 
Association</a> (<strong>M&amp;A</strong>). HKJC's M&amp;A allows for multiple categories of 
members. Its directors are known as
<a href="http://corporate.hkjc.com/corporate/organisation/english/stewards.aspx" target="_blank">
Stewards</a>. There cannot be more than 12 Stewards, each elected for a 3-year 
term. They must all be Voting Members, and they are elected only by Voting 
Members. There cannot be more than 200 Voting Members, and the Voting Members 
are elected by the Stewards.</p>
<p>This circular system is basically a club within a club. Only the 200 
Voting Members can vote at general meetings, so all the other 13,000-odd &quot;Full 
Members&quot; are in fact not very full members - they have no voting rights and no 
say in who runs the Club or how it is run. You might say they are Half-full 
Members, or Half-empty Members, depending on your perspective. Racing Members, 
who have less access to facilities, are even further down the totem pole.</p>
<p>[UPDATED 19-Nov-2010 to use latest M&amp;A] Not just any member can propose or second candidates for 
Racing Membership. Only 
those who are resident Honorary Stewards, Voting Members, or Honorary Voting Members can do so. The first category, Honorary Stewards, are former Stewards. Then 
there are the 200 Voting Members. The third category of nominators, Honorary Voting Members, 
has two sub-categories: Honorary Voting Members (O) and Honorary Voting Members 
(N). This is a legacy of change: anyone who 
became a Voting Member before 1-May-1975 can retain that status for life, but 
after the age of 70 they can voluntarily retire and become an Honorary Voting 
Member (O) and Life Member, thereby exempt from monthly subscriptions.</p>
<p>As there are never more than 200 Voting Members, 35 years later, there cannot 
be many left who were Voting Members before that date, and the survivors must be 
rather old. Further, if they chose to become Honorary Voting Member (O) after 
12-Sep-1985 and have left Hong Kong, then they have lost their right to nominate 
new members. By contrast, anyone who became a Voting Member on or after 
1-May-1975 must retire at 70 and become an Honorary Voting Member (N).</p>
<p>Despite the name &quot;Honorary Voting Members&quot;, neither the (O) or (N) 
sub-types can vote in general meetings of HKJC. Perhaps, in the 1975 change, 
HKJC was intending to reduce the risk of senile demented retirees, and those who 
have lost their income, from taking bribes for nominations or votes or simply 
making bad decisions. Or perhaps they just wanted to make room for new Voting 
Members as the old ones were living too long. If anyone has the 1975 AGM 
minutes, we'd love to see them. Initially, Honorary Voting Members (N) were not 
allowed to nominate members. However, the right to nominate Racing Members was 
restored to Honorary Voting Members (N) by a change of the M&amp;A on 26-Aug-2004. 
Since then, the Stewards may also elect Racing Members directly (without 
nomination) &quot;through such other means as may from time to time be determined by 
the Stewards&quot;.</p>
<p>To become a Racing Member, you need two nominations. A sample of the 
application form is <a href="../codocs/HKJCsampleRMapp.pdf">here</a>. The 
procedure for promotion to Full Member is decided by the Stewards and not 
contained in the M&amp;A. Currently, to be 
promoted to Full member, you need one nomination. A sample of the application 
form is <a href="../codocs/HKJCsampleFMapp.pdf">here</a>. It appears from that 
form that an Honorary Voting Member (O) but not an Honorary Voting Member (N) 
can sponsor a candidate. It is possible to go 
straight in as a Full Member by submitting both forms together.</p>
<p>Broadening the right to nominate members to all Full Members of the Club, 
giving them all voting rights, and allowing any member to be elected as a 
Steward, would eliminate the Voting Members' &quot;club within a club&quot; and make it more democratic, 
but would not eliminate the potential for corruption in membership 
entry. Instead, it would just 
shift the incentive. With over 13,000 potential nominators, the value of a 
nomination would be much lower, because the number of nominations would be 
higher. Instead, in the absence of a lottery or tender, there would still be a subjective selection 
process to decide which of the many applications are taken forward (only a few 
hundred per year), and that would still invite corruption.</p>
<h3>Freedom of association</h3>
<p>Of course, the HKJC and other clubs are private associations of members. Freedom of 
association is guaranteed by
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_3.html" target="_blank">Article 27</a> 
of the Basic Law. So people are entitled to associate with each other by forming 
and operating clubs, and set whatever criteria they like, subjective or 
objective, to admit new members. However, all private clubs in Hong Kong should 
be asking themselves the same question - do we care about our reputation? If 
not, or not much, then we should carry on with our existing system, and accept the occasional 
reputational hit from a member who takes a bribe for nominating or promoting 
candidates. But if we want to remove that incentive, then we should move to a 
market-based membership system. Those who see the most value in membership will be those 
who bid highest for it.</p>
<h3>Not just a private club</h3>
<p>The HKJC is not <em>just</em> a private club though. It is entrusted with 
HK's gambling monopoly, which makes it a 
<a href="http://en.wikipedia.org/wiki/Tax_farming" target="_blank">tax-farming</a> 
vehicle of the HK Government. Although most of the punters' losses ($21.1bn last 
year) are paid to Government as 
betting and lottery duty, HKJC is also is allowed to keep some of the revenue on 
the understanding that they will spend some of it on things that the Government would 
otherwise pay for directly, such as health, education and welfare projects. So that 
makes HKJC an off-balance sheet spending vehicle of the Government too, putting 
some of the welfare budget beyond the supervision of the Legislative Council. In the
<a href="http://special.hkjc.com/promo/ch/2010_annual_report/22_Consolidated%20Financial%20Statements%20&%20Statistics.pdf" target="_blank">
financial statements</a> for the year to 30-Jun-2010, you can see that about 
$14.3bn goes to betting and lottery duties and the 
<a href="http://www.swd.gov.hk/en/index/site_ngo/page_lotteriesf/" target="_blank">
Lotteries Fund</a> (a welfare fund 
run by Government), and about $1.5bn to the Jockey Club Charities Trust, the 
trustees of which are the Stewards of HKJC.</p>
<p>HKJC also keeps a fair chunk for itself - it has accumulated $21.4bn of 
long-term investments and $7.1bn of cash and short-term bond investments. The 
Trust also spends slowly, and has $17.7bn of reserves, shown in its own
<a href="http://special.hkjc.com/promo/ch/2010_annual_report/23_Repost%20of%20the%20Trustees.pdf" target="_blank">
financial statements</a>.</p>
<p>All this allows HKJC to dress itself up as a charity organisation rather than a 
gambling monopoly, although the Government could just as easily raise the 
betting duty by $1.5bn instead, and spend the money centrally, leaving the HKJC 
without the charity fig leaf to cover its naked monopoly status. It would be far 
better if the Government would liberalise the gambling sector by allowing 
betting exchanges and licensing bookmakers, as other modern economies do, and 
taxing their profits. Give consumers more choice, and competition would squeeze 
out a lot of triad-run illegal bookmakers, reducing crime. HKJC could still run 
its racetracks and a reasonable statutory levy on horse-race betting profits 
could be established, so that the betting exchanges and bookmakers pay their 
fair share of the costs of running the races.</p>
<p>The details of the monopoly problem are beyond the scope of this article, but 
the essential point here is that HKJC, above all other private clubs, has an 
additional public interest reason for removing the corruption incentive from its 
membership system, so long as it retains its monopoly, tax-farming and welfare 
role.</p>
<h3>Third time?</h3>
<p>If the Voting Members arrested yesterday are charged and convicted, then they 
won't be the first, or even the second. It is becoming increasingly incredible 
for HKJC to brush these problems off and
<a href="http://corporate.hkjc.com/corporate/corporate-news/english/2010-11/news_2010111701837.aspx" target="_blank">
claim that its integrity is intact</a>, without addressing the root of the 
problem through changes in its membership system.</p>
<p>In 1998 Mr Abdulla Tyeb Chiba, then 
82 and a HKJC member since 1938, was convicted of receiving part of a $400k sum 
paid in 1996 by Mr Liu Sun Ming to a middle man, Ricky Lee Wing Chiu. Mr Liu, 
who was not charged, thought the money he paid Mr Lee was the membership fee, 
the court was told. According to the prosecution, Mr Lee then contacted Mr Lin 
Sun Fook, a caretaker of the building in which Mr Chiba lived, and the 
caretaker, who was not charged, paid $150k to Mr Chiba and $10k to another 
Voting Member, Mr Bhawandas Murjani, who was not charged either. Mr Chiba 
received an 8-month jail term suspended for 18 months and a fine of $20k, and Mr 
Lee was given a 6-month sentence suspended for 18 months. In comments to the <em>
SCMP </em>at the time, ICAC chief investigator
<a href="http://www.directory.gov.hk/details.jsp?lang=eng&dn=cn%3D1228008293%2Cou%3DICAC%2Cou%3DPeople%2Co%3DGOVERNMENT%2Cc%3DHK" target="_blank">John Shanahan</a> 
put the black-market rate for membership nominations at between $700k and $1m, 
and said that he 
believed 20-30 voting members were &quot;doing this on a regular basis&quot;.</p>
<p>More recently, <a href="../dbpub/natarts.asp?p=18">John Terence Hung</a>, 
SBS, JP, was convicted on 25-Jun-2009 of accepting a total of $450k in bribes 
from a middleman, Joseph Loong Shun Ming (or Joseph Loong Sai Cheong, depending 
on your newspaper), in return for proposing that Racing Member 
Joanne Wong Pui be promoted to Full Member. Ms Wong had given $800k to Mr Loong, the court was told. Mr Hung was jailed for 2 years and ordered to pay 
$350k to the Jockey Club. Neither Mr Loong nor Ms Wong were charged.</p>
<p>Mr Hung was <a href="../codocs/ICAC081110.pdf">charged</a> on the same day as 
3 other persons:</p>
<ul>
	<li>Mr <a href="../dbpub/natarts.asp?p=46932">Wong Tak Kin</a>, who was 
	convicted of paying $250k to two middlemen in the belief that it would go to 
	a Voting Member. One middleman, Peter Chau Kwai Leung, who was not charged, was 
	given $50k, and the other, Mr Loong again, was given $200k, and arranged a 
	meeting with Mr Hung. Mr Wong's application form was found in Mr Hung's 
	briefcase when he was arrested after a meeting with Mr Loong at the Conrad 
	Hotel, although Mr Hung was not charged in relation to that case. Mr Wong 
	was jailed for 2 years.</li>
	<li>
	<p>accountant Mr <a href="../dbpub/natarts.asp?p=46929">Jonathan Ng Tai Sing</a> 
	was acquitted of offering $360k to a Voting Member after the judge ruled 
	that the ICAC had not followed proper procedures in interviewing him in the 
	car on the way to the ICAC without reading his rights.</p>
	</li>
	<li>Mr <a href="../dbpub/natarts.asp?p=46933">Lau Pui Fai</a>, a Fuji Xerox 
	sales manager, pleaded guilty to obtaining services by deception, 
	specifically, submitting an application form for Racing Membership 
	containing false representation that two Voting Members, &quot;D P Inglis&quot; (that 
	would be <a href="../dbpub/positions.asp?p=43234">Desmond Prosser Inglis</a>) 
	and Mr Cheng Chung Shu, had known him for 3 years and 2 years respectively. 
	There were no charges against the Voting Members. Mr Lau was fined HK$60k.</li>
</ul>
<p>It's about time that HKJC admitted that it has a structural problem embedded 
in its governance structure. If they don't want repeated scandals of this 
nature, eating away at the club's reputation, then they should reform the 
admission mechanism and the voting structure. Meanwhile, other clubs should take 
note and consider how much their own reputation matters, and whether the right 
to pick and choose their membership is worth the risk.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1415">HONG KONG JOCKEY CLUB (THE)</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=18">Hung, John Terence</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=43234">Inglis, Desmond Prosser</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46933">Lau, Pui Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46929">Ng, Jonathan Tai Sing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=46932">Wong, Tak Kin</a></li>
				
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