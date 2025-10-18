
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

<script type="text/javascript">document.title="HAMS - Representing Minority Shareholders";</script>

	<div class="summary">Webb-site.com outlines our proposal for filling the vacuum of shareholder activism in Hong Kong. Investor rights are only of value if shareholders exercise them, and we explain how HAMS - the Hongkong Association of Minority Shareholders, would lobby for those rights, exercise them on members' behalf in quasi-class actions, and through Corporate Governance Ratings, incentivise good governance and deter shareholder abuse. Hong Kong can only maintain its regional financial market status and economic competitiveness if this void is filled. We'll also tell you how you can help.</div>

<h2 class="center">HAMS - Representing Minority Shareholders<br>
<span class="headlinedate">4 March 2001</span></h2>
<p class="revisedate">Latest update: 1st July 2001</p>

<p>Long time readers of <i>Webb-site.com</i> will know that one of
our main focuses is on bad corporate governance (<b>CG</b>) and explaining how
it can be improved. We've been encouraged by the depth of positive feedback and
growth in our newsletter mailing list which clearly tells us we're on to
something. Hong Kong's investors <i>do </i>care about the way companies treat
them, and they <i>are</i> frustrated by the degree of minority abuse which
pervades the market. </p>

<p>At the same time, the few companies that strive to upgrade their
CG standards find themselves struggling for recognition against the discounts
that professional investors apply to HK stocks for the risks of bad CG.
When you are a nugget of gold in a river bed, it is hard to be found, and even
when you are found, the prospector cannot be sure he isn't seeing fool's gold.
The legal and regulatory framework still permits companies to change their mind
and revert to bad behaviour. </p>

<p>We will not repeat in this article the many systemic problems
that investors face. For that, read our many articles in the <a href="./" target="_blank">archive</a>.
Instead, we will explain: </p>

<ul>
  <li><a href="#activism">Why shareholder activism is rare in HK</a></li>
  <li><a href="#compete">Why good CG is important to HK's competitiveness</a></li>
  <li><a href="#HAMS">How HAMS can advance the interests of minority shareholders at the same time
    as boosting HK's competitiveness</a></li>
  <li><a href="#help"><b>How you can HELP</b></a></li>
</ul>

<h3 id="activism">Why shareholder activism is rare in HK</h3>

<h4>Practical powers </h4>

<p>In those Western markets with the current highest standards of governance
(which does not mean they are perfect), there is a pattern of wider share
ownership. As a consequence of their particular histories, most public companies
in the USA and UK do not have a controlling shareholder. As a consequence,
public shareholders can and do exercise oversight of corporate policy. As a
result of their voting powers, groups of institutional and retail investors
spontaneously form, and exercise their votes so as to guide and shape policy in
the boardroom. In the extreme, if directors do not perform, then shareholder
pressure removes them. This is an important market discipline. </p>

<p>By comparison, in HK and most of Asia, most companies
have a controlling shareholder or group of shareholders. In HK these controllers
are
normally either families or, for mainland entities, the various arms of the
State. In either case, the ability of minority shareholders to achieve anything
in general meetings is almost nil. </p>

<p>In addition, in the USA shareholders can instruct lawyers on a
contingent fee basis (no win, no fee), which lowers the barriers to pursuing
legal action, and claims can also reach class action status, representing a much
larger group of shareholders affected by the matter under claim. From a
practical point of view, individual owners of HK stocks, including institutional
investors, normally cannot
afford to go to court to enforce their rights. Even the first round of a claim
may cost more than their investment. </p>

<p>There are essentially two approaches to improving CG - the &quot;top-down&quot; approach, at a legislative and regulatory
level, and the &quot;bottom-up&quot; approach, by using existing rights at the
shareholder level. In the US and UK, the bottom-up approach is already
effective, but in HK, rights at the shareholder level are too primitive
for this to be effective. You can make noise in shareholders' meetings, but you
will normally be outvoted by controlling shareholders. </p>

<p>So we need a top-down approach to reform, but shareholders lack
the co-ordination, resources and time to pursue reform from the top-down. </p>

<h4>Short term and relativistic investment </h4>

<p>In the retail market, HK investors are famous for their
short term outlook. They often trade on rumour, lacking access to the facts, and
they attempt to avoid bad governance by holding stocks for only a few hours or
days. Many investors regard the stock market as little more than a casino, and
it is indeed ironic that the Government is currently trying to outlaw
internet-based casinos at the same time as the full blast of deregulated
commissions and the new AMS/3 internet-enabled trading system are about to hit
the HK market. Placing your bets will be easier than ever before. </p>

<p>Having said that, if the CG quality of the market were raised,
the perceived risks of holding for the long term would be lowered, and more
retail investors would start to see the potential of the market as a sensible
place for long-term savings. This is even more important now that the Mandatory
Provident Fund requires almost every working person in HK to invest in the
markets for the long term. </p>

<p>So what about the institutional market? The economic history of HK
and Asia (ex-Japan) means that there is an underdeveloped
institutional long-term savings market. In Western economies, a large part of
the market ultimately belongs to long-term investors such as the beneficiaries of
pension funds, life insurance and college endowment funds. By their nature,
these people care about absolute returns over long periods of time, and they
object to bad governance which reduces these returns. That provides a motivator
for them to speak up, and we see people such as the <a href="http://www.calpers-governance.org/" target="_blank">California
Public Employees Retirement System</a> (Calpers) making their voice heard. </p>

<p>In the UK, it is estimated that the members of the <a href="http://www.napf.co.uk/investment.htm" target="_blank">National
Association of Pension Funds</a> and the <a href="http://www.abi.org.uk/" target="_blank">Association
of British Insurers</a> together own as much as 40% of UK listed equities. That
gives them a strong influence in setting the rules for matters such as
pre-emption rights (over the issue of new shares for cash) and share option
schemes. </p>

<p>By contrast, Asian-based long-term institutional investors are
still only a small part of the investor base. Most of the rest tend to focus on
&quot;relativistic&quot; performance targets, such as their performance relative
to a market index, or their performance relative to their peers. Since all
investors, and the market indices, are affected fairly evenly by bad CG, this
does not really affect their relative positions, so improving CG is not a
priority. Instead, they all discount prices they are willing to pay to reflect
the risk of bad CG. </p>

<p>Even those long-term &quot;absolutist&quot; Western investors
tend to regard the small Asian part of their portfolio (typically 5%) as the
&quot;spice from the East&quot; and price the stocks at a discount to reflect
the risk, rather than fight for better
CG. But Asian governments should note that, if their markets had better CG, they
would attract higher prices and earn a higher percentage weighting in Western
portfolios. Quality attracts. </p>

<p>A recent <a href="http://www.gcgf.org/docs/72CGBrochure.PDF" target="_blank">survey</a>
(PDF) by management consultant <a href="http://www.mckinsey.com" target="_blank">McKinsey
&amp; Co</a>, partly funded by the World Bank, indicated that investors would
pay an average premium of between 18-27% (depending on the country) for a
well-governed company over a badly governed but otherwise identical company.
Unfortunately China and HK were not in this survey, but you won't be surprised
to learn that the average premium on good CG was highest in Indonesia and
Venezuela (27%) and lowest in the US (18%) with several Western European
countries close by. Of all investors surveyed, over 80% said they would pay a
premium for good CG. </p>

<p>In HK, the Mandatory Provident Fund scheme will gradually
increase the focus on the long-term returns, but it will not be a material amount for
many years, and even then, much of it will be managed by the fund management arms of
commercial and investment banks, which brings us on to: </p>

<h4>Conflicts of interests </h4>

<p>With the occasional welcome exception, such as independent fund
manager Templeton, fund managers largely keep their mouths shut and their
complaints to themselves. In private, a lot of them will voice sympathies, and <i>Webb-site.com</i>
receives a steady flow of them, but in public, they keep quiet. Why? </p>

<p>The basic reason for the silence is conflicts of interest. Many fund managers are affiliated to
commercial or investment banks, whose profits depend in part on their banking
business with the same companies in which the funds invest. You don't win
mandates by criticising your clients. This is the same conflict that is at the
root of much of today's broker-led investment research. </p>

<p>In addition, even those fund managers which are independent of the
banks face difficulties. In a market with inadequate corporate disclosure, they
often depend on access to the management of companies for their information.
They may make complaints in private to these management, but any public
criticism of the companies is likely to see them shut out, and scraping around
the market for information like everyone else. The &quot;company visit&quot; is
often a fund manager's greatest asset. </p>

<h3 id="compete">Why Good CG is important to HK's Competitiveness</h3>

<p>Over the next few months, as support grows for our proposal, you will
probably hear some vested interests, particularly in the plutocracy, trotting out
specious <i>laissez faire</i> claims that HK does not need reform, that the
markets work well, and that HAMS should not be given any government endorsement.
<i>&quot;There's too much corporate governance already&quot;</i> one businessman
was recently quoted as saying. </p>

<p>Don't believe a word of it. It is no coincidence that the
long-run average p/e ratio of HK is so much lower than the USA or UK. Our stocks
are discounted for their risk. </p>

<p>If you control and run one of the major HK-listed blue chips,
then you are indeed very happy with the <i> status quo</i>. You seldom need to tap the
equity markets, and you can rely on the fact that many fund managers hold your
stock not because you have good CG, but because you are in the benchmark index.
If you need to raise equity, then you put on your best behaviour for a few months
or even a year, open your doors to transparency, hit the roadshow circuit and
allow your investment bankers to put out optimistic research reports promoting
your stock. Then once you've raised that equity, you can lapse back into bad
behaviour and set about expropriating as much of the new equity as the legal and
regulatory framework allows. That's how the game is played. </p>

<p>But what about the newcomers to the market? How is HK going to
finance its growing emerging companies, that will power us forward into the
nirvana and white heat of technology that the Government has in mind? </p>

<p>At present, the answer is that these companies will be financed
expensively (with low p/e ratios for bad CG risk) or not at all. If other
markets raise their CG standards, then this will attract investors, which will
attract issuers in a virtuous cycle. </p>

<p>HK cannot go back to making plastic flowers and Christmas crackers. We are now a service and financial centre, and we need to maintain our
lead in Asia and mature into the &quot;World-class financial centre&quot; in
&quot;Asia's World City&quot; that
the government aspires HK to be. To reach that maturity requires amongst
other things, a long process of fundamental CG reform. And if we don't do it,
then another market will, and Hong Kong will be the loser. </p>

<p>Much investor interest has focused on the entrance of foreign
investors to China's protected markets after it joins the World Trade
Organisation (WTO). Many of these foreign companies will be from markets with higher
governance standards, were the cost of capital is lower. HK companies will be at
a competitive disadvantage in the mainland if their costs of capital are not
reduced to Western levels. </p>

<h3 id="HAMS">Catalysing Activism - the HAMS Initiative</h3>

<p>The proposed Hongkong Association of Minority Shareholders is designed to
fill the void of shareholder activism in HK. It would admit any
individual or institutional investor or potential investor as a member, both
local and overseas, and would operate in three key
areas: </p>

<ul>
  <li><b>Policy </b>- to promote and
    lobby for improvements to the legislative and regulatory framework for
    investment.</li>
  <li><b>CG Ratings</b> - to incentivise
    good CG and deter bad CG, by means of a comprehensive and objective CG
    rating system</li>
  <li><b>Enforcement</b> - converting the
    framework into a meaningful deterrent to bad CG, by quasi-class action
    litigation of the worst cases on behalf of investor members.</li>
</ul>
<h4>Governance of HAMS</h4>
<p>Direct charges for membership of HAMS would be designed to cover solely
the cost of communications with members. Keeping the entrance fee low will attract as broad a
participation of the
public investors as possible. A rough annual fee might be HK$100 for individuals and
HK$1,000 for institutions (corporates). Those individuals who wish to receive hard-copy mail
communications may be charged an additional $100 to cover postage and printing.</p>
<p>
We estimate there are at least 500,000 regular investors in HK's markets (both
local and overseas),
and would expect membership of at least 50,000 in the first 2 years, and more as
the benefits of HAMS begin to materialise. With those kinds of numbers, HAMS would be truly
authoritative and investors views would carry real weight in the CG reform
process.</p>
<p>The overall direction and policies of HAMS would be determined
by a non-executive <b>Board of Governors</b>. In order to be truly representative
of investors' wishes and accountable to investors, the Board of Governors <b>must</b> be elected by its members. To provide a balance
between the occasionally differing interests of individual and institutional
investors, half of the board would be elected by individual members and the
other half by corporate members. If HAMS were run by Government-appointed
directors, then it would be unable to fulfill its goals.</p>
<h4>Policy Division</h4>
<p>HAMS would promote and lobby for better laws and regulations to
protect investors. This is the &quot;top-down&quot; approach to reform, with the eventual
goal of establishing a framework which allows &quot;bottom-up&quot; action at
the shareholder level to have real effect. HAMS would seek the opinions of its
members, using the low cost of internet communication and internet polling as a
key tool. This provides a mechanism for conflicted fund managers and timid
retail investors to say what they really think through the anonymity of HAMS.</p>
<p>Proposals for structural reforms, and responses to other
proposals, would be produced by
a full-time professionally staffed <b>Policy Division</b> which would include
experienced lawyers, accountants and practitioners.</p>
<p>The Policy Division would interact with other players in the
corporate governance system. These players include the Government's Financial
Services Bureau, the Legislative Council, the SFC, the Stock Exchange, the Law
Society, the Society of Accountants, the Bar Association, the Institute of
Directors, the Chambers of Commerce, and so on. By bringing investor
representation into the system, HAMS would put the spark plugs in the engine of
market reform.</p>
<h4>CG Ratings Division</h4>
<p>HAMS would run a CG Ratings Division which would again
be staffed with experienced lawyers, accountants and investment professionals.
They would continuously assess each and every listed company with an objective scoring system
for various aspects of governance, including quality and frequency of
disclosure, dealings with related parties, independence and accountability of
directors and so on. One overall score would then be assessed.</p>
<p>Like credit ratings on debt, this system provides a &quot;carrot
and stick&quot; approach to CG. Good CG will be rewarded with a high score,
attracting more demand for the stock, and bad CG will receive a lower score.
Unlike credit ratings, CG Ratings will be comprehensive, all companies included.
When a major event occurs at a company, such as a takeover or a large
&quot;connected transaction&quot; with a related party, the CG Rating would be
reviewed, and otherwise it would be reviewed at least annually.</p>
<p>HAMS would explain the reasons for upgrades and downgrades, and
if its analysts believed that a company proposal was obviously against
shareholders interests, and if minority shareholders had the opportunity to vote
on the proposal, then HAMS would publish voting recommendations, increasing
shareholder turnout and responsibility.</p>
<p>The CG Ratings would be freely published, allowing any investor
to check on the rating of any company. Newspapers would add a new &quot;CG&quot;
column next to &quot;P/E&quot; and &quot;Yield&quot; in their stock listings.
Investors would begin to take more notice of CG risks.</p>
<p>The Policy Division would lobby the SFC
to require all authorised mutual funds (including MPF funds) for sale in HK to regularly publish the
average CG rating of their equity portfolio, so that fund holders can take it
into account when selecting a fund. This mechanism would help focus fund
managers' attention on the better CG stocks. If their portfolio has a low
average CG rating and if it under-performs, then the manager will be under pressure to
explain why they held these stocks.</p>
<h4>Enforcement Division</h4>
<p>Good laws and regulations, when we get them, are worth nothing
if they are not enforced. As we have explained, many of the existing and
promised rights of shareholders are practically unenforceable on the grounds of
legal costs.</p>
<p>The solution is the HAMS Enforcement Division. A team of
highly skilled lawyers and other professionals would use the shareholder rights won by
the Policy Division on behalf of all members. When you have 50,000 members or
more, you can be almost certain that several of them will have held any target
stock at any time in the past.</p>
<p>The division would target the worst cases of abuse, with the
highest chances of success, by claiming, and if necessary, suing, for damages. It would also leverage off the findings of any
Market Misconduct Tribunal under the new SFC bill, using these findings as
evidence. Once a case was in progress, HAMS could advertise for any member
who would be a plaintiff (having been a shareholder at the appropriate time) and
this would include anyone who joins HAMS to participate in the action. The
hundreds or even thousands of members would be represented by HAMS and would
receive a proportionate share of the damages recovered if the case was won.</p>
<p>In this
way, HAMS would achieve a quasi-class action without actually reforming the
entire legal system, and would overcome the costs of individual legal
representation. The size of the potential claims would then form a greater
deterrent to bad CG.</p>
<p>The Enforcement Division would press claims against companies
and their directors for bad governance, such as false and misleading statements,
breach of fiduciary duty, oppression of minority shareholders and expropriation
of assets. Like other units, the Enforcement
Division would be financed from the HAMS operating budget, but it would also
seek to recover its costs plus a surplus on those cases that it won.</p>
<p>The creation of a credible well-funded litigation deterrent will
deter bad CG and will increase the willingness of offenders to reach a
settlement without necessarily admitting liability.</p>
<h3>Funding HAMS</h3>
<p>Ah yes, there's always the question of money! Who's going to pay
for HAMS? The same people that benefit from it, that's who.</p>
<p>The functions of HAMS that we've outlined above do not come
cheap. If you want experienced professionals to perform the functions, you are
going to have to pay for them. But it will be a drop in the ocean compared to
the amount you lose each year through bad CG.</p>
<h4>The cost of bad CG</h4>
<p>On a conservative estimate, a typical investor might hold 20
stocks, with a weighting of 5% in each, and one of which suffers a major CG
failure which eliminates half of its value in a year, thereby taking the portfolio
down 2.5%. Of course, the effect is more subtle than that, with smaller
events affecting more than 1 in 20 stocks each year and occasional disasters
which wipe out 100% of a company. Anyone care for an Indonesian taxi loan?</p>
<p>Another way of looking at it is to look at the premium an
investor would pay for good governance. McKinsey's survey put that at 18-27%. So
take the mid-point and we have 23%. The only reason for the premium is the
perceived increase in stock value for better CG, which is a reflection of
discounted future earnings. If you assume a p/e ratio of 9x, they are in effect
suggesting that&nbsp; bad Governance takes away about 2.5% per annum. So we are
in the right ball-park.</p>
<h4>The cost of HAMS</h4>
<p>HAMS should be paid for by all investors, since they would all
benefit from a higher quality market, regardless of whether they join HAMS as
voting members. The
HAMS Policy Division would accelerate CG reforms, the CG Ratings would be freely
available, and the Enforcement Division would benefit everyone by creating a
credible CG deterrent and reducing investment risk.</p>

<p>Of course, on a dollar basis, large investors benefit more than
small investors, so it is fair that people should pay in proportion to their
investment size. Unfortunately, it is practically impossible to find out who
owns what, and unreasonable to expect shareholders to voluntarily disclose their
portfolio size and pay up. Any &quot;pass the hat around&quot; approach to
funding would create a distorted representation of interest groups while
allowing other investors (including hard-to-reach overseas investors) a
&quot;free ride&quot; on the reforms. </p>

<p>Therefore the fairest <i>practical</i> method is through a levy
on the market, which we propose be named the <b>Good Governance Levy</b> or <b>GG
Levy</b> for short. The volume which an investor trades is roughly proportional
to the size of their portfolio. Frequent traders would pay a little more
than long term investors, but no system is perfect. The Government has already
recognised the fairness of a levy by partly funding the SFC in this fashion. </p>

<p>The existing transaction costs for a buyer or seller on the
market are as follows: </p>

  <table class="numtable center">
    <tr>
      <td class="left"><b>Type</b></td>
      <td><b>Amount</b></td>
    </tr>
    <tr>
      <td class="left">Minimum commission</td>
      <td>0.250%</td>
    </tr>
    <tr>
      <td class="left">Stamp duty</td>
      <td>0.100%</td>
    </tr>
    <tr>
      <td class="left">SEHK trading fee</td>
      <td>0.005%</td>
    </tr>
    <tr>
      <td class="left">SFC levy</td>
      <td>0.005%</td>
    </tr>
    <tr>
      <td class="left"><b>Total</b></td>
      <td>0.360%</td>
    </tr>
  </table>

<p>We believe a reasonable funding level for HAMS would be afforded
by a <b> 0.005%</b> levy, or $1 for every $20,000 of purchase or sale. Part of this
would be used to accumulate a contingency fund, since market volume and value
fluctuates whereas operating expenses are more fixed.&nbsp; </p>

<p>If a Good Governance Levy is authorised, providing certainty of
income, then initial set-up costs of HAMS can easily be financed from bank or
government loans on commercial terms. </p>

<p>Based on market turnover in 2000 of HK$3,048bn, the levy would
have raised around $300m (since both buyer and seller are charged). Allowing for
a contingency of one third, this would leave room for an operating budget of <b>$200m</b>
(US$26m). A typical partner in a law firm in HK would earn HK$3-6m, while an
experienced solicitor would earn $1-2m, so this money does not go as far as you might think,
but you get what you pay for, and HAMS must pay the going rate if it is to
function effectively. </p>

<p>By way of comparison, the SFC's expenditure last year (to
Mar-00) was $403m, of which 5 directors earned more than HK$4m and the highest
paid director earned more than $6.5m. This is not a criticism of the SFC but a reasonable
benchmark for what good people cost.&nbsp; </p>

<p>There are now some 800 listed companies, so we are talking about
an average HAMS budget of just $250,000 per company. In terms of the market
value, that is currently around $5,000bn, of which about half is held by the
public. So the annual cost represents <b> 0.008% of the free float </b> value held by the
public. </p>

<p>As we have already estimated, bad CG costs investors upwards of
2.5% per annum, or more than 300 times the GG Levy. If HAMS can prevent just 10%
of these losses by incentivising better governance and deterring bad governance,
then the payback ratio for investors will be 0.25% per annum, or 30 times the GG
levy. That's a return on investment that you will seldom see in the market! </p>

<p>Consider it this way. If you have 30 years left to run on your
retirement scheme, and half of that money is going into local equities, then you
could lose 1.25% per annum, for an average of 15 years in which the money is
invested. That's <b>18.75%</b> off your retirement money. Ouch! </p>

<h3>Government Endorsement</h3>

<p>The Government's Chief Secretary, Donald Tsang (No.2 to the
Chief Executive), emphasised the need for better CG in his final <a href="http://www.info.gov.hk/fb/budget/budget01-02/english/efile.htm" target="_blank">budget
speech</a>  (scroll to section 66-68) as Financial Secretary in March. Mr Tsang
said in part: </p>

<blockquote>

<p><b>&quot;Our aim is to establish Hong Kong as a paragon of
corporate governance&quot;.</b> </p>

</blockquote>

<p><i>Webb-site.com </i> sees no chance of that paragon being
established without shareholder representation in
the process.&nbsp; </p>

<p>Some senior figures in Government and regulators are well aware
of the economic cost of bad governance, but find themselves offset by
powerful vested
interests who would have HK stand still as the World moves ahead with
better CG. To make substantive progress beyond lip service, the Government needs
a shareholder representative body in the debate. </p>

<p>Unfortunately, for the reasons we have explained, there is no
concerted shareholder voice, and it will not happen spontaneously in the foreseeable future.
Instead, we need Government to catalyse the reaction by endorsing enabling
legislation for HAMS. </p>

<p>A spokesperson for the Financial Services Bureau recently
commented: </p>

<blockquote>

<p><b>&quot;As the HAMS proposal is a novel idea... we would
welcome the views of the public on this proposal.&quot;</b> </p>

</blockquote>

<h4>Good Governance Levy </h4>

<p> To approve a levy on the
market, the Government will need to propose a bill to be passed by the
Legislative Council. </p>

<p>Government can seize the initiative in this proposal by making
room for the levy by a corresponding cut in stamp duty. The 0.005% Good
Governance Levy would amount to 5% of the current rate of stamp duty (as reduced
in the 2001-02 budget), but in dollar terms this would be revenue-enhancing because the permanently higher CG quality
that HAMS brings would lead to higher market
values for both existing listed companies and new entrants, and hence greater
value of turnover and greater stamp duty revenue. Better CG and higher prices
will attract some of the issuers and investors that would otherwise choose
different markets, also enhancing government revenue. </p>

<p>And by lowering the cost of capital, HAMS benefits the HK
economy too. So HAMS is a winning proposition to issuers, investors and taxpayers. </p>

<h4>Statutory immunity </h4>

<p>At the same time, in order to publish CG Ratings and criticise
companies without being sued for defamation when the score is bad, HAMS staff will
need the same statutory immunity that the staff of the SFC and Consumer Council
enjoy. Credit ratings agencies can avoid this by only rating
those companies which agree to be rated, but HAMS cannot, since otherwise
portfolio ratings would be impractical. </p>

<h4>Accountability </h4>

<p>Since the Good Governance Levy, and any change to it, needs the approval of
the Legislative Council, there is a direct mechanism of accountability to
Legislators. The Chief Executive of HAMS, and his or her senior colleagues as
needed, could appear before LegCo perhaps twice a year to give testimony to
lawmakers on the progress and activities of HAMS. </p>

<p>It would also be appropriate for the Board of Governors to
include a non-voting observer from each of the Legislative Council, the
Securities &amp; Futures Commission, the Mandatory Provident Fund Authority and
the Consumer Council. </p>

<p>HAMS would be an innovative style of semi-statutory body - that
is, its funding would be drawn from a statutory levy on investors' activity in
the market, so it would be accountable to LegCo for its funding, but the
governing body would be directly elected by (and accountable to) a membership
made up of investors. Any investor can join for a nominal fee, so anyone who is
paying the levy has a chance to express their views through HAMS. </p>

<p>By contrast, controlling shareholders, who already have their
representation in the corporate boardrooms, would pay very little of the levy
because they retain the bulk of their shareholdings throughout the year. </p>

<h3>Declaration of intent</h3>

<p>Don't get the wrong idea - <i>Webb-site.com</i>  Editor David
Webb has no intention
of designing himself a job. He would volunteer to serve the board of HAMS as a non-executive
governor (if elected) but HAMS would have to find someone more experienced and
qualified to be the CEO. </p>

<p><i>Webb-site.com</i> has almost reached the practical limit of
what one person with a web site and occasional helpers can achieve. A kitchen
group of part-timers, or a low-budget body with charitable funding and false teeth won't crack
this problem either. <i>Webb-site.com</i> can keep on regularly highlighting bad
governance and ways to improve it, but the functions and impact of HAMS would go way beyond
that. </p>

<h3 id="help">How you can help</h3>

<p>If you are at a senior level in an asset manager, listed
company, investment bank, brokerage, law firm, accountancy, financial media,
investor relations firm or any other market participant, then we need your
public endorsement of the proposal. A list is growing and your firm should be on
it! No financial sponsorship is involved. </p>

<p>The Government has made the right noises about shareholder
involvement in corporate governance, but it cannot oppose vested interests
without meaningful support from the market. If you want representation for
shareholders in the corporate governance system, then you must speak up. 
<a href="../contact/default.asp">Contact us by e-mail</a> for details on how to endorse the HAMS initiative. </p>

<p><i>Webb-site.com </i>Editor David Webb was appointed to
the Shareholders Sub-committee of the Standing Committee on Company Law Reform.
He will be promoting HAMS through that Sub-committee, and visiting other
interested parties to promote the proposal, but you can really make a difference
by giving your firm's endorsement. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=111">Class action rights</a></li>
				
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
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