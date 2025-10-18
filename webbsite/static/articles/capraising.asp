
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

<script type="text/javascript">document.title="Submission on Capital Raisings by Listed Issuers";</script>

	<div class="summary">Webb-site responds to HKEX's consultation which, while positive, ignores several key issues and does not go far enough in others. Have your say!</div>

<h2 class="center">Submission on Capital Raisings by Listed Issuers<br>
<span class="headlinedate">24 November 2017</span></h2>

<p>On 22-Sep-2017, <a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd
</a>(<strong>HKEX</strong>, 0388), owner of the monopoly Stock Exchange of Hong 
Kong Ltd, 
published a 
<a href="http://www.hkex.com.hk/-/media/HKEX-Market/News/Market-Consultations/2016-Present/September-2017-Consultation-Paper-on-Capital-Raisings-by-Listed-Issuers/Consultation-paper/cp2017092.pdf" target="_blank">consultation paper on
Capital Raisings by Listed Issuers</a>. In a controlled-company market like HK, 
few things are more important than pre-emptive rights and proper capital 
discipline. This is the submission of Webb-site.com. Readers, we need your 
support - see the <a href="#support">bottom of this page</a> to submit your views.</p>
<h3>Highly dilutive rights issues, open offers and specific mandate placings</h3>
<p>HKEX proposes to disallow rights issues, open offers and specific mandate 
placings that would in aggregate amount to a cumulative value dilution of 25% or 
more in any rolling 12-month period to those shareholders who do not take up the 
rights issue or open offer, or are not offered shares in the placement. This 
would, for example, allow a 1 for 1 rights issue at a 50% discount to market, or 
a 5 for 1 rights issue at a 30% discount.</p>
<p>We support this proposal, but it does not go far enough, because it pays no 
regard to the amount of liquid assets that a company already has or that may 
arise from such issues. A company with substantial amounts of net cash relative 
to its net tangible assets should not have any real need to raise equity capital 
and dilute the rate of return on equity. In our 3-Mar-2016 article, "<a href="shells.asp">Preventing 
cash shells</a>" (hereby included in this submission), we proposed that any 
company with net cash (broadly being cash plus financial assets minus debt) 
which exceeds a very generous 50% of net tangible assets (the "<strong>Cash 
Shell Limit</strong>") should not be permitted to issue equity for cash, and any 
notifiable transaction which would result in breaching the Cash Shell Limit 
(such as a major disposal) should be made conditional upon a distribution of the 
surplus. Further, any company which exceeds the Cash Shell Limit in its annual 
accounts should be required to propose a distribution of the surplus for 
minority shareholders' approval at the AGM (if not distributed by the board 
declaring a special dividend).</p>
<p>So, in addition to its proposed restriction, HKEX should also implement the 
Cash Shell Limit, subject to the normal market consultation. We are confident 
that you would receive widespread support for the Cash Shell Limit from 
investors large and small. No investor with whom we have discussed this proposal has opposed it. Indeed, with the Cash Shell Limit, highly 
dilutive issues would become rare anyway, because the cash raised by say a 5:1 
issue at a 30% discount would be 350% of market capitalisation and, unless the 
company is highly indebted or trading at a deep discount to net asset value, it 
would swamp the balance sheet and breach the Cash Shell Limit, so such issues 
would 
naturally be confined to situations of financial distress.</p>
<h3>Specific and General Mandate Placings</h3>
<p>Specific Mandate Placings (<strong>SMP</strong>) and general mandate placings 
(<strong>GMP</strong>) should be regarded as a distinct problem, because they 
are non-pre-emptive - that is, the shares are not offered to existing 
shareholders, so there is no way to avoid the dilution. It is not just a 
question of limiting the dilution to inactive shareholders, but preventing 
involuntary dilution of <em>all</em> independent shareholders.</p>
<p>Currently 
an SMP can be approved in a general meeting and a controlling shareholder is 
allowed to vote. The SMP is widely abused by issuers who seek to avoid the 
Listing Rules requiring independent shareholders' approval for a refreshment of 
the 20% annual general mandate (which is too large anyway). So if an SMP is 
allowed at all (see below), then controlling 
shareholders and executive directors should be prohibited from voting on SMPs.</p>
<p>SMPs and GMPs allow boards to choose shareholders, rather than shareholders 
choosing boards, so it corrupts the chain of corporate governance. That is 
particularly problematic when a board can park blocks of votes in friendly hands 
before making egregious proposals for "independent" shareholders' approval. This 
consultation does nothing to address the widespread opposition from investors to 
non-pre-emptive issues, and HKEX has done nothing about GMPs since
<a href="issuemandate.asp">abandoning</a> a consultation in 2009. 
When controlling shareholders are excluded from voting figures on general 
mandates, it is clear that independent shareholders (which includes employees and 
management-friendly votes) vote more than 2 to 1 
against the 20% mandate, but HKEX and its Listing Committee prefer to ignore 
that. For more on this issue, <a href="../subject.asp?c=173">click here</a>.</p>
<p>The UK <a href="http://www.pre-emptiongroup.org.uk/" target="_blank">
Pre-Emption Group</a>, with principles in effect since 1987, imposes an issue 
limit of 5% for cash placings in any 12 months and 7.5% in any 3-year period, 
with a maximum discount of 5%. UK companies need a special resolution with 75% 
of votes cast to approve that. UK-HK dual-listed companies such as
<a href="../dbpub/articles.asp?p=382">HSBC Holdings plc</a> (0005) and
<a href="../dbpub/articles.asp?p=824">Standard Chartered plc</a> (2888) comply 
with those rules.&nbsp; There is no evidence 
that this has in any way impeded UK corporate finance, but it does protect 
ownership rights.</p>
<p>In HK, the general mandate only needs a 50% approval and allows 20% in 12 
months or 72.8% (with compounding) in 3 years, and the discount is up to 20%. 
All of these parameters should be adjusted to UK levels, including the 
requirement of a 75% approval for the general mandate (a special resolution). 
Intra-year "refreshments" of general mandates after they are exhausted should be 
prohibited. A company can make a rights issue instead. Special mandates for 
placings should not be permitted by the Listing Rules unless a general mandate 
was not obtained at the previous annual meeting.</p>
<h3>Option scheme abuse</h3>
<p>We incidentally note that while share options for full-time employees with 
appropriate long-term vesting schedules can have a legitimate purpose, the 
Listing Rules on option schemes are far too wide and have become a conduit for 
back-door placings, with companies issuing options to exhaust the 10% limit and 
the options being exercised very soon afterwards. The rules should be amended to 
restrict board grants to full-time employees or directors of the issuer and its 
subsidiaries and set a minimum vesting period of at least 1 year. Any grants beyond this should be subject to specific shareholder approval, 
excluding controlling shareholders from the vote. The establishment or renewal 
of option schemes should also be subject to independent shareholders' approval, 
with anyone who may receive options from the scheme (including directors) prohibited 
from voting, as was the case before HKEX relaxed the rules in the early 2000s.</p>
<h3>Open offers</h3>
<p>HKEX proposes to require minority shareholders' approval for all open offers 
except for those that are made under the general mandate. In other words, those 
which are larger than 1 new share for every 5 share held, given that the general 
mandate is currently up to 20% of the existing issued shares.</p>
<p>We support this, but again, it does not go far enough. An open offer is an 
entitlement that is not transferable, so the holder cannot sell her entitlements 
in the market if she is unwilling or unable to subscribe for the new shares. Her 
only option is to sell the shares in the often-brief window before the shares go 
"ex-entitlement". For that reason, any substantial discount forces dilution upon 
the shareholder. We propose that the discount on open offers should be limited 
to 10%. If a company wishes to offer a larger discount, then it should make a 
fully transferable (renounceable) rights issue.</p>
<h3>Abolishing the underwriting requirement</h3>
<p>HKEX proposes to remove the mandatory requirement for all rights issues and 
open offers to be underwritten. We support this. It will save costs for 
companies and encourage them to use rights issues in preference to placings. In 
any event, underwriting is often not of real value as the exclusions for force 
majeure are often very wide. Let boards make a commercial decision on whether 
they really need to obtain underwriting or are willing to take a lower amount of 
cash if the issue is only partially successful.</p>
<h3>Requiring independence of underwriters</h3>
<p>HKEX proposes to require underwriters (if any) for rights issues and open 
offers to be SFC-licensed and independent from issuers and their connected 
persons, except that controlling shareholders may act as underwriters, provided 
that compensatory arrangements are made available for the unsubscribed offer 
shares and the connected transaction Rules are complied with. </p>
<p>Note: a "<strong>compensatory arrangement</strong>" is one which requires 
that any rights holders who do not subscribe are compensated by the issuer 
selling the related shares in the market (if a premium is obtainable) and 
sending the cash premium to the rights holders, to compensate them for the 
dilution.</p>
<p>&nbsp;HKEX also proposes to remove the connected transaction exemption currently 
available to connected persons acting as underwriters.</p>
<p>We support these two proposals, but as submitted below, the compensatory 
arrangement should apply in all circumstances. However, if you are going to permit 
controlling shareholders (with compensatory arrangement and independent 
shareholders' approval) to act as underwriters, then we see no reason why 
substantial shareholders (i.e. holding between 10% and 30%) should not also be 
permitted to do so on the same terms. The Takeovers Code contains requirements 
(the Whitewash procedure) for independent shareholders' approval if the 
underwriter may as a consequence increase its holding through the 30% threshold 
or by more than 2% between 30% and 50%.</p>
<p>This reminds us once again that HKEX shouldn't be making or administering the 
Listing Rules when the SFC already makes and administers the Takeovers Code. HK needs a Listing Authority under the SFC. For 
more on this issue, <a href="../subject.asp?c=140">click here</a>.</p>
<h3>Requiring compensatory arrangement</h3>
<p>HKEX proposes to require issuers to adopt either the "excess application 
arrangement" (<strong>EAA</strong>) or the compensatory arrangement for 
unsubscribed shares in rights issues or open offers. This does not go far 
enough. There is no circumstance when it is right to penalise inactive 
shareholders by diluting their economic value. That is theft by any other 
measure, whether it benefits the "underwriters" (when no system is used) or 
other shareholders (when the EAA is used). The EAA merely provides the 
opportunity for active shareholders to steal the value of rights belonging to 
the inactive shareholders, simply by applying for them, not at the market price, 
but at the subscription price.</p>
<p>For readers who may not understand this point clearly, let's give an example. 
A company with a share price of $5 proposes a 1 for 1 rights issue (1 new share 
for each share held) at $2.50 per share. The expected ex-rights price is then 
the simple average, $3.75 per share. The right to subscribe is therefore worth 
$1.25 per share. If the holder does not exercise or sell that right, then in an 
EAA he 
loses that value and his shares have lost 25% in value from $5 to $3.75. With a 
compensatory arrangement, he receives a payment of about $1.25 (less expenses).</p>
<p>The HK approach has been "you snooze, you lose". This is fundamentally 
wrong. Some shareholders are simply unaware of a rights issue, suffering from 
illness or on holiday or simply not informed by their bank or broker, or they 
have died leaving the shares in limbo (particularly if they did not leave a 
will). So the EAA amounts to theft from the absent, the ignorant, the sick and 
the dead, amongst others. It must end if HK is to be a world-class market, and 
the compensatory arrangement must be used in all circumstances, protecting the 
absent, the ignorant, the sick and the dead.</p>
<p>In paragraph 85 of the paper, HKEX suggests that the sale of unsubscribed 
shares in the market "may be disruptive to the share price, whereas an 
[EAA]...may allow long-term shareholders to take up the unsubscribed shares with 
less price disruption and benefit all shareholders". That is utter nonsense. 
Long-term shareholders are just as capable of buying the shares in the market as 
they are buying shares in an EAA. In any event it is well-known that EAAs 
attract short-term traders looking to benefit from the loss suffered by inactive 
shareholders, like vultures to a carcass. Having obtained shares in the EAA 
(often with only a nominal prior shareholding to qualify), they will then turn around 
and sell the shares in the market anyway, with the same market impact that the 
compulsory arrangement would have had.</p>
<p>The UK has for decades required the compensatory arrangement in all rights 
issues, without such 
difficulties. If the size of the unsubscribed rights is substantial, then it is 
usually because the market price has fallen below the issue price, in which case 
no premium can be obtained, and the underwriter (if any) is required to take 
them up. On the other hand, if the market price remains above the issue price, 
then most of the rights will be subscribed, leaving only a small "rump" to be 
sold in the market, so the impact is minimal.</p>
<h3>Disallow the use of general mandate for placing warrants and options</h3>
<p>We support this. There is really no good reason for placing warrants for cash 
or issuing "bonus warrants" anyway. A company either needs fresh equity or it 
doesn't, and it should not leave its capital structure to the vagaries of the 
market price, receiving equity only if the market rises above the subscription 
price before the warrants expire.</p>
<h3>Restrict general mandate placings of convertibles to a conversion price at 
or above market</h3>
<p>We support this. If an issuer puts a discount in the initial conversion price 
then it increases the likelihood of eventual conversion anyway and begs the 
question of why they didn't just issue equity. However, we are disappointed to 
note that even in this consultation paper, HKEX is already walking back from its 
proposal by contemplating a limit of 20% discount to market "in the event that 
this proposal is not implemented". </p>
<p>Convertible bonds in any event are a somewhat stupid form of corporate 
financing, because like warrants, they generally only get converted if the 
market price rises above a level that makes the bond more valuable if converted 
than redeemed, at which point the market price is often at a substantial premium 
to the conversion price and the issuer will wish it had issued just issued 
straight debt and later issued equity at that higher price. A convertible leaves 
the debt:equity capital structure of the company to be determined by the market 
price, rather than 
determined by the board. If the share price falls, then they may have to issue 
shares anyway in order to finance the redemption of the convertible bond at maturity.</p>
<p>Generally, if a company needs capital then it should choose between 
debt and/or equity based on what adds the most to shareholder value, rather than 
deferring the decision to later market conditions. Some issuers who have been 
pitched the idea that a convertible bond "avoids impacting the market price" are 
perhaps unaware that a large chunk of convertible bonds are taken by funds which 
simply strip out the equity component (the embedded call option) by borrowing a 
(delta-neutral) amount of shares and short-selling them, or by selling a 
corresponding call option to someone else.</p>
<p>There may be exceptions though, such a banks which issue "bail-in" bonds for 
capital adequacy reasons, which only convert in a crisis.</p>
<h3>Other amendments proposed by HKEX</h3>
<h4>Use of equity proceeds</h4>
<p>HKEX proposes to require greater disclosure of the use of proceeds from 
equity fundraisings in interim and annual reports. Such requirements (including 
disclosing the subsequent use of proceeds from an IPO) are artificial, 
because there is no distinction between dollars in the bank, whether raised from 
equity, from borrowing or received from sales of goods, services or assets. 
Imposing such specific requirements could have the unintended adverse 
consequence of compelling issuers to ring-fence proceeds in segregated accounts 
while at the same time raising other funds to execute plans not covered by the 
intended purpose of an equity issue. This leads to inefficient balance sheet 
management.</p>
<p>So it would be better to simply require issuers (whether or not they have 
recently issued equity) to clearly state (at least annually) their expected capital expenditure, 
both in quantum and description, and then to report back on the execution or 
variation of those plans in subsequent reports. At the same time, they should 
explain why they regard their current capital structure to be optimal for their 
business plans, both in terms of equity and debt, and if they do not consider it 
to be optimal, then what they intend to do about it.</p>
<h4>Disallow subdivisions or bonus issues if the price would be below a 
threshold</h4>
<p>HKEX proposes to disallow stock splits or bonus issues if the theoretical 
resulting share price would be below HK$1 or $0.50. Why not just prohibit them, 
unless the share price is close to the maximum allowed by the trading system of 
$9,995? They are of absolutely no value to shareholders and cause costs to their 
company which they ultimately bear. See our article
<a href="bonusplit.asp">Truly pointless bonus issues and splits</a>, 
27-Dec-2010.</p>
<p>The purported reason for splits and bonuses is often to "improve liquidity" 
but in reality it tends to do the opposite, pushing stocks down into a wider 
part of the spread table or increasing transaction costs by causing smaller 
board lot values where none is needed.</p>
<p>HKEX states in para 112 that "low price securities are likely to be more 
volatile, and their pricing is less efficient as each price tick represents a 
wider percentage price spread". Well, looking at the second half of that 
statement, the problem of the minimum trading spread is entirely one of HKEX's 
making - it sets the rules on prices, and
<a href="http://www.hkex.com.hk/-/media/hkex-market/services/rules-and-forms-and-fees/rules/sehk/securities/rules/sch-2_eng" target="_blank">
currently requires</a> a tick size of $0.01 from $0.50 to $10.00, resulting in a 
ridiculous 2% bid-offer spread for a share at $0.50. It only looks vaguely 
sensible above $5 when it becomes 0.2% or less. So we submit that if splits and 
bonus issues are allowed at all then the expected adjusted price should be at or 
above HK$5.</p>
<p>Readers with long memories will recall that when our editor, David Webb, was 
an elected INED of HKEX, he campaigned to cut the spread table, but was only 
partially successful, as vested interests who enjoy the race to be on the front 
of a wide bid-offer spread <a href="spreadout.asp">caused a U-turn 
in 2007</a>, leaving spreads below $5 much less efficient. This impedes turnover 
by causing buyers and sellers to queue up either side of a price at which they 
would be happy to trade if the rules would let them.</p>
<h4>Board lots</h4>
<p>But, you might be thinking, what about the problem of "expensive" board lots 
as prices rise? For the uninitiated, a board lot is the minimum multiple of 
shares in which investors can trade on the exchange. If it is too large in value, then it 
might deter smaller investors from buying the stock. Well, the inconvenient 
truth is that the average board lot is far too small. At 23-Nov-2017, the median 
board lot size for 2099 listed stocks was HK$3020, with 711 companies at or 
below $2000 per lot, and 319 of those at or below $1000 (about US$128,
<a href="../dbpub/mcap.asp?e=a&amp;t=s&amp;s=ltvup">daily data here</a>). The 
typical minimum brokerage charge of say HK$50 at 0.1% means that any trade below 
$50k is going to cost more than 0.1% in brokerage and more than 0.5% below $10k.</p>
<p>These small board lot values not only increase costs but make it cheaper for 
manipulators to fix the closing price by making a single-lot order just before 
the market closes.</p>
<p>Yet for decades and despite inflation, HKEX has left the minimum board 
lot value at IPO at just HK$2k (about US$256). Why? Because HKEX makes more 
profit that way. HKEX charges a "scrip fee" of HK$1.50 per board lot for the net 
increase in any balance in a clearing account between successive book closure 
dates (just before payment of dividends). So if you have purchased a board lot 
worth HK$2k, then the first time you get a dividend, HKEX will charge $1.50, or 
0.075% - which is more than some brokers charge to buy the stock in the first 
place. Also, HKEX gets a fee of HK$0.50 on each trade on the exchange (on top of 
the 0.005% trading fee), so if your buy order gets hit by a series of small 
sales (for example, 50,000 shares in 50 sales of 1 lot at $1000 per lot) then 
your broker will pay HKEX HK$25 or 0.05%. These scrip and trading fees go almost 
straight to the HKEX bottom-line profit before tax, and all of these costs 
ultimately get passed on to customers, either directly (sometimes marked up) or 
embedded in brokerage fees.</p>
<p>So, excessive board lot size, to the point of impeding trade, is rare. There 
are only 114 companies with board lots over $20k, and only 20 companies above 
$50k, if that is your measure. If a company wishes to reduce its board lot 
value, then it can do that simply by reducing the number of shares per board 
lot, without a stock split or a bonus issue. If the old board lot is an integral 
multiple of the new one, then it won't even create any "odd lots" as bonus 
issues often do. There isn't even any need to adopt the archaic "parallel 
trading" system that HKEX perpetuates as if we were still moving bits of paper 
around the city, as we did in the years BC (Before CCASS, 1993). Parallel 
trading was supposed to be abolished but was
<a href="http://www.hkex.com.hk/news/news-release/2008/080723news?sc_lang=en" target="_blank">
delayed indefinitely</a> in 2008.</p>
<p>That's what you get with a monopoly - wide trading spreads, excessive fees, 
protection of vested interests and a failure to reform or innovate.</p>
<h3 id="support">Have your say</h3>
<p>This submission is made on what may be the last day of the formal 
consultation (right after Thanksgiving), but even if the window is not extended, 
please drop an email to
<a href="mailto:response@hkex.com.hk?cc=contact@webb-site.com&subject=Re: Consultation Paper on Capital Raisings by Listed Issuers&amp;body=I%20agree%20with%20the%20submission%20of%20Webb-site.com.">
response@hkex.com.hk</a> with subject "Re: Consultation Paper on Capital 
Raisings by Listed Issuers", agreeing with this submission or stating your 
alternative views. Just click the email address to generate a prepared email. 
Your voice should count.</p>

<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13780">SEHK Listing Committee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=102">Bonus issues and stock splits</a></li>
				
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
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