
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

<script type="text/javascript">document.title="StyNet, Part 1: Digital Mess";</script>

	<div class="summary">In the first of a series of articles, we'll take you through a labyrinth of transactions involving a motley collection of GEM listings, including Inworld, International Capital Network, Rainbow and Riverhill, two bombed-out main board stocks - Digital World and renren, and a company at the centre of the network, Styland. We kick off with a detailed study of Digital World and its dealings.</div>

<h2 class="center">StyNet, Part 1: Digital Mess<br>
<span class="headlinedate">21 July 2002</span></h2>
<p>We kick off a series of related articles with coverage of
Digital World Holdings Ltd (<b>Digital World, 0109</b>), formerly known as Q-Tech
Holdings Ltd. </p>

<p>As this story develops over the next few days, you will see how
a network of small companies, many of them floated on GEM, have
helped generate revenue for each other's IPO track records - including the IPO
of a GEM financial adviser itself. You will also see how a
series of massive rights issues by main-board listed disaster zones have funded
similarly massive outflows to &quot;independent third parties&quot; for highly-priced acquisitions
leading to huge write-offs. </p>

<p> Because this story is so complex, we are breaking it down
into sections, so pay attention and stay tuned. The first and heaviest is here,
and if you get through this, the others will all make sense. You almost
certainly do not own shares in these companies (and nor do we), but the studies
will show you how some of the worst corporate governance can affect your
investments. </p>

<h3>History</h3>

<p>Digital World started life in 1993 as a distributor of Korean
and Japanese TVs, air conditioners and video compact disc players to Hong Kong and
mainland China, usually on a non-exclusive basis, eking out a small net profit
of around 5% of turnover. The company was listed under the name of Q-Tech
Holdings Ltd on 12-Jan-98 in an IPO
sponsored by Lippo Securities Ltd involving the issue of 67m shares (25% of the
enlarged capital) at HK$0.80 per share. </p>

<p>Post-IPO, the company was owned&nbsp; 47.25% and 20.75% respectively
by its co-founders Mr Yu Kwok Leung (<b>Mr Yu</b>), the Chairman, and Mr Thomas
Lui Jung Ning (<b>Mr Lui</b>), an executive director responsible for sales and
marketing. </p>

<p>A further 7.5% was held by <i> &quot;two existing
shareholders&quot;</i>. Although they were not named, it is possible to figure out
from the pre-IPO reorganisation at the back of the prospectus that they were Ms
Siana Tang Hok Lam and Mr Kaiman Wong Chun Ching (<b>Mr Wong</b>) in equal
proportions. We know nothing about them except that Mr Wong was an Executive
Director of HK-listed B-Tech (Holdings) Ltd from 30-Jan-01 to 12-Apr-01. </p>

<p>The IPO flopped, being only 0.42x subscribed in the public
tranche, and despite this there were a miraculous 265 applications for the
minimum 2,000 shares each, ensuring that the company met the minimum required
number of shareholders. Of the 25% offered, 9 employees took up the full 2.5% in
the employee tranche, the public took 9.56% and 12.94% of the company was taken
up by the underwriters. </p>

<p>Apart from Mr Yu and Mr Lui, the other two executive directors
were Mr Yu Zhi Wen (<b>Mr Z W Yu</b>) who is Mr Yu's nephew, and Mr Lam To Ming (<b>Mr Lam</b>), the finance
director.&nbsp; </p>

<h3>Early trouble</h3>

<p>The prospectus dated 30-Dec-97 was just a day before the 6-month
deadline based on latest audited accounts of 30-Jun-97, at which date the group had lent a total of $67.7m to related companies of which
the Executive Directors were also shareholders and/or directors. The Company had
only $1.9m in cash, while bank borrowings totalling $113.0m, or 212% of net
tangible assets before the IPO. </p>

<p>Despite this, the group managed to pay a pre-IPO dividend of
$13m on 1-Dec-97, and all the amounts due from related companies were repaid a
week later. </p>

<p>It didn't take long for the company to get into trouble. Nine
months in fact. On Sat-26-Sep-98 it announced that out of the IPO proceeds of $42m, it had only spent
$5m of the intended $17m on new product promotion, had not spent any of the
intended $17m on setting up showrooms in the PRC, and had instead diverted the
remaining $37m to unnamed <i> &quot;financial institutions&quot;</i> as security for trade
loans. </p>

<p class="regbox">Investment tip:
when ever a company talks about debts to &quot;financial institutions&quot; you
can be fairly sure that they don't just mean banks, they mean brokers and
licensed money lenders too, which can be run by just about anyone. It's a sign
that a company may have trouble getting enough credit from banks.</p>

<p>At the same time, the company revealed that 65% of its shares
had been pledged by Mr Yu and Mr Lui to a number of stockbrokers for margin
financing, and several of the unnamed stockbrokers had demanded payment for margin
calls. </p>

<p>On top of that, a supplier called <a href="http://www.thakral.com/" target="_blank"> Thakral Corporation (HK) Ltd</a> (<b>Thakral</b>)
had filed a claim against South Boss Resources Ltd (<b>South Boss</b>), the group's principal
trading subsidiary, for unpaid debts of $17.1m. </p>

<p>On Mon-28-Sep-98, the stock plunged 36% to HK$0.033 per share,
already down 96% from the IPO in just 9 months. The brokers had had begun
selling off the pledged shares in the market, selling 10.9% of the company that
day. The following day, a further 54.4% was sold, reducing the two co-founders
to just 2.2% of the company. Of this, 27.99% was acquired by Mr Lam at between
$0.045-0.050 per share, 93% below the IPO price. </p>

<p>Details now emerged that the co-founders had pledged their
shares &quot;on various occasions&quot; between Feb-98 and Sep-98. By ceasing to
be controlling shareholders within 12 months of listing, Mr Yu and Mr Lui had
broken <a href="http://www.hkex.com.hk/rulereg/listrules/CH10.doc" target="_blank">Listing
Rule 10.07</a>. </p>

<p class="regbox">Regulatory note: as a result of this case and others like it,
note (3) was added to Listing Rule 10.07 to require a controlling shareholder who
pledges shares within 12 months of listing to announce it. However, there is
still no such requirement if the shares are pledged any time after the first
anniversary of listing. In our view, this should be a continuing obligation.</p>

<h3>A new shareholder</h3>

<p>On 13-Oct-98 the Company belatedly announced that it had been
informed on 9-Oct-98 by Mr So Chee Keung (<b>Mr So</b>) that&nbsp; on 29-Sep-98,
in the big sell-off, he had acquired 16.79% of the Company. Mr So was the
finance director of <a href="../dbpub/articles.asp?p=4978" target="_blank"> Styland Holdings Ltd</a> (<b>Styland,
0211</b>) until he resigned on 30-Oct-93, having joined Styland in 1986. On 17-Nov-98 Mr So was appointed as an executive director of Digital
World. </p>

<p>On 1-Dec-98, Digital World reached a &quot;heads of
agreement&quot; on a proposed settlement with Thakral, which was formalised by
an agreement dated 15-Dec-98, in which the company would procure the transfer of
3 bungalows in Zhongshan City, PRC and allot 28.5m new shares to Thakral,
representing 9.6% of the enlarged issued share capital of Digital World.
Bungalows, did we say? Yes, the company had no bungalows. The announcement stated: </p>

<blockquote>

<p>&quot;The Company will purchase the [bungalows] from the
respective property owner at market prices and then procure the transfer of the
[bungalows] to [Thakral]&quot; </p>

</blockquote>

<p>Wouldn't it have been simpler just to give Thakral the cash and
let them buy the bungalows if they wanted? The deal was formalised with an
agreement on 15-Dec-98. It is probably a pure coincidence that Styland had a
development project in Zhongshan, PRC which included bungalows, which according
to its accounts had already all been sold by 31-Mar-98. </p>

<p>The price which Digital World paid for the bungalows and
identity of the vendor were not disclosed. </p>

<h4>Founders step down </h4>

<p>On 14-Dec-98, the day before the deal with Thakral was
formalised, the co-founders Mr Yu and Mr Lui stepped down but remained as non-executive
directors. Mr Z W Yu also resigned from the board. That left just two
executive directors: Mr Lam became Chairman and Mr So became Vice Chairman. </p>

<p>On 28-Dec-98, it was announced that claims had been made by
finance companies Winly Advance Co Ltd and Tin Ching Finance Co Ltd, against
South Boss and Mr Yu for $2.3m and $7m respectively. To cap off a disastrous
year, on 31-Dec-98 Digital World announced that Daewoo had decided not to renew
its distribution agreements with the group, and the agreements expired that day. </p>

<h3>Profit warning</h3>

<p>On 14-Jan-99, the two co-founders resigned their non-executive
directorships. Two days later, the Company warned that it may not have met the
profit forecast in the prospectus for the year ended 30-Jun-98. It also spoke of
<i>&quot;a slowdown in the settlement of debts owed by the debtors, which are
located in the [PRC]&quot;</i>. Laying the responsibility squarely on previous
management, the new management said that if provisions for bad debts were
necessary during the audit in progress, then the group may not be able to
meet the profit forecast. </p>

<h4>Spot the vanishing auditor </h4>

<p>It subsequently emerged that Ernst &amp; Young, the auditors at
the time of the IPO when the profit forecast was made, had already resigned on
7-Jan-99 and been replaced on 8-Jan-99 by local firm Johnny Chan &amp; Co,
something the board did not get around to announcing until 27-Jan-99. </p>

<p class="regbox">Regulatory note: there is no requirement in the Listing Rules
to announce a change of auditors - only to tell the Exchange privately. This should be fixed, and the appointment of new auditors should be
subject to shareholders' approval.</p>

<h3>1st rights issue</h3>

<p>Meanwhile, on 21-Jan-99 Digital World announced a 10:1
consolidation of the shares, together with a huge 9:2 rights issue at $0.28 per new
share, enlarging the capital by 450%. The financial adviser was
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Details.jsp?charset=ISO8859_1&ceref=ADG809&applNo=0001">Emperor Capital
Ltd</a>, while <a href="http://www.everlong.com/" target="_blank">Ever-Long Securities Co
Ltd</a> (<b>Ever-Long</b>), a wholly owned
subsidiary of Styland, was one of the underwriters. </p>

<p>Mr Lam and Mr So, who held 25.29% and 15.51% respectively,
undertook to take up all their rights, and a Mr Chan Yuen Tung (<b>Mr Y T Chan</b>), described as
<i>
&quot;a business associate of Mr Lam&quot;</i> undertook to apply for 12.825m
shares. This person was presumably Mr Jimmy Chan Yuen Tung, who was a director of
HK-listed Star
East Holdings Ltd (then known as DC Finance Holdings Ltd) until 1-Feb-99. He was
briefly mentioned in our <a href="singhk.asp" target="_blank">article</a> on
Singapore Hong Kong Properties Ltd on 7-Jul-99. Thakral was entitled to 12.825m
shares in the rights issue, and Mr Y T Chan undertook up those rights instead. </p>

<h4>INEDs quit </h4>

<p>The announcement stated that an independent board committee
would be formed comprising Peter Tsao Kwan Yung (<b>Mr Tsao</b>) and Alfred
Donald Yap (<b>Mr Yap</b>), the two original independent non-executive directors
from the IPO. However, they weren't sticking around - Mr Tsao resigned on
26-Jan-99 (the day before the change of auditors was disclosed) and Mr Yap
resigned on 10-Feb-99. When the going gets tough, the tough get going. Each
cited <i>&quot;an increasing workload from other business commitments&quot;</i>.
Nice to know where their priorities lay. At the last count, Mr Tsao, a former Secretary for Home Affairs
in the HK Government, was an independent non-executive director of at least 10
other HK-listed companies. </p>

<p>Replacing them were Mr Chui Wai Kit, appointed on 11-Feb-99, and
Mr Colman Chan Chung Kit on 12-Feb-99, which was also the &quot;latest
practicable date&quot; for information in the rights issue circular dated
15-Feb-99, so they didn't have long on board to reach a view. They were advised by Dao Heng Securities Ltd, while Emperor Capital
Ltd advised the company. All we know about Chui Wai Kit, an accountant, is that he was a
director of HK-listed <a href="../dbpub/articles.asp?p=5022" target="_blank">LifeTec Group Ltd</a> until 28-Jan-99 and died in 1999 at the age of
33. We
know nothing about Colman Chan Chung Kit except that he was a computer software
consultant. </p>

<p>The rights issue raised $37.4m gross and <b> $35m</b> net of expenses.
In the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990401/LTN19990401015.HTM" target="_blank">announcement</a>
of results of the rights issue, it turned out that Thakral had taken up its
rights after all. Apart from Mr Lam, Mr So and Thakral, who together took up
50.4% of the issue, only 1.4% was subscribed and the rest was left with the
underwriters. </p>

<p>Two weeks later on 14-Apr-99 it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990415/LTN19990415014.HTM" target="_blank">announced</a>
that one of the underwriters (unnamed) had procured Mr Y T Chan to subscribe for
17,358,000 of the underwritten shares, representing 27% of the rights issue and
10.64% of the enlarged company. The company said Mr Y T Chan did not have any
representation on the board. Soon afterwards, Mr Y T Chan's holding disappeared
below the 10% disclosure threshold. </p>

<p>Also on 14-Apr-99, Mr Chan Tak Hung (<b>Mr T H Chan</b>)
was appointed as an executive director. Digital World's latest annual report
states that <i>&quot;he has over 10 years' experience in the banking and
commercial sectors.&quot; </i>Apart from that, we know nothing about him. Since
then, Mr Chan has gradually acquired the largest holding in Digital World and
now holds around 26%.&nbsp; </p>

<h3>Jun-98 and Dec-98 results</h3>

<p>During the rights issue process, on 12-Feb-99 Digital World
finally released its audited results for the year ended 30-Jun-98. They showed
that the company had made $40.1m net profit, which by pure coincidence just
beats the $40m profit
forecast for the year made at the time of the IPO. </p>

<p>The new auditors gave a <i>&quot;true
and fair&quot;</i> opinion but noted that there were <i>&quot;fundamental
uncertainties&quot;</i> in relation to the going concern assumption. The results
also stated that the accounts receivable at 30-Jun-98 had been <i>&quot;substantially
subsequently settled&quot;</i> after the balance sheet date, but there had been
a <i> &quot;significant slowdown&quot;</i> in collecting payment for subsequent sales
and cited the <i>&quot;uncooperative attitude of Mr Yu and Mr Z.W. Yu&quot;,</i>
warning that provisions for bad and doubtful debts may be needed in the current
year. </p>

<p>They weren't kidding. On 8-Mar-99 the interim results for the 6
months to 31-Dec-98 showed a loss of $51.9m, including provision for bad and
doubtful debts of $58.9m. This compared with sales of <b>$224.2m</b>, down 46%. The
group had ceased trading through the crippled South Boss, which by now was
embroiled in litigation, and set up a new subsidiary to conduct trading from
Dec-98 onwards. </p>

<p>Over two months after the interim results, it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990521/LTN19990521031.HTM" target="_blank">announced</a>
on 20-May-99 that the top 5 customers of the group owed a total of <b>$214.9m</b>
at 31-Dec-98, equivalent to 305% of net assets at that date, and none of it had
been settled up to the date of the announcement. Since the annual results had
spoken of receivables at 30-Jun-98 being <i>&quot;substantially subsequently
settled&quot;</i>, this implies that nearly all the sales in the following six
months were not paid for. </p>

<p>Speaking to the <i>SCMP </i>on 24-May-99, Mr Lam denied reports
that a member of management had fled after embezzling from the firm. <i>&quot;It's
a slander. Someone may want to push the share down [to prepare] a hostile
takeover&quot;</i>, he was quoted as saying. The shares fell 30.9% to $0.197 in
the two days after disclosure of the receivables. </p>

<p>With the interim results, the Directors announced that <i>&quot;in
order to enhance profitability of the group&quot;</i> they would <i>&quot;explore
other suitable investment opportunities in a prudent manner&quot;</i> and then
listed a wide range of sectors including <i>&quot;investments in properties,
infrastructure projects, securities and stockbroking, money lending and
financing businesses&quot;.</i> </p>

<p class="regbox">Investment tip: whenever a listed company which is not a bank
starts talking about getting into money-lending, you should be worried. There is
almost no accountability in the Listing Rules for loans to &quot;independent third
parties&quot;, and however big those loans are, they do not require shareholders'
approval and have a nasty habit of becoming unrecoverable. We have urged the
Stock Exchange to amend their rules to treat lending by listed companies in the
same way as acquisitions, subject to shareholder approval based on size.</p>

<p>On 26-Apr-99, Mr So resigned and Mr Wilson Yeung Shu Lam (<b>Mr
Yeung</b>, formerly known as Yeung Lam) was appointed as an executive director. He
is a <a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member.asp?fileno=S003943" target="_blank">solicitor</a>
and runs his own firm, <a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member_firm.asp?fileno=Y00051" target="_blank">Wilson
Yeung &amp; Co.</a>. </p>

<h3>Options</h3>

<p>At the AGM on 31-Mar-99, the company's share option scheme was
amended so as to remove the 1-year waiting period before options granted under
the scheme could be exercised. No options had been granted up to that point. In
a 15-Mar-99 circular explaining the change, the board wrote: </p>

<blockquote>

<p>&quot;The Directors believe that the Proposed Alteration... will
assist the Group in the recruitment and retention of high calibre executives and
employees&quot;.&nbsp; </p>

</blockquote>

<p>Who did they have in mind? Themselves, of course! On 22-Apr-99 options were granted to subscribe 16,307,500 shares
at $0.12 each, exactly equal to 10% of the issued share capital, the maximum
allowed under the scheme, with 25% of the options (again, the maximum allowed)
going to each of Mr So, Mr Lam and Mr T H Chan, the 3 executive directors.
Options are&nbsp; meant to provide long-term incentive for management, and are
normally held for years, but not in this case! Just four days later, Mr So
exercised all his options, and on 11-May-99 Mr T H Chan and Mr Lam exercised all
theirs. </p>

<h3>1st placing</h3>

<p>On 7-May-99, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990510/LTN19990510025.HTM" target="_blank">announced</a>
a placing of 32m new shares equivalent to 19.14% of the existing issued shares
at $0.15 per share, a whopping 31.2% discount to the 10-day average price,
raising $4.8m gross and <b> $4.5m</b> net. The placing was arranged by
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Details.jsp?charset=ISO8859_1&ceref=ABF139&applNo=0002">Quest
Stockbrokers (HK) Ltd</a>. </p>

<h3>Bonus issue</h3>

<p>On 8-Jun-99 the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990609/LTN19990609013.HTM" target="_blank">announced</a>
a 5:1 bonus issue, citing the spurious reason that it: </p>

<blockquote>

<p>&quot;will provide shareholders... with an opportunity to obtain
further equity participation in the Company on favourable terms&quot; </p>

</blockquote>

<p>That is utter nonsense, because a bonus issue leaves
each shareholder with the same percentage of the company that they started with. </p>

<h3>Board changes</h3>

<p>On 14-Jun-99 Mr Lau Kit Hung was appointed as an independent
non-executive director, replacing Mr Chui Wai Kit who had <i>&quot;passed away
recently&quot;</i>. Mr Lau is a <a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member.asp?fileno=S004915" target="_blank"> solicitor</a> and consultant to law firm Messrs.
<a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member_firm.asp?fileno=L00063" target="_blank">
Stephen Lo &amp; P. Y. Tse</a>. </p>

<p>On 24-Jun-99 Mr Colman Chan Chung Kit resigned as an independent
non-executive director and was replaced by Mr Kong Chung Yau, a <a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member.asp?fileno=S005015" target="_blank">solicitor</a> 
who
was then a partner of Lau, Kong &amp; Partners, was subsequently a consultant
with <a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member_firm.asp?fileno=K00045" target="_blank">Francis
Kong &amp; Co.</a> and is now affiliated with <a href="http://www.hklawsoc.org.hk/pub/memberlawlist/member_firm.asp?fileno=L00017" target="_blank">Raymond
T. M. Lau &amp; Co</a>. </p>

<p>On 28-Jun-99, finance director Mr Lam
resigned and Mr T H Chan became Chairman. </p>

<h3>Disposal of South Boss</h3>

<p>On 6-Jul-99 the Company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990707/LTN19990707038.HTM" target="_blank">announced</a>
it would sell what used to be its principal subsidiary, South Boss, for just
$200,000, to a company called King Power Co., Ltd. We don't know who owned that,
but the owner was described as being <i>&quot;engaged in business consultation
in Hong Kong, Macau and the [PRC]&quot;</i>. They certainly had a lot of
&quot;consulting&quot; to do to collect those debts. In any event, the previous
day, a court had made a winding up order against South Boss and appointed a
provisional liquidator. </p>

<p>On 23-Jul-99, the stock was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990723/LTN19990723020.HTM" target="_blank">suspended</a>
at $0.054 and did not resume trading until 3-Jan-00. </p>

<p>Later, on 11-Aug-99 it was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19990812/LTN19990812019.HTM" target="_blank">announced</a>
that prior to the sale, South Boss had assigned to a subsidiary of Digital World
$117m of receivables due from 3 customers, the recoverability of which was described
as <i>&quot;remote&quot;</i>. So South Boss was sold with $97.9m of
receivables. It was also revealed that South Boss still owed the group a further
$60.8m. </p>

<h3>Jun-99 annual results</h3>

<p>On 26-Nov-99 the Company announced its results for the year to
30-Jun-99, a loss of <b>$188.3m</b> on turnover of $232.4m. This implied that
turnover in the second half of the year to Jun-99 was only $8.2m. The loss
included full provision for the $60.8m owed by South Boss, $152.5m for bad and
doubtful debts, and $8.5m for the liability for a guarantee over a bank loan to
South Boss. The group also recorded a gain of $36.3m on the disposal of South
Boss, because South Boss had negative net assets. After these results, Digital
World's equity had been wiped out
and the group had net liabilities of $11.6m. </p>

<p>There had been a remarkable concentration of sales since the
IPO. The 5 largest customers who accounted for all or most of the bad debts in
the year to Jun-99 constituted 94% of sales, while the top 5 in the year before
the IPO (Jun-97) had been only 15.5%, and the largest customer accounted for 24%
(1997:3%). </p>

<p>The auditors considered the <i>&quot;inherent uncertainties
surrounding the circumstances&quot;</i> under which the Group might survive were
<i>&quot;so extreme&quot;</i> that they disclaimed their opinion on the
accounts. </p>

<h4>Investment in Sincere Wisdom </h4>

<p>Despite the severe financial difficulties, you may be surprised
to learn that during the year to 30-Jun-99, the group found <b>$8.62m</b> cash
to spend on a 49% stake in a BVI company called Sincere Wisdom Investment Ltd (<b>SWI</b>).
Although payment was made up front, completion was conditional on SWI setting up
a wholly-owned and licensed internet content provider in the PRC which would
also engage in other internet related business. At that time, foreign ownership
of internet content providers was illegal and even today under WTO it is still
restricted. So completion was pretty unlikely. The deal was not big enough to
require disclosure under the Listing Rules, and no other information was
disclosed in the accounts, but you'll find out more below, so remember that
name! </p>

<p>At 30-Jun-99, the group had only $2.3m in cash and no bank
borrowings apart from the amount due under the South Boss guarantee. </p>

<h3>Censure of ex-directors</h3>

<p>On 30-Nov-99 the Stock Exchange <a href="http://www.irasia.com/regbod/hk/sehk/press/p991130.htm" target="_blank">announced</a>
a censure of Mr Yu, Mr Lam and Mr So (all of whom had already left the company)
for breaches of the listing rules, including late results announcements and
failure to publish details of a change of use in the IPO proceeds. Well, their
names were in the newspapers. That'll teach them! </p>

<h3>Change of name</h3>

<p>Perhaps seeking a fresh start, on 8-Dec-99 the Company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/19991209/LTN19991209035.HTM" target="_blank">announced</a>
a proposed change of name from Q-Tech Holdings Ltd to Digital World Holdings
Ltd. The internet bubble was about to reach its peak. </p>

<p class="regbox">Investment tip:
any company that seeks to put words like &quot;World&quot;, &quot;Global&quot;,
&quot;Galactic&quot; or &quot;Universal&quot; in their name is probably not a
world-wide business. Be equally suspicious of words like &quot;Tech&quot;,
&quot;Cyber&quot;, &quot;Bio&quot; and &quot;Nano&quot; and anything prefixed
with &quot;e-&quot; or &quot;i-&quot;.</p>

<h3>2nd rights issue</h3>

<p>On 30-Dec-99, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000103/LTN20000103073.HTM" target="_blank">announced</a>
a massive 10:1 rights issue of 12,683m shares at $0.01 each, raising <b>$121m</b>
 net of expenses. The proceeds were earmarked as to $8m to repay the bank debt, $50m <i>&quot;for
expansion and operation of the trading business of the group&quot; </i>and $63m
as <i>&quot;general working capital&quot;.</i> The financial advisers to the
company were Emperor Capital Ltd (again) and
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Details.jsp?charset=ISO8859_1&ceref=AFD077&applNo=0002">Kingston Corporate Finance
Ltd</a>. The financial adviser to the independent board committee was
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Details.jsp?charset=ISO8859_1&ceref=AEE541&applNo=0002">Hantec Capital
Ltd</a>. The
issue was fully subscribed. </p>

<p>The stock began trading again on 3-Jan-00 after a 5-month
suspension. </p>

<h4>More on Sincere Wisdom </h4>

<p>More information now emerged on that investment in 49% of SWI
which was mentioned in the Jun-99 results.
The rights issue announcement said SWI was incorporated in Apr-99, and the vendor was a
company called Global Eagle Investments Ltd (<b>GEI</b>), described as an <i>&quot;independent
third party&quot;</i> which owned the other 51%. No ownership details were
given, but <i>Webb-site.com</i> can reveal that, by 13-Jan-00, GEI was a
wholly-owned subsidiary of - guess who - Styland - which mentioned it in an
announcement that day. </p>

<p>The acquisition of SWI had still not been completed, and the
deadline was 31-Mar-00. In the end, it was scrapped and the money was refunded
in Jun-00 without interest. </p>

<h3>More Options</h3>

<p>One of the advantages of a constantly expanding share capital is
that you can keep on raising the number of outstanding options to go with it. On
5-Jan-00 options were granted over 316,831,682 shares at $0.01 each (as adjusted
for the rights issue) all of which were exercised on 8-Mar-00. So much for
long-term incentives. </p>

<p class="regbox">Regulatory note: there is no way for investors to know how
many options are outstanding at any given time, or the terms thereof. There
should be.</p>

<h3>SFC launches enquiry into share dealings</h3>

<p>On 24-Jan-00, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000125/LTN20000125048.HTM" target="_blank">announced</a>
that the SFC had commenced an enquiry under <a href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/1d289cfa62d55da3c825648000426b4e" target="_blank"> Section 31</a> of the Securities and
Futures Commission Ordinance into dealings in the shares. In the 15 trading days
since the shares were released from suspension on 3-Jan-00, volume had totalled
158% of the issued shares, and the price had risen from a pre-suspension $0.054
to $0.42, valuing the near-bankrupt company at $533m before the rights issue
took effect. </p>

<p>Did the SFC suspect manipulation? No outcome of the
investigation was announced. </p>

<h3>New directors</h3>

<p>On 16-Feb-00, Mr Wong Shu Wing (<b>Mr Wong</b>) and Mr Richard
Lum Chor Wah (<b>Mr Lum</b>) were appointed as executive directors. According to
the rights issue announcement, Mr Wong was General Manager of Sunwave Holdings
Ltd, a member of a group which specialises in the trading of integrated
circuits, computer peripherals and telecommunication products. He would be
responsible for the sales development of Digital World. </p>

<p>Mr Lum was an executive director of <a href="../dbpub/articles.asp?p=421" target="_blank">Dransfield
Holdings Ltd</a> until 18-Jul-01. He also acted as an independent non-executive
director of <a href="../dbpub/articles.asp?p=3387" target="_blank">Companion Building Material
International Holdings Ltd</a> from 16-May-00 and its affiliate <a href="../dbpub/articles.asp?p=4811" target="_blank">Skynet
(International Group) Holdings Ltd</a> from 5-Jan-00, leaving both on 7-Mar-02.
He is also a non-executive director of <a href="../dbpub/articles.asp?p=4874" target="_blank">Innovative
International (Holdings) Ltd</a> and a director of <a href="../dbpub/articles.asp?p=4815" target="_blank">Dah
Hwa International Holdings Ltd</a>. </p>

<h3>2nd placing</h3>

<p>You might think that the company now had enough money, but on
7-Mar-00, just a week after <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000229/LTN20000229057.HTM" target="_blank">completion</a>
of the rights issue, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000308/LTN20000308056.HTM" target="_blank">announced</a>
a placing of 500m shares (equivalent to 3.58% of the existing issued shares) at <b>
$0.049</b> each, raising <b>$23.9m</b> net of expenses. The placing
agents were TIS Taiwan International Securities (HK) Ltd (<b>TIS</b>) and
Ever-Long, a wholly-owned subsidiary of Styland. </p>

<p>The proceeds were to be used as <i>&quot;general working
capital&quot;</i> and <i>&quot;as reserve for identifying and investing in any
investment projects.&quot; </i>None had been identified at that stage. </p>

<h3>3rd placing</h3>

<p>Not content with that, on 20-Mar-00 the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000321/LTN20000321027.HTM" target="_blank">announced</a>
another placing, again through TIS and Ever-Long, of 700m shares (equivalent to
4.74% of the existing issued shares) at <b> $0.032</b> each, raising <b>$21.5m</b>
net of expenses. This time the placing was <i>&quot;funding for potential
investment in high-tech related projects and general working capital.&quot;</i>
Again, no particular projects were under negotiation. </p>

<h3>Dec-99 interim results</h3>

<p>On 30-Mar-00, Digital World announced a 75% drop in turnover to
HK$56.8m for the six months to 31-Dec-99. It had given up trading TVs and was
trading computer motherboards and peripherals. Net loss was HK$2.6m. </p>

<p>On 5-May-00 Mr Yeung <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000508/LTN20000508042.doc" target="_blank">resigned</a>
after just over a year as an executive director. </p>

<h3>4th placing</h3>

<p>On 8-May-00 the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000509/LTN20000509013.doc" target="_blank">announced</a>
a placing of 1,590.249m shares (equivalent to 9.32% of the existing issued
shares) at <b>$0.022</b> each, through 6 placing agents, an unusually large
number, raising <b>$34m</b> net of expenses, again for <i>&quot;funding the
potential investment in high-tech related projects opportunities&quot;</i>.
Again, no negotiations had been carried out, but heck, you never know when the
money might come in handy. This placing exhausted the remainder of the 20%
general mandate to issue new shares, which was approved along with the 2nd
rights issue in an SGM on 8-Feb-00. </p>

<h3>Star on Board</h3>

<p>On 24-May-00 Michael Lai Tin Ying (<b>Mr Lai</b>) was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000525/LTN20000525043.doc" target="_blank">appointed</a>
as an executive director. According to the next annual report, Mr Lai had joined
the group in Mar-00 and <i>&quot;is a well-known composer and movie star&quot; </i>with
over 35 years' experience in the entertainment industry in Hong Kong<i>. </i>Mr
Lai is also known as Michael Lai Siu Tin, although the report doesn't mention
this. </p>

<p>It later emerged in the annual report that Digital World had
acquired 70% of Michael Lai Production Holdings Ltd (<b>MLPH</b>) <i>&quot;the
promotion specialist for the enormous PRC market&quot;, </i> the remainder being
held by Mr Lai<i>.&nbsp;</i> No details of
the deal were disclosed. According to the report, MLPH entered into an agreement
with China Performing Administration Center (<b>CPAC</b>) to set up Michael Lai
Cultural Promotion and Production Co Ltd (<b>MLCPP</b>). The report stated that
MLCPP's partnership with CPAC facilitates the granting of needed permits and
documents for the promotion of entertainment shows and concerts in the PRC. </p>

<h3>New Finance Director</h3>

<p>On 31-Jul-00 Yuen Chi Ho (<b>Mr Yuen</b>) was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000801/LTN20000801042.doc" target="_blank">appointed</a>
as an executive director. According to the next annual report, he joined the
group in Jun-00, is a qualified accountant and responsible for the accounting
and finance functions of the group. </p>

<h3>3rd rights issue</h3>

<p>On 3-Aug-00, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000804/LTN20000804024.doc" target="_blank">announced</a>
a 2:1 rights issue of 34,117m shares at $0.0065 each, raising <b>$210m</b> net
of expenses. For every 10 shares taken up, the holder got 2 bonus warrants - or
0.4 warrants for every old share held. The warrant subscription price was $0.007
per share exercisable from 13-Oct-00 to 12-Oct-01. As a result of the rights
issue, the Company had <b> 51,175m</b> shares in issue, which may be some kind of
record. </p>

<p>The financial adviser to the Company was
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Details.jsp?charset=ISO8859_1&ceref=AAA347&applNo=0002">First Securities (HK)
Ltd</a> and the Lead Manager was Ever-Long, which is owned by Styland. The
financial adviser to the independent board committee was Hantec Capital Ltd,
reprising their role from the 2nd rights issue. In the final result <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001017/LTN20001017041.doc" target="_blank">announced</a>
on 16-Oct-00, the rights issue was only 69.3% subscribed and the rest was left
with the 12 underwriters. </p>

<p>The planned use of proceeds was: </p>

<blockquote>
  <p>&quot;$80m... for the expansion and operation of the telecom
  business of the group... $60m for the acquisition of a company which operates
  a Wireless Application Protocol in the PRC and... $70m... as general working
  capital.&quot; </p>

</blockquote>

<p>What telecom business? You may well ask, since this was the
first mention of it we can find. </p>

<h3 id="cwap">CWAP.com</h3>

<p>On 7-Aug-00 Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000808/LTN20000808023.doc" target="_blank"> announced</a> it would spend HK$75m in
cash for 80% of a BVI company called Ancora Worldwide Ltd (<b>Ancora</b>), at
the same time revealing that it had already bought 20% of Ancora for $20m in
May-00 from Mr Kevin Ngai Kwok Kin (<b>Mr Ngai</b>). The final 80% was sold by Mr
Ngai, Mr Xu Qing and Mr Zhang Zhi Ling in unspecified proportions. </p>

<p>The announcement referred to a valuation by LCH (Asia-Pacific)
Surveyors Ltd (<b>LCH</b>) for 100% of Ancora at 29-May-00 of <b>HK$103m</b>,
and stated that Ancora owns and operates the first Chinese Wireless Application
Protocol (WAP) portal, <a href="http://www.cwap.com" target="_blank">cwap.com</a>.
The valuation was based on <i>&quot;the cashflow projection and the business
plan of Ancora and comparison with the telecommunication industry&quot;. </i>At
the time of the announcement, Ancora did not even have any management accounts,
let alone audited accounts.&nbsp; </p>

<h4>Backdated valuation </h4>

<p>In the shareholders' circular of 25-Aug-00, the letter
from the board again referred to that valuation <i>&quot;as at 29-May-00&quot;</i>,
but we note that the valuation date in the LCH report was two months earlier, at
31-Mar-00. The NASDAQ index was 43% higher on 31-Mar-00 than on 26-May-00, the
last trading day before the old valuation date, and NASDAQ stocks were
widely used in the LCH valuation methods. No explanation for the date
discrepancy was given. </p>

<h4>Accounts </h4>

<p>According to the report by accountants Lai &amp; Lai, the
principal asset of Ancora was a computer system with a book cost of HK$4.000m
and intangible assets with a book cost of $6.000m at 30-Jun-00, for a total of
exactly <b>$10m</b>. It was not disclosed whether Ancora built the portal from
scratch or acquired it ready-made, but either way, it had only operated the
assets since about 31-Mar-00, because the amount of depreciation recorded was
only 3 months' worth. In view of the precisely round numbers, it is likely that
Ancora acquired the assets on a ready-made basis. </p>

<p>Ancora had only US$100 (HK$780) of share capital, and the HK$10m
investment cost was funded by an interest-free loan from an unnamed shareholder.
Total turnover since incorporation to 30-Jun-00 was $7.33m, representing <i>&quot;advertising
fee income received and receivable&quot;</i>, of which $5.15m had been paid. The
customers were not named. Operating and admin expenses, excluding depreciation,
were $1.365m, none of which had been paid. All the revenue so far, save for
$0.020m in cash, had gone into repaying shareholder loans, leaving $4.871m
outstanding. </p>

<p>Despite never having paid any expenses up to 30-Jun-00, by the
time of the circular, Ancora had <i>&quot;60 to 70 staff&quot;</i>. </p>

<p>Although the users of the portal were <i>&quot;mainly in the
PRC&quot;</i>, the announcement said <i>&quot;Ancora has not required (sic) to
obtain license and approval by the relevant authorities of the PRC for the
aforesaid acquisition by [Digital World].&quot;</i> The circular claimed that <i>&quot;the
principal operation of Ancora is in Hong Kong and Macau&quot;</i>.&nbsp; As we
said earlier, foreign ownership of content providers in the mainland was then
illegal and is still limited, so the legal alternative is to operate Chinese web
sites from HK or Macau. One curious fact: Ancora's registered address on its <a href="http://www.netsol.com/cgi-bin/whois/whois/?STRING=cwap.com&amp;SearchType=do" target="_blank">domain
record</a> is in Beijing. </p>

<p>So there you have it - buy or build a portal for $10m, start
operations, and 3 months later it is worth $103m and sold for $95m. LCH
discarded the &quot;cost approach&quot; in its valuation report, stating: </p>

<blockquote>

<p>&quot;the Cost Approach does not take into consideration the
stunning market potential and future growth of Ancora's services, Ancora's
business model, and the impact of its management's abilities&quot;. </p>

</blockquote>

<p>The financial adviser to Digital World on the transaction was
again First
Securities (HK) Ltd. </p>

<h3>BSPN (Riverhill) - non-disclosure</h3>

<p>On 7-Sep-00, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000908/LTN20000908024.doc" target="_blank">announced</a>
 that back on 27-Jun-00 (3 days before the year end) it had spent <b> $30m</b> cash for
5% of a BVI company called Cyber World Technology Ltd (<b>Cyber World</b>),
which <i>&quot;due to oversight of the Directors&quot;</i> it had failed to mention until now, breaching the Listing
Rules as the deal amounted to more than 15% of the Company's net assets. </p>

<p>Cyber World owned 100% of <a href="http://www.spatialport.com.cn/" target="_blank">Beijing
Spatial Port Network Technology Ltd</a> (<b>BSPN</b>), a PRC company
incorporated on 15-Jul-99 and <i>&quot;engaged in the field of geographic
information system, global positioning system, remote sensing and internet
related services&quot;.</i> </p>

<p>The value of Cyber World was estimated by 
<a href="../dbpub/articles.asp?p=5577">Sallmans (Far East)
Ltd</a>, an &quot;independent professional valuer&quot; at RMB720m (<b>HK$673m</b>)
on 5-Jun-00. Despite this, the unaudited management accounts of BSPN for its
first 14 months amounted to a net profit of HK$9.7m and net assets at 31-Jul-00
were in the same
amount. </p>

<p>The vendor, a BVI company called Zelma's Co Ltd (<b>Zelma</b>),
which owned 40% of Cyber World prior to this deal, was 35% owned by Mr He Xiao Feng, 35% by Mr Liu Wei, and 30% by Mr Yick Chong San. </p>

<p>The rest of Cyber World was owned by <i>&quot;independent third
parties&quot;</i> as to 40% by Global Eagle Investment Ltd (<b>GEI</b>) and 20%
by Cyber City Technology Ltd. While the announcement doesn't mention it, readers
who have followed us this far will recall that GEI is owned by Styland.
In fact, GEI acquired this 40% stake from Zelma in a&nbsp; deal <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000114/LTN20000114059.HTM" target="_blank">announced</a>
on 13-Jan-00 for $148m, implying a value of <b>$370m, </b>which is what LCH
(yes, them again) said it was worth on 30-Nov-99. So in just 6 months, the value
had gone up 82%! </p>

<p>For those readers who follow the GEM (both of you), BSPN was
floated as the main subsidiary of <a href="../dbpub/articles.asp?p=13482" target="_blank"> Riverhill Holdings Ltd</a> (<b>Riverhill,
8127</b>) on
1-Jun-01 - but that will have to wait until a future article. Digital World
ended up with 14,313,725 shares (3.45%) in Riverhill, worth $8.59m at the IPO
price of $0.60. They were not subject to lock-up and may have since been sold;
an unquantified loss provision was made in the Jun-01 results. </p>

<p class="regbox">Regulatory note:
It is often impossible for investors to know which investments have been reduced
in value and by how much. Listed companies should be required to identify the
investment, amount of provision, and resulting carrying value where each
provision amounts to a material percentage of net assets - say 3% or more.</p>

<p>But before we leave Riverhill, there's one more connection we
should make. Did you click on our <a href="http://www.netsol.com/cgi-bin/whois/whois/?STRING=cwap.com&amp;SearchType=do" target="_blank">link</a>
to Ancora's cwap.com? If so, then you should have noticed that Ancora is,
according to that record, located at the Beijing head office of Riverhill's
BSPN. It seems like the two are not complete strangers!</p>

<h3>Jun-00 annual results</h3>

<p>On 23-Nov-00, Digital World announced its results for the year
to 30-Jun-00. Turnover was HK$93.8m, implying that the second half was just
$37m, and net profit was $3.56m. The largest customer accounted for 69% of sales
and the top 5 (or fewer) accounted for 100%, while the largest supplier
accounted for 71% of purchases and the top 5 (or fewer) accounted for 100%. So
although Digital World was still in the &quot;trading&quot; business, it was
more of a pipeline than a trader. The ultimate extreme would be to have 1
customer and 1 supplier, at which point you are just a booking vehicle. </p>

<h3>Purchase of Info-car.com (UVEAC)</h3>

<p>Speaking of vehicles, the results revealed that Digital World had purchased a company
called United Vehicle Exchange Auction Centre Ltd (<b>UVEAC</b>), which purportedly ran a site
called <a href="http://www.info-car.com/" target="_blank">Info-Car.com</a>,
although today that site is just a holding page registered by someone else. No
details of the acquisition were disclosed. The main lines of business <i>&quot;include
the trading of auspicious number plates, the provision of car related news and
the trading of first- and second- hand cars in Hong Kong&quot;</i>, including <i>&quot;hassle
free parallel imports of new and used vehicle&quot;.</i> </p>

<h3>Investment in Inworld</h3>

<p>The results announcement also revealed that Digital World had acquired
3.05% of a company called Inworld Holdings Ltd (<b>IHL</b>) <i>&quot;which is
operating four Chinese language information and entertainment content
platforms&quot;. </i>No details of the transaction were given. </p>

<p>Again, GEM followers may recognise this - it was floated as <a href="../dbpub/articles.asp?p=14791" target="_blank">
Inworld Group Limited</a> (<b>Inworld</b>, <b>8100</b>) on 31-Dec-01, and we'll dig deeper into that
one in a future article. What you need to know now is that its Chairman is Mr
Ngai, who you will recall was one of the vendors of Ancora, and Inworld's largest
shareholder is Styland, with 32.5% post-IPO. </p>

<p>The Inworld prospectus dated 18-Dec-01 reveals that Digital
World paid <b>HK$14m</b> for the 3.05% stake (5 out of 164 shares in IHL),
purchased from Inworld's CEO Mr Chan Wai Lun (<b>Mr W L Chan</b>) on 27-Jun-00,
just 3 days before Digital World's year-end and the same day that it bought the
5% stake in Cyber World. So Digital World had spent a total of <b>$44m</b> in one
day on companies related to Styland, and
shareholders had no idea. </p>

<p>The prospectus also tells us that Mr W L Chan purchased 9 shares in
IHL at $555,555 each on 15-May-00. This implies that six weeks later,
when Digital World paid $2.8m per share, the value of this start-up had
increased 405%! However, two months after that, Styland paid Mr Ngai a cool <b>
$107.8m</b> cash for 45 shares of IHL, an average of $2.40m per share. </p>

<h3 id="chineseyes">Swap 3.05% of Inworld for 10% of West
Marton</h3>

<p>Digital World did not keep its IHL shares until the IPO.
According to the Inworld prospectus, on 15-Aug-01, Digital
World sold its shares in IHL to Mr Ngai in exchange for <i>&quot;a 10%
shareholding interest in a group of companies engaging in the development and
operation of e-commerce portals&quot;.</i> </p>

<p>There was no disclosure by Digital World of this deal at the
time, but <i>Webb-site.com</i> found a reference in the
material contracts listed in the back pages of a rights issue circular dated
22-Feb-02, which mentions the swap agreement with Mr Ngai dated 10-Aug-01 and
names the new investment as 85 shares in West Marton Group Limited (<b>West
Marton</b>).&nbsp; </p>

<p>And what is West Marton? Sometimes, you just know where to look. We turn to
Styland's annual report for
31-Mar-01 and find that at that date, West Marton was a 90% subsidiary
incorporated in the BVI, then with HK$468 (US$60) of share capital, which
Styland had acquired for <b>$120m</b> cash on 31-Oct-00. Styland never actually
announced that deal, as it was less than 15% of the latest net assets of $999m.
However, the back pages of a recent Styland circular dated 5-Jul-02 name the
vendor as Fu Tsin Man and the agreement was dated 10-Oct-00. We don't know
anything about Mr/Ms Fu Tsin Man. </p>

<p>Styland's annual report barely mentions West Marton, stating
only that it has a wholly-owned subsidiary called E-Union Information Science
&amp; Technology (Shenzhen) Co Ltd. A search of the web finds only one reference
- a site called <a href="http://www.chineseyes.com/" target="_blank">Chineseyes.com</a>,
which appears to be a mainland portal. Click on a province and look at the
bottom of the page, which attributes the site to E-Union. Based on the webmaster
e-mail address, the site appears to be managed by Inworld. The only advertising
on the site appears to be an inactive rotating <a href="http://www.chineseyes.com/web-e/images/Banner-t-3.gif" target="_blank">banner</a>
for several companies, all of which were mentioned above: Styland, Ever-Long,
BSPN, MLPH, and Info-Car.com (which dates it, because Info-Car.com is defunct).
The <a href="http://www.netsol.com/cgi-bin/whois/whois/?STRING=chineseyes.com&amp;SearchType=do" target="_blank">domain
record</a> of Chineseyes.com records Inworld's Mr Ngai as the administrative
contact. </p>

<p>The annual report of <a href="../dbpub/articles.asp?p=1670" target="_blank"> renren Holdings Ltd</a> (<b>Renren, 0059</b>)
for the year to 31-Dec-01 shows that during 2001, Renren acquired 10% of West
Marton, which by year-end had US$850 of share capital, for a cash consideration
of <b>$10m</b>. The deal was not announced so we don't know who the vendor was. </p>

<h3>Jun-00 annual report</h3>
<p>The annual report and accounts contain some additional
surprises; first, Johnny Chan &amp; Co had resigned as auditors and were
replaced by Deloitte Touche Tohmatsu; again, this was unannounced. Second, apart from the $44m last minute
binge on Cyber World ($30m) and Inworld ($14m), the accounts disclosed that
Digital World had spent $28.596m on listed equities in HK, including - guess
what - a 3% stake in <b>Styland</b>. This holding was disclosed under the obscure <a href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/9357734a2f77874cc825648000432668" target="_blank">s129(2)</a>
of the HK Companies Ordinance because it amounted to more than 10% of the
Group's gross assets of $198m. The market value of the listed investments,
including Styland, had fallen to $17.58m by the year end.</p>
<p>We also found that Digital World had quietly begun its money
lending business. Receivables included secured loan(s) of $28.43m at Prime+2%,
and unsecured loan(s) of $2.63m at 9.75%. The identity of
the borrowers was not disclosed.</p>
<p>The only two subsidiaries known to be acquired in the year to
30-Jun-00 were 100% of UVEAC and 70% of MLPH. The annual report shows that
acquisitions of subsidiaries cost <b> $15.25m</b> in cash, for which the group acquired
net liabilities of $237,000. In net asset terms, that's money for nothing. </p>

<h3>Share consolidation</h3>

<p>On 15-Feb-01 Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010216/LTN20010216029.doc" target="_blank">announced</a>
an 80:1 share consolidation. If you Ignore the opportunity to take up rights
issues, after two consolidations and a bonus issue, every 400 shares at the IPO
was now reduced to 3 shares in the company. </p>

<p>In an major snafu, the auditors Deloitte Touche Tohmatsu signed
off on an adjustment to the warrant exercise price from $0.007 to $0.07 per
share, and it wasn't until 9-Apr-01 that the company <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010410/LTN20010410019.doc" target="_blank">announced</a>
they had got it wrong, and the adjusted price should be (of course) 80 times the
old exercise price, or $0.56 per share. Meanwhile, as the annual accounts later
revealed, an alert warrant holder had spotted the gaff and exercised warrants to
buy 400,000 consolidated shares for $28,000 rather than $224,000! The warrants
were (at $0.56) out-of-the-money so no others were exercised during the year to
30-Jun-01. </p>

<h3>Dec-00 interim results</h3>

<p>On 26-Mar-01, Digital World announced a net loss of $18.8m on
turnover of $60.2m for the six months to 31-Dec-00. This included a <i>&quot;provision
on some of its investments in view of the market perception and the diminishing
valuation of portal companies&quot; </i>in the amount of <b>$25.5m</b>. <i>&quot;Yet,
the management would like to emphasis that those investee companies are
operating at a profitable and improving angle&quot;</i>. </p>

<p>The interim report showed that non-trade receivables, presumably
comprising loans to third parties, now amounted to $79.5m, and still no
explanation was given. </p>

<p class="regbox">Regulatory note: the skimpy &quot;condensed&quot; interim
accounts under HK's Listing Rules don't allow us to analyse the changes in
investments.</p>

<p>The report showed that on 3-Jul-00, the first day of the new
year, the company had acquired 95% of Pastena Worldwide Inc. for <b>$2m</b>. We
don't know what that is. The report also showed that on 25-Nov-00, Digital World
had sold 100% of a BVI company called Solar Top Group Ltd for $13.8m cash, a
gain of $3.822m. This implies a purchase cost of <b>$10m</b>. This BVI investment
holding company was acquired in Mar-00 and our best guess is that this was the
holding company of UVEAC, which was no longer mentioned in the report. No
disclosure on who bought Solar Top, which had contributed to Digital World no
revenue and a consolidated loss of $0.414m in the six-month period. </p>

<p>If Solar Top was indeed the holding company of UVEAC, then that
implies that the 70% stake in entertainment promoter MLPH, being the other subsidiary acquired in the
year to 30-Jun-99, came at a price of <b>$5.25m</b>. </p>

<p>The interim report also contains some entertaining appraisal
from the management, telling us that after the share consolidation, the net
assets per share are around $0.46, a premium of 291% over the market price of
$0.158 on 23-Mar-01. <i>&quot;The Company is extremely undervalued&quot;</i>. We
were told that MLPH <i>&quot;is also progressing
smoothly&quot;</i>. On the strategy front, they wrote: </p>

<blockquote>
<p>&nbsp;&quot;Instead of running blindly after those
&quot;bubble&quot; companies , the management has clearly identified the
following strategies: </p>

<p>* fundamental; and<br>
* inter-related for synergy possible.&quot; </p>

</blockquote>
<p>Perhaps forgetting that he had just written down the cost of
investment in bubble companies, Chairman T H Chan, now in full command of his
literary skills, wrote: </p>

<blockquote>
<p>&quot;Humbly speaking, the path is not simple...Hong Kong lacks
of technology people...the management would remain prudent in...avoiding
over-sketching the available manpower that may result in insufficient
control&quot;. </p>

</blockquote>
<p>Mr Chan apparently saw progress where others saw red ink,
writing: </p>

<blockquote>
<p>&quot;the management... is proud to report that the Group, under
the current management, has picked up again its momentum. We are confident that
the business outlook of the Group is even more promising.&quot; </p>

</blockquote>
<h4 id="dnunet">Investment in Digital Nunet Exchange Ltd </h4>

<p>The report also mentioned an investment in 55% of Digital Nunet
Exchange Ltd (<b>Dnunet</b>), a <i>&quot;Greater China Internet Data Center
provider&quot;, </i>a joint venture with <a href="http://www.nunet.com/" target="_blank">Nunet
Inc</a> <i>&quot;with the full support from <a href="http://www.telhope.com" target="_blank"> Telhope Information Development Co
Ltd</a>, a leading [PRC] telecom runner.&quot; </i>No financial terms were
disclosed. From it's web site, Nunet appears to be an Internet service provider
based in Pennsylvania, USA. Dnunet was granted an ISP <a href="http://www.ofta.gov.hk/tele-lic/operator-licensees/opr-isp.html" target="_blank">license</a>
by the HK regulator on 16-Jul-01. </p>

<h3>Exit Mr Wong</h3>

<p>On 30-Apr-01, Mr Wong resigned after 14 months as an executive
director of Digital World. </p>

<h3>A little wine?</h3>

<p>Just remember, you are now looking at a technology company. So
on 21-Jun-01, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010622/LTN20010622034.doc" target="_blank">announced</a>
it was buying 8% of a BVI company called Well Pacific Investments Ltd (<b>Well
Pacific</b>), which had an 85% stake in a PRC company called Siping Wei Da
Transportation Co Ltd (<b>Wei Da</b>) which in turn owned Lisy County Wei Da
Tian Yuan Wine Limited Company (<b>Tian Yuan</b>), which was <i>&quot;principally
engaged in the manufacturing of Chinese white wine.&quot;</i>&nbsp; </p>

<p>The owner of the other 15% of Wei Da was <i>&quot;an independent
third party&quot;</i>. The vendor of the 8% stake in Well Pacific was another
BVI company, an <i>&quot;independent third party&quot;</i> whose warrantor and <i>&quot;major
shareholder&quot;</i> was a person called Wang Yan. No other information on
Mr/Ms Wang was given. Digital World paid <b>$9.98m</b> for the 8% stake,
comprising $4.4m in cash and 18.6m new shares at $0.30 each. At the same time,
another <i>&quot;independent third party&quot;</i> bought an 8% stake for an
undisclosed price, leaving the vendor with 84%. Digital World wrote: </p>

<blockquote>
<p>&quot;The principal activities of Wei Da include the provision
of transportation service in the PRC and Wei Da will focus on developing
intelligent goods transportation system using internet and computer
technology&quot;. </p>

</blockquote>
<p>Digital World also obtained a 1-year option to acquire a further
35% of Well Pacific on the same terms. </p>

<h3>Another breach</h3>

<p>On 16-Oct-01, Digital World <a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20011017/LTN20011017022.doc">announced</a>
it had again breached the Listing Rules, this time by failing to disclose a loan
of $5m to a director of a subsidiary of MLPH made on 1-Mar-01 at 5% p.a.. </p>

<h3>Jun-01 annual results &amp; report</h3>

<p>On 18-Oct-01 Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011019/LTN20011019021.doc" target="_blank">announced</a>
a net loss of $74.1m on turnover of $81.3m for the year ended 30-Jun-01. The
loss included a provision for impairment of long term investments amounting to
$50.0m (up from $25.5m in the first half), as well as provision for loss of <i>&quot;other
receivables&quot;, </i>presumably from its money-lending business, of <b>$36.4m</b>,
made in the second half. </p>

<h4 id="dwfinance">Money lending - Digital World Finance </h4>

<p>Digital World's non-trade receivables (net of provisions) now
amounted to $59.2m, including interest-bearing secured receivables of $36.7m and
unsecured receivables of $15.95m at rates ranging from 5% to 18% p.a.. </p>

<p>In the annual report, the Chairman blamed the loan losses on: </p>

<blockquote>
<p>&quot;over-lending to some reputed persons on a &quot;name&quot;
basis or against securities. The value of which have deteriorated much faster
than anticipated&quot;,&nbsp; </p>

</blockquote>
<p>Needless to say, they didn't disclose the names they'd been
lending to or what stocks they'd been lending against. However, we can give you
a flavour of the sort of loans they have been making since then, because there has been one
dealing <a href="http://www.hkex.com.hk/listedco/sdi/20020611i.htm" target="_blank">disclosure</a>
in which Digital World Finance Ltd (the lending subsidiary) on 11-Apr-02
obtained security on 3,963m shares of Renren to a company called Rich Delta Development Ltd, owned
by the Chairman and controlling shareholder of Renren. The share mortgage was
discharged on 3-Jun-02 and guess who the shares were pledged to that day? The
answer is Ever-Long Capital Ltd, a subsidiary of Styland.&nbsp; </p>

<p>In fact, Ever-Long Capital was already familiar with this
customer, because on 3-Dec-01 the lender was <a href="http://www.hkex.com.hk/listedco/sdi/20011211i.htm" target="_blank">granted</a>
a second mortgage over 5,202m Renren shares by the same party, which was <a href="http://www.hkex.com.hk/listedco/sdi/20020605i.htm" target="_blank">released</a>
on 29-May-02. </p>

<p>Mr T H Chan, Digital World's Chairman, was appointed as a
non-executive director of Renren on 26-May-01 and resigned 11-Apr-02. We'll tell you more about Renren in a future article. </p>

<h4>Advertising &amp; entertainment </h4>

<p>As regards the new subsidiaries, the segmental information
showed that <i>&quot;advertising&quot; </i>(presumably Ancora's cwap.com) had contributed
revenue of just $3.770m (all in the first half of the year) and a loss of $0.624m - remember this was a $95m
acquisition! Meanwhile, <i>&quot;provision of entertainment services&quot;</i>
(presumably MLPH) contributed revenue of $1.072m and a loss of $0.899m. </p>

<h4>Dealing </h4>

<p>Digital World had also been busy in the market, recording
purchases of <i>&quot;other investments&quot; </i>(meaning not long-term) of
$72.1m and sales of $60.8m, and recording an overall loss on other investments of
$11.0m. </p>

<h4>Investment in Taiwan </h4>

<p>Digital World's annual report also revealed a <b>$10m</b>
deposit paid for a 12.5% interest in an unnamed private Taiwanese company, in a
deal due to complete in Nov-01. No further mention has been made of it so we
don't know whether the deal completed. </p>

<p>On 30-Nov-01 Mr Yuen, the finance director, <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20011203/LTN20011203072.doc" target="_blank">resigned</a>
after 16 months in the job. </p>

<h3>International Capital Network</h3>
<p>Although Digital World did not announce it, the IPO prospectus
of GEM-listed <a href="../dbpub/articles.asp?p=15232" target="_blank">International
Capital Network Holdings Ltd</a> (<b>ICNH, 8004</b>) dated 20-Nov-01 states that
on 10-Nov-01 Digital World acquired shares in ICNH for <b>$12m</b>, or an
average of $0.477 per share, for a stake of 7.85% post-IPO. That troubled
company deserves a whole article of its own, so you'll have to wait for that.</p>
<p>For now, we'll tell you that the IPO took place at $0.84 per share
and now the shares trade at $0.138. ICNH owns International Capital Network
Ltd (<b>ICN</b>), an SFC-registered financial adviser. The vendor of the shares
to Digital World was Ms Leung Yuk Kit, one of the founders of ICNH. In
subsequent events, Styland confirmed in an <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020502/LTN20020502118.doc" target="_blank">announcement</a>
that&nbsp; she was an assistant to the financial controller of Styland and
resigned in Jul-99.</p>
<p>In ICNH's prospectus, a <i>&quot;Hong Kong listed distributor of
technology products&quot;</i> was listed as the client in ICN's first two
transactions ever. The first, mandated on 10-Aug-00, was the sale of a minority
interest in a wholly-owned subsidiary for a success fee of $0.8m, while the
second, mandated two days later, was advice on a rights issue, for a fee of
$0.2m. At least in the second case, the unnamed client must have been Digital
World, as the dates of announcement and circular match with the 3rd rights issue
described above, for which Ever-Long was the Lead Manager. Ever-Long was also
Lead Manager of ICNH's IPO.</p>

<h3>Fourth rights issue</h3>

<p>On 17-Jan-02, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020118/LTN20020118024.doc" target="_blank"> announced</a> its heaviest rights issue
yet, of 7,246m shares on the basis of 11 new shares for every share held, at
$0.015 per share, an 85% discount to market, raising <b>$105m</b> net of
expenses. Of this, $55m was for <i>&quot;general working capital&quot;</i> and
$50m for <i>&quot;future investment opportunities...in the technology industry
and divisified (sic) the investment portfolio... into any project with expected
good returns&quot;. </i>In other words, they had no plans for the money. </p>

<p>The issued was arranged by Ever-Long, the lead manager was <a href="http://www.luenfat.com.hk/" target="_blank"> Luen
Fat Securities Co Ltd</a> and they and 13 others, including ICN, underwrote the issue. </p>

<p>Chairman Mr T H Chan agreed to take up his rights to 18.73% of
the issue and underwrite a further 11.2% of the issue, which if fully taken up
would raise his stake to 29%, just below the takeover threshold. In the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020318/LTN20020318033.doc" target="_blank">final
result</a>, only 54.73% of the provisional allotment was taken up by
shareholders, but there were excess applications from other shareholders
(including Mr T H Chan) for a further 56.29% and as a result the issue was fully
subscribed and his stake increased to 26.06% of Digital World. </p>

<p>After the issue, there were 7,904m shares in issue, but remember
there has been a cumulative 400:3 consolidation, so in IPO terms this is
equivalent to 1.05 trillion shares. </p>

<h3>Dec-01 interim results</h3>

<p>On 21-Mar-02, Digital World <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020322/LTN20020322013.doc" target="_blank"> announced</a> a net loss of $38.1m on
turnover of $33.2m for the six months to 31-Dec-01. The loss included a realised
loss of $14.9m on investments, another provision for impairment of long-term
investments of $15.9m. </p>

<p>Non-trade receivables had grown from $59.2m six months earlier
to $105.9m, reducing cash and bank balances and deposits to just $36.2m, despite
that $105m rights issue which closed on 15-Mar-02. </p>

<p>On the segment analysis, turnover from advertising and design
services, presumably by Ancora, was just $0.244m, recording a loss of $4.763m.
Provision of entertainment services, presumably MLPH, recorded turnover of
$0.536m and a loss of $0.531m. Meanwhile Dnunet, the data centre business, got
up and running in the 4th quarter and contributed turnover of $0.215m and a loss
of $1.815m. </p>

<h3>Penny stock</h3>

<p>If Digital World's stock chart were a cardiograph, you'd be looking at a
dead patient. It flatlined on 20-Mar-02 at the $0.01 minimum allowed by the
Stock Exchange trading system, and apart from 5 days in May, it has been stuck
there ever since, with no bid. In these circumstances, the only way to trade
below $0.01 is manual matching through a broker. The Stock Exchange should have
exercised its power under paragraph 30 of the <a href="http://www.hkex.com.hk/rulereg/listrules/app7b.doc" target="_blank">Listing
Agreement</a> to require a consolidation proposal for the stock, but has
apparently failed to do so. The Exchange has failed to require consolidations in
several other cases, and as we have <a href="cutthespread.asp" target="_blank"> said
before</a>, they should intervene long before
stocks get to this level, not wait until they hit $0.01. </p>

<h3>Coming soon</h3>

<p>If you've read this far, then you have seen a complex jigsaw of
interlocking transactions in which hundreds of millions of dollars have passed
in rights issues and placings from shareholders into Digital World and out again in the form of highly priced
acquisitions and investments, many of which involved Styland (a company which is
similarly fond of rights issues) as a fellow investor, while Digital World has also
generated a whole pile of bad
loans to &quot;reputed persons&quot;. </p>

<p>In our next (and shorter) episode, we'll take you through the
makings of one of the GEM stocks in this puzzle, and show you how to spin up a
track record that will get you past the listing committee faster than you can
say &quot;Worldcon&quot;. </p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=14791">Famous Tech International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5142">Good Resources Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15232">INTERNATIONAL CAPITAL NETWORK HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15548">JOHNNY CHAN & CO. LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13482">RIVERHILL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1670">Skyfame Realty (Holdings) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4978">STYLAND HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15098">Wisdomcome Group Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=6884">Chan, Jimmy Yuen Tung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10092">Chan, Johnny Kin Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1862788">Fu, Raymond Tsin Man</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7565">So, Chee Keung</a></li>
				
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