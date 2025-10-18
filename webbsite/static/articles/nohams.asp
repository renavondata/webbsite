
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

<script type="text/javascript">document.title="Government Rejects HAMS Proposal";</script>

	<div class="summary">In a dark day for corporate governance reforms, the Hong Kong Government has rejected the HAMS Proposal to establish an investor representation group. Without enabling legislation for a levy on investors' trading, there will be no funding and no HAMS. The news comes despite widespread endorsement from market participants who want investor representation, rights enforcement, and a higher quality market.</div>

<h2 class="center">Government Rejects HAMS Proposal<br>
<span class="headlinedate">24 April 2002</span></h2>
<p>Well, we tried. Over a year ago, we produced a <a href="hams.asp" target="_blank">proposal</a>
to establish the Hongkong Association of Minority Shareholders (<b>HAMS</b>)
which would have put Hong Kong at the forefront of Asian corporate governance. </p>

<h3>Background</h3>

<p>The HAMS Proposal includes a Policy Division to analyse the
legal and regulatory framework and represent investors in the corporate governance reform
process; an Appraisal Division to provide comprehensive and continuous corporate
governance scoring and voting recommendations for all listed companies; and an
Enforcement Division to conduct quasi-class actions, providing a civil financial
deterrent to fraud and abuse of public shareholders, bringing the currently
unaffordable legal remedies within reach of investors. </p>

<p>Professionally staffed and open to all investors for a nominal
membership fee, HAMS would be principally funded by a 0.005% &quot;Good
Governance Levy&quot; on market transactions, to make it a fair user-pays system
based on the degree of participation in the markets. Only with that level of
funding would HAMS be viable, which is why the market will not see spontaneous
and sustained formation of investor groups without it. HAMS would practice its
own good governance, with a Board of Governors elected by an estimated 50,000
investor members (half elected by individual members and half by institutional
members). The levy and other aspects of HAMS would requires enabling
legislation, which in practice requires Government to endorse it. </p>

<p>We won't repeat all the details of the <a href="hams.asp" target="_blank"> proposal</a> here, suffice to
say that a wide range of market participants publicly <a href="../HAMS/thelist.asp" target="_blank">endorsed</a>
the proposal, including leading asset managers and trustees, financial media,
investor relations firms and professional associations. Privately, support for
the proposal was even greater. </p>

<h3>Rejection</h3>

<p>The Government's rejection appears largely to be based on the
views expressed by the Standing Committee on Company Law Reform (<b>SCCLR</b>),
a government-appointed committee which has been working on law reform since
1984.
In a recent e-mail to <i>Webb-site.com</i>, Deputy Secretary for Financial
Services, Ms Susie Ho Shuk-yee (<b>Ms Ho</b>) wrote: </p>

<blockquote>

<p>&quot;in the light of the views expressed by members of the
SCCLR,
we are not in a position to take the HAMS proposal forward, in its present form.
As at present advised, it is unlikely the HAMS proposal will form part of
SCCLR's recommendations in its forthcoming consultation paper as part of the
corporate governance review.&quot; </p>

</blockquote>
<p>This is incredibly ironic. One of the three key purposes of HAMS was
to provide, through the Policy Division, investor representation in the policy-making
process, which is
presently dominated by issuers, their advisers and the advisers' associations.
The SCCLR contains not a single investor representative.
If HAMS (or something like it) ever existed, then it would claim a seat at the
SCCLR and other tables and be the authoritative voice of tens of thousands of investors,
large and small. </p>

<p>The latest <a href="http://www.info.gov.hk/cr/download/notice/17anrep.pdf" target="_blank">annual
report</a> of the SCCLR for the year to 31-Mar-01 was published on 7-Dec-01 (so much for prompt disclosure),
and we thought as a
demonstration of how policy-making works in Hong Kong, you should know who,
according to that report, sits on the SCCLR and their affiliations.&nbsp; Apart
from &quot;ex-officio&quot; members, who are there because of their role in the
Government or regulatory bodies, there are 12 outsiders appointed by the
Government. These are all fine upstanding members of the community, but not a
single one of the 12 represents primarily investor interests. Their biographies
are not stated in the SCCLR report, but as far as we can
tell from public information, they are: </p>

  <table class="txtable center">
    <tr>
      <td>Roger Best</td>
      <td>Partner of <a href="http://www.deloitte.com.hk/" target="_blank">Deloitte
        Touche Tohmatsu</a>, auditors to over 200 HK-listed companies. Council
        member of the Hong Kong Society of Accountants.<br>
      </td>
    </tr>
    <tr>
      <td>Henry Fan Hung-ling</td>
      <td>Managing Director of <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020404/267/EWF106.pdf" target="_blank"> CITIC Pacific
        Limited</a>, a member of the Hang Seng
        Index (<b>HSI</b>).<br>
      </td>
    </tr>
    <tr>
      <td>Betty Ho May-foon</td>
      <td><a href="http://www.hku.hk/law/dept/bh.html" target="_blank">Associate
        Professor</a>, University of Hong Kong and former corporate lawyer.<br>
      </td>
    </tr>
    <tr>
      <td>Angelina Lee Pui-ling</td>
      <td>Partner of leading local law firm <a href="http://www.wkll.com/" target="_blank">Woo
        Kwan Lee &amp; Lo</a>, non-executive director of Henderson Land
        Development Co Ltd and Cheung Kong Infrastructure Holdings Ltd (both in
        the HSI) as well as Tom.com Ltd and Kerry Properties Ltd. Her firm is
        legal adviser to about 100 listed companies.<br>
      </td>
    </tr>
    <tr>
      <td>Winston Poon</td>
      <td>Barrister.<br>
      </td>
    </tr>
    <tr>
      <td>Richard Thornhill</td>
      <td>Partner of leading corporate law firm <a href="http://www.slaughterandmay.com/profiles/partners/Richard_Thornhill.htm" target="_blank">Slaughter
        and May</a>, who are lawyers to Orient Overseas (International) Ltd, Liu Chong
        Hing Bank Ltd and others.<br>
      </td>
    </tr>
    <tr>
      <td>Alvin Wong Tak-wai</td>
      <td>Partner of <a href="http://www.pwchk.com/" target="_blank">PriceWaterhouseCoopers</a>, auditors to
        around 200 listed companies (not counting the <a href="http://www.pwchk.com/home/eng/pr_210302.html" target="_blank">Andersen</a>
        clients they are about to inherit). President of the HKSA.<br>
      </td>
    </tr>
    <tr>
      <td>Ian Perkin</td>
      <td>Chief Economist of the <a href="http://www.hkgcc.org.hk/" target="_blank"> Hong Kong General Chamber of
        Commerce</a>, the largest business organisation in HK, so powerful that it has its own seat in the
        Legislative Council. It recently boasted that its members sit on over 30
        government committees.<br>
      </td>
    </tr>
    <tr>
      <td>Randolph G Sullivan</td>
      <td>Executive Director of <a href="http://www.daoheng.com/jf00.htm" target="_blank"> Dao Heng Bank Group
        Ltd</a>, a member of the HSI
        until it was taken over by Development Bank of Singapore.<br>
      </td>
    </tr>
    <tr>
      <td>Peter Wong Shiu-hoi</td>
      <td>Managing Director of local brokerage <a href="http://www.taifook.com/" target="_blank"> Tai Fook Securities Group
        Ltd</a>, which is controlled by the Cheng family and their New World
        Development Co Ltd, member of the HSI.<br>
      </td>
    </tr>
    <tr>
      <td>Michael W Scales</td>
      <td>Secretary of <a href="http://www.hsbc.com.hk/hk/about/report.htm" target="_blank"> The Hongkong and Shanghai Banking Corp
        Ltd</a>, the largest
        bank in Hong Kong, owned by HSBC Holdings plc, a member of the HSI.<br>
      </td>
    </tr>
    <tr>
      <td>William Tam Sai-ming</td>
      <td>A manager in the Company Secretarial department of
        <a href="http://www.shkp.com.hk/eng/investor/report/download/ar2001/F122.pdf" target="_blank"> Sun Hung Kai
        Properties Ltd</a> (a member of the HSI).<br>
      </td>
    </tr>
  </table>
<p>The SCCLR is chaired by Court of Appeal judge <a href="http://www.info.gov.hk/gia/general/200007/28/0728190.htm" target="_blank">Anthony
Rogers</a>. </p>

<h3>Accountability?</h3>

<p>The Government's Ms Ho wrote in her e-mail: </p>

<blockquote>
  <p>&quot;Members of the [SCCLR] expressed the view that
  whatever merit there might be in some aspects of the HAMS proposals there was
  a fundamental difficulty in respect of the accountability of the body to be
  set up as to the use of public monies.&quot; </p>

</blockquote>
<p>You have to admit, when it comes to accountability for public
money, that's rather a rich comment from an unelected Government whose Chief
Executive is selected by a business-dominated committee of 800 people. And in
any case, for the levy we are talking about investors' money, not general taxpayers money. </p>

<p>The question of accountability comes despite the fact that HAMS
would be accountable to any investor who chooses to join for a nominal (or
potentially no) fee, and participate in electing the governing body. An
estimated 50,000 members (10% of retail investors and 80% of institutions) would
join in the first year. That's probably a larger constituency than any functional
constituency in the Legislative Council. So if HAMS is not accountable, then who
is? </p>

<p>We also proposed that the Chief Executive of HAMS would report
to LegCo on its progress at regular intervals, just as Alan Greenspan reports to
Congress, since LegCo would have the power, through legislation, to both enable
and disable the Good Governance Levy which funds HAMS. An additional check we
proposed was to have non-voting observers from the Consumer Council, the SFC,
the MPFA and Legislative Council on the Board of HAMS. </p>

<p>Let's be honest. Accountability of HAMS is not the real issue -
we've got more checks and balances in this proposal than in a space shuttle
launch. The real accountability issue is the accountability of the big business
plutocracy,
which wants to preserve the status quo of minimal investor rights, no class
actions, and exclusion of investors from policy making, whether it is the
listing rules, accounting standards, company law, securities law, minimum
brokerage commissions or anything else. </p>

<p>At present, in the football match that is corporate governance
reform, we have the big business team on one side of the field, the government
referee wearing business colours, and an undefended open goal where the investor
team should be. </p>

<h3>Behavioural Finance</h3>

<p>Does Hong Kong really want shareholder participation in
governance? Or do they really think that the status quo of minimal deterrent to
bad governance will allow us to achieve a high quality market? </p>

<p>The behaviour of humans, like any other species, is motivated by reward and
deterred by penalty. There's no question that the financial rewards of ripping
off investors can be great. So what is the deterrent to abusing minority shareholders?
There is very little chance of having to pay damages to investors when there is no
class action system, no contingent fees, and lawyers who cost the Earth. Most
shareholders simply can't afford to exercise their legal rights.</p>
<p>There is very little chance of meaningful regulatory action either - a
controlling shareholder and director may get a slap on the wrist from the Stock
Exchange or a reprimand or cold shoulder order from the SFC. No financial
deterrent there. And almost no chance of going to jail - even if you are one of
the handful who get prosecuted, the jury normally won't understand the case,
which by then happened years ago, or you'll get off on a technicality.</p>
<p>We can't turn people into saints - we can only deter them from abusing
their shareholders, to offset the financial rewards of doing so. Currently the
rewards of abuse are great and the deterrent is minimal.</p>
<h3>So what next?</h3>
<p>The HAMS Proposal, for now at least, is dead. No levy, no show. We are not
about to try and launch it from our spare bedroom on a shoe string. <i>Webb-site.com
</i>is done that way, but there's no way we can do more than scratch the surface
of the problem. The Government has declined even to issue a formal market
consultation on the proposal, perhaps in the knowledge of how much
investor-based support it would receive, as indicated by our initial endorsement
list.&nbsp;</p>
<p>HAMS has no shelf life, and can be enabled any time the Government
reconsiders. In a controlled-company market, we see no other way to leapfrog to
the level of investor involvement seen in diversely-owned markets such as the UK
and US.</p>
  Hong Kong is the loser in this decision, as its cost
  of capital and &quot;governance discount&quot; will remain high so long
  as the poor quality of the market deters good companies and discerning
  investors from using it. The bad drives out the good. California's giant
pension fund CalPERS <a href="http://www.calpers.ca.gov/whatsnew/press/2002/0220a.htm" target="_blank"> withdrawal</a> from
  4 regional markets of even lower quality is just the tip of the iceberg and
  should serve as a warning sign that investors are losing patience with
  governments who are unwilling to upgrade their market framework and who
  continue to put form over substance in their proposals.
<p>Faced with this,
  capital votes with its feet, not just among stocks, but among markets.
It may not be as public as a complete
  withdrawal, but global capital allocations of long-term capital are
  increasingly selective of governance standards. No amount of begging for hot
money from the mainland will solve that fundamental problem.</p>
<p>To all of the organisations who publicly endorsed the HAMS Proposal, and to
all the individual investors who sent messages of support, we say a big thank
you for standing up and being counted. We're sorry it didn't work out.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=17333">HKSAR Standing Committee on Company Law Reform</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=111">Class action rights</a></li>
				
				<li><a href="/dbpub/subject.asp?c=148">HAMS proposal</a></li>
				
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