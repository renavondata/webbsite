
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

<script type="text/javascript">document.title="Criminal Record";</script>

	<div class="summary">We take a look at the sordid past of LCD maker Yeebo International Holdings Ltd, now under new management. The past presents a case study in criminal fraud and bad internal corporate governance. We also look to the future of the group, which was rescued by a textiles tycoon who last year saw shareholders reject his proposed systems integration investment priced at 59.1x earnings. Now, the company is cashed up with a new industry-related 34.7% shareholder.</div>

<h2 class="center">Criminal Record<br>
<span class="headlinedate">27 August 2001</span></h2>
<p>We roll back the clock with a corporate horror
story from the electronics sector, Yeebo International Holdings Ltd (<b>Yeebo</b>),
a maker of LCD displays and printed circuit boards. The company was floated on
the SEHK on 1-Sep-93. Its Chairman and Managing Director was Makie Hui Po Yuen (<b>Mr Hui</b>).</p>

<p>On 19-Mar-96, the shares of Yeebo were suspended and the company
announced it had commenced legal proceedings in HK claiming substantial damages
against <i>&quot;one of the Company's directors&quot; </i>who later turned out
to be Mr Hui. </p>

<p>The board meeting
that day, absent Mr Hui, set up an independent investigative
committee comprising independent non-executive director (INED) Kenneth Fang Hung
(<b>Mr Fang</b>), Finance Director Frankie Li Kwok Wai (<b>Mr Li</b>), and
Financial Controller and Company Secretary, Kelvin Lam Kam Cheung (<b>Mr Lam</b>).
The other INED, Wong Sun (<b>Mr Wong</b>) was not present at the meeting. More
about him later! </p>

<p>Mr Fang joined as an INED on 22-Aug-95. He is also Chairman of the Hong Kong Productivity Council
and of his private family company, Fang Brothers Knitting Ltd, which recently
bought the UK knitwear business <a href="http://www.pringle-of-scotland.co.uk/" target="_blank">Pringle</a>. His private interests
include <a href="http://www.real-estate-tech.com/zeppelin_key_executives.htm" target="_blank">Zeppelin
group</a>, where he is Chairman and Mr Li is Managing Director. Mr Li joined as
a director of Yeebo on 8-Nov-95. </p>

<p>What later transpired showed how little the Finance Director and
Financial Controller knew about the true finances of the company. </p>

<p>On 22-Mar-96, referring to the writ, Mr Hui announced that: </p>

<blockquote>

<p>&quot;any allegation of fraud and/or deceit and/or breach of
fiduciary duty against me is categorically denied and any allegation that I have
misappropriated... any money belonging to the Company is totally true and
unfounded.&quot; </p>

</blockquote>
<p>Mr Hui resigned on
27-Mar-96 along with 3 other executive directors, Rue Steel Marshall Jr (<b>Mr Marshall</b>),
Harry Shizuo Suzuki (<b>Mr Suzuki</b>) and Hui Wing Ching. </p>

<p>Yeebo also informed the Commercial Crime Bureau and this
eventually led to criminal fraud charges being laid against Mr Hui on 20-Apr-98. In Aug-00 he
was convicted of embezzling HK$80m (out of charges totalling $100m) involving 23
charges of theft, four charges of false accounting and two of publishing a false
statement (namely, the Mar-94 and Mar-95 accounts of Yeebo, the first two years
it was listed). He was acquitted of 3 other theft charges, and was sentenced to
7 years in jail. </p>

<p>The writ filed by Yeebo on 19-Mar-96 claimed damages of $86.4m
in respect of alleged breaches of fiduciary duties during 1993-1996. On
10-May-96, Yeebo <a href="http://www.asiawind.com/pub/hksr/news/oldnews/960517/10-11" target="_blank">added</a>, amongst others,
Mr Marshall and Mr Suzuki as
defendants to the proceedings. The total amount of the claim by then amounted to HK$217m.&nbsp; </p>

<p>The accounts for the year to 31-Mar-97 stated: </p>

<blockquote>

<p>&quot;On 10th May 1996, certain of the Group's other former
directors and officers were added as defendants to these proceedings together
with certain suppliers of plant and machinery... for alleged frauds perpetrated
against the Group.&quot; </p>

</blockquote>

<p> For each of the
3 years to 31-Mar-00, a similar statement appeared in the notes to the accounts,
concluding in 2000 that: </p>

<blockquote>

<p>&quot;no significant progress has been made during the year and
up to the date of the report with respect to this action.&quot; </p>

</blockquote>

<h3>Proceedings discontinued?</h3>

<p>In the latest accounts for the year ended 31-Mar-01, no
statement about the litigation was made, so we wonder whether the company has
given up actively pursuing it. Mr Suzuki died on 6-Sep-97 and received a glowing
tribute in the annual report for that year. In the Mar-01 accounts, another
defendant, Mr Marshall, was still listed as a
senior manager of Yeebo responsible for LCD manufacturing operations. </p>

<p>The Mar-96 accounts restated the 1995 financial position in the
following respects: </p>

<ul>
  <li>The costs of the U.V. Exposure
    System which was purchased in Mar-1995, were significantly inflated by fictitious
    invoices. As a result, the book cost of the U.V. Exposure System
    has been written down by $65m to reflect its actual and fair cost.</li>
  <li>Before 1-Apr-95, the Group had paid
    deposits and interests in aggregate of $132.5m purportedly for the purchase
    of plant and machinery. The plant and machinery were not received and the
    money never came back either.</li>
  <li>The stocks at 31-Mar-95 included
    $3.1m supported by allegedly falsified stock records.</li>
  <li>Alleged fictitious sales in the
    year ended 31-Mar-95 of $34.1m supported by allegedly falsified invoices,
    stock out records and delivery notes.</li>
</ul>
<p>In addition in the year to Mar-96, a
further $10m of purported plant and machinery deposits in the Mar-96 year were
written off. All told, the hole in Yeebo's accounts now totalled $234.7m,
leaving it with net liabilities at 31-Mar-96 of $9.7m.</p>
<h3>Kin Son's failure</h3>
<p>Another $15.3m was written off in 1996
due to the liquidation of Kin Son Electronic (Holdings) Ltd (<b>Kin Son</b>),
another HK-listed electronics company.</p>
<p>Mr Hui had obviously been a good friend
of Kin Son's Chairman, So Kin Keung (<b>Mr So</b>), who was also at one time a
Yeebo director. Yeebo purchased fixed assets from Kin Son and leased them
back to Kin Son, accounting for $11.2m of the write-off since the assets were in
Kin Son's custody and not recovered. Yeebo also lent $8.2m to Kin Son and
another $3.6m was due as accounts receivable. That adds up to a loss of $23.0m</p>
<p>In Aug-95, Mr Hui, Mr Suzuki and Mr
Marshall had provided a joint and several indemnity to Yeebo <i>&quot;in respect
of all losses that the Group may incur in connection with certain amounts due
from Kin Son&quot;</i>. A separate indemnity was give by W C Hui. In fact, only
$7.7m was recovered from the indemnity by offsetting amounts due to the former
Yeebo directors. In the Mar-96 accounts, the new board of Yeebo took the view
that:</p>
<blockquote>
  <p>&quot;it is uncertain at this time as
  to any further amount that will be recovered... under the deeds of
  indemnity.&quot;</p>
</blockquote>
<p>Mr Hui had also been personally lending money to Mr So. Mr Hui
pledged 50m of his Yeebo shares to three individuals to secure loans to Mr So,
and at least 27.33m were sold between Apr-95 and Jul-95 because Mr So had
defaulted on the loans, reducing Mr Hui's stake from 45.6% to 39.5%. Mr So vanished in Mainland China in Jul-95 and has not
been heard of since. Kin Son filed for liquidation in Aug-95.</p>

<p>In Oct-95, National Bank of Canada sued Yeebo for US$3m pursuant
to a purported undated guarantee executed by or on behalf of Yeebo for monies
advanced by the bank to Kin Son. On 7-May-96 the claim was amended to add the
alternative of US$3.9m with respect to alleged misrepresentation from a former
director of Yeebo. The claim was eventually settled without admission of
liability during a restructuring of Yeebo.</p>

<h3>Warning sign from Chengdu</h3>

<p>We had Mr Hui's measure some time before Yeebo hit trouble. In
one of our earlier pieces of shareholder activism, long before <i>Webb-site.com</i>
 existed, we noticed that the Mar-95 results of Yeebo announced on 23-Aug-95 included a new
disclosure that the electronics maker had </p>

<blockquote>

<p>&quot;diversified into the hotel business in Chengdu, Sichuan
Province of the PRC...The Group has signed a joint venture agreement in August
1994 with Sichuan [Province] Textile Industrial Supplies Corporation [<b>SPTIS</b>]
for the construction of a 263-room three star hotel in Chengdu. The Group owns a
55% interest...&quot; </p>

</blockquote>

<p>That kind of &quot;diversion&quot; is usually a clear sell
signal, so we sold, and wrote to Mr Hui and the Stock Exchange, pointing out that
the hotel investment, at 22% of Yeebo's net assets, even under Hong Kong's lax
standards, should have been disclosed when it happened a year earlier and a
circular should have been sent to shareholders. The trigger point for such
disclosure was (and remains) 15% of net assets. Our complaint resulted in a
flimsy circular being sent to shareholders on 6-Nov-95. The circular did not
even give the address of the nearly-completed hotel, just that it was in the Jin
Nui District. To this day, we cannot figure out which one it is, although <a href="http://www.orientaltravel.com/hotel/city/det_Kaqiusha_Big_Hotel.htm" target="_blank">this
one</a> fits the description. </p>

<p>We also objected to shareholders' funds being used in this
obviously non-core activity. The circular said: </p>

<blockquote>

<p>&quot;The reason for the diversification... is that the Board,
including the independent non-executive directors, believe the expected returns
from the above investment will be lucrative&quot; </p>

</blockquote>

<p>The independent directors at that time were Mr
Fang, who joined on 22-Aug-95, and Mr Wong, who joined in
1993. How lucrative was the project? It emerged in the accounts for the year to
31-Mar-96 that: </p>

<blockquote>

<p>&quot;During the year, the Group had a dispute with the joint
venture partner... who failed to contribute to the joint venture the land use
rights on a piece of land on which the hotel... has been built&quot; </p>

</blockquote>

<p>On 17-Jun-96 SPTIS made a claim against Yeebo for RMB10.6m
(HK$9.9m) in respect of an alleged breach of the JV agreement by Yeebo and
demanded termination of the JV.&nbsp; In the two years to Mar-97 Yeebo wrote off
the entire HK$57m invested in the project. Eventually the Chinese courts ordered
the JV to be liquidated, and Yeebo recovered just HK$6.9m of the investment
after expenses. That's how &quot;lucrative&quot; the project was. </p>

<h3>The New Team</h3>

<p>The exposure of Mr Hui's fraud was followed by the resignation
on 27-Mar-96 of 4 out of the 5 executive directors, including Mr Hui. The next
day, finance director Mr Li became CEO and financial controller Mr Lam became an executive director. They
remain in these positions at the time of writing. </p>

<p>The new management brought with them basic controls which had
previously been lacking, such as requiring two signatures on outgoing cheques. </p>

<p>Prior to joining Yeebo, Mr Lam was an auditor with Deloitte
Touche Tohmatsu and had been a member of the audit team for Yeebo in 1993-1995,
which included the years in which Mr Hui was busy embezzling the group and
making false financial statements. We make no suggestion that Deloittes should
have detected the fraud in their audit work. </p>

<h3>Restructuring</h3>

<p>Mr Fang became non-executive Chairman of Yeebo in Sep-96. In
1997, after several restructuring proposals from various parties, a deal was
reached with the banks in which Mr Fang and Mr Li, through Antrix Investment Ltd (<b>Antrix</b>
of which they owned 51% and 49% respectively) underwrote an open offer of new
shares. Prior to that, Mr Fang and Mr Li owned only 0.63% and 0.16% of Yeebo. </p>

<p>Existing shares were consolidated 10 for 1, and the open offer was for 158m new shares at $1 each, on the basis
of 7 new shares for every 2 shares held. Yeebo's bankers, who were owed $257.2m,
agreed to sell up to $118.5m of the debt to Antrix (financed by an equal loan
from the banks to Antrix) to enable it to take up its underwriting position up
to 75% of the new issue. The effect of this was that, as long as the
subscription by other shareholders was at least 39.5m shares (25% of the issue)
then Antrix would be able to borrow the entire cost of its stake. The banks
would get $36.5m of the issue proceeds. In addition, the banks agreed in effect
to bear up to $30m of future litigation costs. </p>

<p>In the end result, by 30-Sep-97 Antrix held 83.1m shares (41%)
of Yeebo and bank debt was reduced to a term loan of $106m. </p>

<p>Fellow textiles tycoon and legislator James Tien&nbsp; Pei-chun,
Chairman of Manhattan Holdings Ltd, became an independent director of Yeebo on
16-Jun-97. </p>

<p>On 5-Aug-98, Mr Wong resigned as an INED and Allan Chu Chi Wai (<b>Mr
Chu</b>) was appointed in his place. Our database reveals that Mr Chu is
co-founder and former Chairman of <a href="http://www.tchk.com/" target="_blank">Team Concepts
Holdings Ltd</a>, a HK-listed maker of fixed-line phones which ran into
financial stress in the late 1990s and after three name changes is now known as
South Sea Holding Co Ltd. The old name is gone, but the outdated <a href="http://www.tchk.com/product/corfile2.html" target="_blank">web
site</a> survives. Mr Chu knew Mr Fang, as Mr Fang was an INED of Team
Concepts until 5-Jun-97. Now the positions are reversed! </p>

<h3>Mr Wong was an &quot;Insider Dealer&quot;</h3>

<p>Mr Wong's resignation from Yeebo was followed in Dec-98 by
Insider Dealing Tribunal proceedings against him and others, in relation to the
shares of Hanny Holdings Ltd (<b>Hanny</b>). Mr Wong was the former chairman of
Hanny. Mr Wong and two other former directors of Hanny were <a href="http://www.info.gov.hk/gia/general/200004/13/0413182.htm" target="_blank">found</a>
to be insider dealers and <a href="http://www.info.gov.hk/gia/general/200006/20/0620246.htm" target="_blank">ordered</a>
to pay to the Government a total of HK$35m in restitution, plus $45m in
penalties and $9.6m in costs.&nbsp;Mr Wong's fine set a new record for the
Insider Dealing Tribunal, being liable for $47.4m, including the $17m profit he
had made. </p>

<h3>Second Open Offer</h3>

<p>On 14-Dec-98, with repayments looming under the term loan, Yeebo
made another open offer, this time of 3 new shares for every share held at $0.20
per share. The offer at par value was above market price and was not
underwritten. The offer was 70% subscribed, raising $85.5m gross. Mr Li, Mr Fang
and Antrix took up their full entitlements, raising their combined stake to
53.75%. </p>

<h3>Connected transaction Vetoed!</h3>

<p>On 28-Mar-00 (in the heat of dotmania) Yeebo <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000329/LTN20000329034.HTM" target="_blank">announced</a>
a proposed investment of the US dollar equivalent of RMB100m (HK$94m) in a joint venture,
in which Mr Fang would also invest RMB100m and two PRC companies would be
injected. Yeebo and Mr Fang would each get 14% of the joint venture, with the
owners of the PRC companies holding the rest. The PRC companies were systems
integrators for telecoms companies in the PRC. The deal was priced at 59.1x
combined earnings. </p>

<p>Originally Yeebo hoped that its investment would go around in a
circle, with the JV investing RMB100m in 190m new Yeebo shares. It turned out
that this would require various government approvals in the PRC which would not
be easy to get. So on 17-May-00 Yeebo <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000518/LTN20000518038.doc" target="_blank">announced</a>
a modification to the deal in which Yeebo's investment, for a 13.5% stake, was
to be funded by an open offer of 3 new shares at $0.25 for every 2 old shares
held, and underwritten by Mr Fang. </p>

<p>At the SGM on 30-Jun-00, in a very rare event in HK, independent shareholders <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000703/LTN20000703040.doc" target="_blank">voted
against the deal</a> and it was aborted. </p>

<h3>Have money, Can do</h3>

<p>A Memorandum of Understanding was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001101/LTN20001101017.doc" target="_blank">announced</a>
on 31-Oct-00 and an agreement was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001123/LTN20001123013.doc" target="_blank">announced</a>
on 22-Nov-00 in which <a href="http://www.candocom.com/" target="_blank">Cando
Corporation</a> (<b>Cando</b>), a private Taiwanese company agreed to subscribe
350m shares at $0.40 each, giving it 34.7% of the enlarged issued share capital.
That diluted Antrix, Mr Fang and Mr Li from 54.2% to 35.4%. No takeover offer
was needed since Antrix and its concert parties maintained a
&quot;controlling&quot; stake of more than 35% (with or without Cando) while
Cando remains just under the 35% takeover threshold. </p>

<p>Founded in 1994, Cando makes indium-tin-oxide (ITO) coated glass, which is used
in STN/TN LCD displays (the sort you find in watches, phones and palm devices).
Cando also makes colour filters which are used in TFT LCD displays (the sort you
find in lap-tops and flat-panel monitors). Cando supplies ITO glass to Yeebo
accounting for less than 5% of the purchases of Yeebo. </p>

<p>Cando is owned by a consortium of Taiwanese companies. It is
16.6% owned by <a href="http://www.teco.com.tw/" target="_blank">Teco Electric
&amp; Machinery Co Ltd</a>, which makes electric motors and air conditioners,
16.29% by <a href="http://www.apot.com/bizplaza/food/sanyo/english.htm" target="_blank">San
Yo Pharmaceutical Co Ltd</a>, and 6.06% owned by <a href="http://www.vcfortune.com/" target="_blank">Fortune
Venture Investment Group</a>. The &quot;Management Team&quot; of Cando own
14.96%. </p>

<p>The gross proceeds of $140m were intended by Yeebo to
&quot;upgrade the existing production facilities of, and to provide general
working capital to, the group&quot;. </p>

<p>The subscription was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010108/LTN20010108015.doc" target="_blank">approved</a>
by shareholders on 5-Jan-01 and completed on 12-Feb-01. Dr Harry Ling, Chairman
and CEO of Cando, <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010502/LTN20010502070.doc" target="_blank">became</a>
an executive director of Yeebo on 26-Apr-01. Cando's CFO, Daniel Chen Chin Tung,
became a non-executive director on the same day. </p>

<p>As a result of the subscription, Yeebo is now cash-rich and
ready for expansion. At 31-Mar-01 it had net cash of about $164m, or about $0.161 per share,
and trades at $0.34, close to the net asset value of $0.345 per share. </p>

<p>Let's just hope that this time, the new management stays clear
of hotels in Chengdu. One thing they might consider is expansion in their own
industry. A local listed company in the same sector is <a href="http://www.kessel.com.hk/">Kessel
International Holdings Ltd</a> (<b>Kessel</b>), which recently ran into <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010608/LTN20010608030.doc" target="_blank">working
capital problems</a> from over-expansion. It makes <a href="http://www.kepodisplay.com/" target="_blank"> LCD panels
</a> and modules, PDAs (including its own
Linux palm-top through wholly-owned <a href="http://www.agendacomputing.com/" target="_blank">Agenda
Computing</a>) and digital cordless phones, both of which consume LCD panels.
Kessel's shares has been suspended for several months awaiting a rescue plan. Another possibility is an injection of Cando into Yeebo,
if it is seeking a
listing. </p>

<p><i>Note: for the purposes of disclosure, </i>Webb-site.com<i> editor David Webb has a shareholding
in Kessel.</i> </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=13850">Cando Corporation</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5416">Deloitte Touche Tohmatsu (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4946">Qingdao Holdings International Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3782">YEEBO (INTERNATIONAL HOLDINGS) LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=13849">Chu, Allan Chi Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=5132">Fang, Kenneth Hung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=3781">Hui, Makie Po Yuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13840">Hui, Wing Ching</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13844">Lam, Kelvin Kam Cheung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13843">Li, Frankie Kwok Wai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13838">Marshall, Rue Steel Jr</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13851">So, Kin Keung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=13839">Suzuki, Harry Shizuo</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6609">Tien, James Pei Chun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=827">Wong, Sun (1946)</a></li>
				
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