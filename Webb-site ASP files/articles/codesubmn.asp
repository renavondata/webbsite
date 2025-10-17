
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

<script type="text/javascript">document.title="Takeover Code Consultation";</script>

	<div class="summary">This article contains the views of Webb-site.com on the SFC's review of the Takeover Code and Share Repurchase Code. We've fought for several of the proposals for a long time, and broadly welcome the paper. We also tell you where the SFC has gone wrong, and finally focus on a solution to the poor quality of so-called independent advice on takeovers and connected transactions. Read our views, decide whether you agree, then SUBMIT YOUR VIEW to the SFC using our special form.</div>

<h2 class="center">Takeover Code Consultation<br>
<span class="headlinedate">6 May 2001</span></h2>

<table class="txtable center">
	<tr>      
    <td>In this article:<br>
      <a href="#trigger">Trigger</a><br>
      <a href="#creeper">Creeper</a><br>
      <a href="#Transition">Transition</a><br>
      <a href="#Schemes">Schemes of Arrangement</a><br>
      <a href="#Delistings">Delistings</a><br>
     </td><td>
      <a href="#Repurchase">Share Repurchase Offers</a><br>
      <a href="#Top-up">Top-up Placings</a><br>
      <a href="#Unlisted">Unlisted companies</a><br>
      <a href="#Independent">Independent Advice</a><br>
      <a href="../forms/takeoverSubmit.htm"><b>SUBMIT YOUR VIEW</b></a>
     </td>
  </tr>
</table>
<p>On 10-Apr-01 the SFC <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=01pr39" target="_blank">announced</a>
the publication of a
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/consult/takeovers%20consultation.pdf">consultation
paper</a> on a review of the Codes on Takeovers and Mergers and the Code on
Share Repurchases. <i>Webb-site.com</i> has long campaigned for several of the
proposed changes and broadly welcomes the proposals, with a few exceptions. In
this article, we take you through the details, explain what it means to the
public investor, and we invite you to submit your own views to the SFC.
Your vote can make a difference!</p>

<h3 id="trigger">Takeover/Takeunder Trigger</h3>

<p>The most fundamental proposed change is to the
&quot;trigger&quot;, the shareholding level at which a person who acquires
shares must make a general offer. The proposal is to reduce the trigger to 30%
from 35%.</p>

<p>The purpose of the Trigger is to ensure that when someone buys
enough shares so that they effectively control the board of a company then they
must make a general offer to all other shareholders on the same terms. This is
number two in the &quot;ten commandments&quot; formally known as the General
Principles of the Takeover Code.</p>

<p>As we explained in our critical article <a href="takeunder.asp" target="_blank">HK's
Takeunder Code</a> (18-Dec-00) there are frequent cases in which someone pays a
very high premium over the market price for a 34.9% stake in a company, then
changes the board of directors, demonstrating that control has changed hands. We
called this procedure a &quot;takeunder&quot; because it ducks under the trigger
and avoids making a general offer.</p>

<p>We are delighted that the SFC has taken this point on board.
Time will tell whether 30% is low enough. There are people who believe that 25%
would be more appropriate, but we believe the 30% level should be tested for a
year and then we will see whether people are still willing to pay a
large premium for a 29.9% stake, and whether they can effectively control the
board at that level. If &quot;takeunders&quot; persist, then the SFC should take
another look at the trigger. Part of this depends on the extent to which other
shareholders mobilise our creaky voting system against 29.9% shareholders.</p>

<p>There will always be shareholders who fraudulently dodge the
Takeover Code by failing to disclose their holdings above the trigger, but we
doubt that the frequency of dishonesty is related to the level of the trigger,
rather it is related to the chance of getting caught and the likely penalty, in
other words, the deterrent. That's a whole different subject, and one which the
SFC Bill currently before the Legislative Council should go some way to
addressing in terms of greater powers of investigation for the SFC.</p>

<h3 id="creeper">Creeper</h3>

<p>The &quot;creeper&quot; sets a speed limit on the amount by
which a shareholder who has less than 50% (but more than the trigger) is allowed
to &quot;creep&quot; their shareholding upwards in any given period, which in HK
is currently 5% in 12 months. This obviously allows someone at just above the
current trigger of 35% to achieve majority (50%) control within 3 years. In
practice, this has not happened very often but we believe it should not be
permitted.</p>

<p>The age-old argument in HK has been that the creeper allows
controlling shareholders to &quot;make a market&quot; in their stocks, somehow benefiting
all humanity with increased liquidity. However, that argument is
flawed on several grounds:</p>

<ol>
  <li>Controlling shareholders should not
    support (or depress) a stock at a price which would not otherwise persist,
    since that is illegal and is known as making a &quot;false market&quot;.
    Incidentally, this is what the Government did by ramping stocks in August
    1998, although they declared sovereign immunity from the law.</li>
  <li>Given point (1), any shareholder
    who makes a bid-offer spread in his stock should see very little change in
    his overall holding, because if he finds he is materially increasing his
    stake, then that means his bid is being repeatedly hit, and he should lower
    his bid and offer the stock back to the market on the other side of the
    quote. If he fails to do so, and keeps increasing his stake, then he is
    supporting the price and making a false market.</li>
  <li>Controlling shareholders are very
    often directors of the company too, in which case they are required to
    disclose each and every transaction. But historic disclosure of directors'
    dealings shows a very low frequency of transactions by such persons - even
    the most active controller-directors do not trade daily. In fact, activity
    tends to come only in short bursts when they think a stock is too low or too high
    - in other words, they are not making a market for humanity but trading in
    their own self-interest.</li>
</ol>
<p>From point (2) we see that even a
generous shareholder who wishes to improve liquidity, should not need much
&quot;wiggle room&quot; to do so since his shareholding should not materially
change in the process. And from point (3) we see that this often-claimed liquidity-providing role seldom happens. The UK Takeover Panel in 1998 scrapped
the creeper altogether, having reduced it from 2% to 1% in 1993. There is no
evidence that this has measurably reduced liquidity in the UK market.</p>
<p>Monitoring the creeper is itself an
administrative headache since the SFC has to keep track of rolling 12-month
changes to controlling shareholdings of hundreds of companies in the
&quot;creeper zone&quot; between the trigger and 50%, to see whether anyone has
breached the speed limit. Changes in the numbers of shares in issue must also be
taken into account. This exercise is costly and we suspect the SFC in practice
relies on companies and their advisers to self-police.</p>
<p>The SFC proposes to cut the HK creeper
from 5% to 2% increase in any 12 month period. This is a step in the right
direction, since it makes it much harder to creep to control (it would take 10
years to reach 50% from 30%). However, we would favour scrapping the creeper
altogether (that is, setting it at 0%). Anyone who had more than the trigger
cannot increase their stake without making a general offer. This would greatly
simplify matters and reduce the monitoring burden. It would bring HK into line
with latest international practice.</p>

<h3 id="Transition">Transition provisions</h3>

<p>Whenever you move a trigger, there is the question of what
happens to shareholders who hold a stake which is less than the old trigger
(35%) and more than the new trigger (30%). They key problem is to avoid a rush
of people trying to get their stakes into the &quot;<a href="http://www.angelfire.com/ns/coolcraptvTZ/twilight_zone.mid">twilight
zone</a>&quot; of 30-35% before the new rule takes effect, thereby getting
themselves above the new trigger without ever making a general offer.</p>

<p>The SFC proposes that these shareholders be
&quot;grandfathered&quot; and permitted to move up to just below 35%, but
required to bid if their stake reaches or exceeds that. If they ever drop below
30%, then the new trigger would apply. The SFC proposes that the creeper would not apply so long as
they are in the twilight zone. The SFC is undecided about whether this
arrangement should last forever or for a fixed period of time, which they
suggest would be 10 years.</p>

<p>The problem with this method is that it incentivises everyone
who is currently below 35% to get up above 30% before the new rules come into
effect so that they are &quot;grandfathered&quot; and can bounce around in the
twilight zone unrestricted..</p>

<p><i>Webb-site.com</i> believes a better approach is that any
holder in the twilight zone at the implementation date should be
&quot;capped&quot; and should not be permitted to increase their stake without
making an offer. If they reduce their stake, then the cap reduces until it hits
30%.</p>

<p>If the creeper were scrapped, as we recommend, then this cap would
happen automatically. If the creeper is not scrapped, then our proposal in
effect means that the creeper should be 0% for anyone who is in the twilight
zone on the implementation date.</p>

<p>This is much fairer when you compare this with shareholders who
will be below 30% - they will be capped by the 30% trigger - so why should
others be rewarded with flexibility to increase by 5% in return for getting
above 30% before D-Day?</p>

<p>Our proposal is also fairer
when compared with shareholders who in future go through 30% and make an offer
which lapses. They would be stuck at 30% and subject to the 2% creeper. In that
case, why shouldn't the creeper apply to grandfathered stocks? At the very
least, the creeper should apply to grandfathered stocks too. So a shareholder at
30.1% on D-Day cannot increase beyond 32.1% in the next year without making an
offer.</p>

<h4>The right to know</h4>

<p>Whatever the SFC decides, it is important that any stock which
has a grandfathered shareholder should be clearly identifiable by the public.
Indeed, there has always been a problem for investors to know whether a
shareholder is &quot;capped&quot; by the trigger or creeper as part of a
&quot;concert party&quot; of shareholders. This is particularly difficult when
there is more than one family represented in the boardroom. It would increase
HK's transparency if information on any such grandfathers and concert parties
were required to be registered, and a list kept on the SFC web site and open to
the public. Then we would know where we stand.</p>

<p>In addition, such information should be disclosed in every
results announcement and annual or interim report of each affected company,
alongside the shareholding data.</p>

<h3 id="Schemes">Schemes of Arrangement</h3>

<p>The SFC proposes to amend the approval criteria (Rule 2.10) for
a privatisation by scheme of arrangement (<b>SoA</b>). An SoA is when a plan is
put to a vote, and if passed, then it is binding on everybody, resulting in a
100% takeover.</p>

<p>The current rule requires a 90% approval of those who voted,
together with a &quot;no&quot; vote of not more than 2.5% of the company. The
SFC proposes to replace that with a requirement for 75% approval of those who
vote (which is required by law anyway), together with a &quot;no&quot; vote of
not more than 10% of the public &quot;disinterested&quot; shares.</p>

<p>In addition, the rule will now apply not just to privatisations
but to any scheme of arrangement (except redomiciles which don't affect
shareholders' economic interests). This rule, if it had been in place last
summer, would have allowed minority shareholders much greater say in the PCCW
takeover of HKT, which used an SoA. In that deal, only about 3% of the public
bothered to vote because Cable &amp; Wireless, China Telecom and the HK Government
had about 75% between them, and only a 75% approval was required. As a result, a
lot of people got a lot of PCCW shares and had no choice in the matter.</p>

<p><i>Webb-site.com</i> is in favour of this proposal, because it
brings the SoA into line with the general offer method of takeover, whereby a
company cannot compulsorily purchase the outstanding shareholding unless it
reaches 90%. The SFC also proposes to make clear (in Rule 2.11) that this 90% is
calculated on the basis of public &quot;disinterested&quot; shares not&nbsp;
held by the offeror and its concert parties.</p>

<h3 id="Delistings">Delistings</h3>

<p>In our article <a href="hobsonschoice.asp" target="_blank">Hobson's
Choice on Privatisations</a> (14-Jan-01) we pointed out how some controlling
shareholders have used the very aggressive tactic of proposing a resolution to
delist the company while at the same time extending a mediocre privatisation
offer. The simple message was &quot;take the offer or get stuck with an unlisted
stock&quot;. They were taking advantage of the lower criteria (75% of those
voting) needed to approve a delisting compared with the level of approval or
acceptance needed in a privatisation.</p>

<p>We are pleased to see that the SFC has picked up on this point,
and proposes that delistings must be subject to the same approval criteria as
privatisations. However, this does not go far enough.</p>

<p>Apart from privatisations which result in 100% ownership by one
party (or group), there is no conceivable circumstance in which it is in the interests of
public shareholders to have a listing cancelled, as it strips them of regulatory
protection and a visible marketplace for their stock. Therefore the SEHK Listing
Rules (Rule 6.12 and the GEM equivalent) which allow this delisting should be
replaced with a simple rule which says: </p>

<blockquote>

<p>&quot;when <u>all</u> shareholders unanimously agree, then a
listing shall be cancelled&quot;. </p>

</blockquote>

<p>That would allow a person (or group of persons) who have bought
100% of the company to rightfully do what they like, because at that point it is
private. This change would still permit the possibility of a listed company
migrating to an overseas Stock Exchange using Listing Rule 6.11. </p>

<p>If the SFC does not agree with this, then the more logical way
of achieving what they propose is to amend the Stock Exchange Listing Rules (specifically rule 6.12
and the GEM equivalent) so that the privatisation criteria apply in any
circumstance in which a company is to be delisted and in which there is no
alternative listing.</p>

<p>This once again spotlights the fact that the SEHK listing
division should be brought into the SFC, but in the meantime the SFC should
require the SEHK to make these rule changes rather than put them into the
Takeover Code.</p>

<h3 id="Repurchase">Share Repurchase Offers</h3>

<p>The SFC has also closed a loophole by extensively revising the
Code on Share Repurchases. Last year, the Kwok family which controls Wing On
International Holdings Ltd managed to <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000201/LTN20000201060.HTM" target="_blank">privatise</a>
it by the legal but unconventional route of arranging for the company to make a
general offer to repurchase the 16.29% that the family didn't already control.
The offer was at a whopping 48% discount to pro forma net asset value.
Independent financial adviser Anglo Chinese Corporate Finance Ltd recommended
the deal.</p>

<p>After obtaining a 75% approval (of those shares which were
voted) for delisting and the share repurchase offer, they went ahead, and the
last announcement said that when the Repurchase Offer closed, 83.20% of the
public had accepted. There was no word on what happened to the remaining
shareholders in the now unlisted company. Incidentally, one of the family
directors, <a href="http://www.hksi.org/board.htm" target="_blank">Bill Kwok</a>,
is the Chairman of the <a href="http://www.hksi.org/" target="_blank">Hong Kong Securities
Institute</a> so he must know his stuff.</p>

<p>The SFC proposes that Share Repurchase Offers shall be deemed to
be Offers under the Takeover Code, and in particular in the case of
privatisations will impose the same approval requirements as for a Scheme of
Arrangement, closing the loophole. <i>Webb-site.com </i>supports this
proposal.&nbsp;</p>

<h3 id="Top-up">Top-up Placings</h3>

<p>The current Takeover Code includes a note which waives the
requirement to make a general offer by a controlling shareholder who has
temporarily dipped under the trigger by placing out &quot;old&quot; shares and
then gone back above the trigger by subscribing for new shares, known as a
&quot;top-up&quot;. Under the current rule, the controlling shareholder can
raise his holding up to the previous percentage he held, by subscribing for more
shares than he sold.</p>

<p>For example, if there are 100m shares in issue, and the
controller owns 40m, he might sell 12m old shares and then subscribe 20m new
shares, dipping from 40% down to 28% and then back up to 40% without making an
offer. In this scenario, the controlling shareholder gets to maintain his
percentage through this &quot;dilution protection&quot; while everybody else
gets diluted. It is blatantly unfair.</p>

<p>The SFC proposes that a bid waiver will be granted only if the
top-up is not more than the number of shares sold. So in our example, the
controlling shareholder could only subscribe 12m shares, taking his holding back
up to 35.7%, and suffering the same dilution as everyone else.</p>

<p><i>Webb-site.com</i> supports this proposal, but it should go
further. If the SFC sees it this way, then they should require the Stock
Exchange to amend its Listing Rules on connected transactions, which grant a
waiver for top-up placings based on the &quot;dilution protection&quot; for
controlling shareholders. The Listing Rules should be brought into line with the
new Takeover Code.</p>

<p>In any event, we have always been opposed to the <a href="placing.asp" target="_blank">placing
system </a>which allows companies to dilute public shareholders with
non-pre-emptive share issues over and over again. The placings can be arranged
with people (or BVI companies) who act as secret nominees for the controlling
shareholders, and it is very difficult to get caught doing this. We believe all
issues of shares for cash should be done by rights issue unless the approval of
minority shareholders is obtained in general meeting.&nbsp;</p>

<h3 id="Unlisted">What is a Public Unlisted Company?</h3>

<p>A seldom noted fact is that the Codes apply to &quot;public
companies in Hong Kong&quot; and companies with a primary listing in Hong Kong.
If you were here in 1993 then you may know what this is all about. Jardines,
which in our view has one of the worst corporate governance records of any large
group in HK, decided to delist all but one of its companies and claim that it
was then outside of the scope of the Takeover Code. The SFC at the time claimed
that since the companies were widely held in HK, they were still public
companies, and still subject to the Code.</p>

<p>The companies (Jardine Matheson Holdings Ltd, Jardine Strategic
Holdings Ltd, Hongkong Land Holdings Ltd, Dairy Farm International Holdings Ltd,
and Mandarin Oriental International Ltd) moved their primary listings to London,
where as Bermuda-incorporated companies, they are not subject to the UK Takeover
Code. Then they passed into law their own takeover codes in Bermuda (one for
each company) which have never yet been put to the test (but that may yet happen
- watch this space).</p>

<p>The wording in the Consultation Paper seeks to specify what a
&quot;public company in Hong Kong&quot; is, but it comes out so ambiguously as
to be of little help, talking of an <i>&quot;economic or commercial test&quot;</i>
(which is it?) and <i>&quot;taking into account primarily the number of Hong
Kong shareholders and the extent of share trading in Hong Kong&quot;.</i></p>

<p>This is somewhat puzzling when you consider that the SEHK has a monopoly on
&quot;share trading in Hong Kong&quot;, and we are talking about
unlisted companies. How is the SFC going to know about unlisted share trading?</p>
<p>The SFC goes on to consider <i>&quot;other factors&quot; </i>including
the location of the company's head office, the location of its business and
assets, and:</p>
<blockquote>
  <p>&quot;the existence or absence of protection available to Hong
  Kong shareholders given by any statute or code regulating takeovers and
  mergers outside Hong Kong&quot;.</p>
</blockquote>
<p>Reading between the lines, the new wording opens the door for
the SFC to admit (if the question ever arises) that Jardine group is now beyond
the reach of the non-statutory Hong Kong takeover code by treating the
Jardine-sponsored Bermuda takeover codes as adequate. On the other hand, they
might find that there are still a lot of HK shareholders on the Singapore branch
registers where trading takes place in this time zone.</p>
<h3 id="Independent">Independent Advice</h3>
<p>Having been through a number of HK takeovers as a shareholder, <i>Webb-site.com</i>
is painfully aware of how inadequate the role of the Independent Financial
Adviser (<b>IFA</b>) really is.</p>
<p>Many takeovers in Hong Kong are &quot;friendly&quot;
privatisation offers rather than hostile bids. As a consequence, the situation
often involves an offeror who already controls the board of the offeree. What
they then do is look around for an IFA who is willing to call the deal
&quot;fair and reasonable&quot; and then appoint them to advise the so-called
independent board committee (<b>IBC</b>). This is known in the trade as
&quot;opinion shopping&quot;. The IBC is usually just 2 people who are <a href="INED.asp" target="_blank">rubber
stamps</a> because they were appointed by the executive directors who represent
the controlling shareholder.&nbsp;</p>
<p>The IFA, once appointed, knows why they got the job. To justify
their favourable recommendation, they find as many comparable transactions as
possible, then discard the ones which give unfavourable comparisons (those which
make the current offer look cheap). That usually leaves a bunch of transactions
which they and their peers in the IFA community have previously recommended at
big discounts to fair value. In short, minority shareholders are not getting
good advice.</p>
<p>IFAs also like to say things like &quot;given that there is a
controlling shareholder, the chance of another offer from a third party is
minimal&quot;. But having no other offer is not a reason to accept a cheap offer
when the alternative is to hold the stock for future returns or demand more.</p>
<p>We have also noted that the role of the IFAs is limited (by Rule
2.1) to providing a &quot;fair and reasonable&quot; opinion, and does not follow
the much wider role under the UK Takeover Code. For example, in the UK, if an
offeror asks the Panel for an extension of the timetable, the IFA would normally
oppose that if it looked like the offeror was dragging his feet.</p>
<p>In Hong Kong, public shareholders often don't even know the
identity of the IFA until the offeree document is posted, so they cannot make
representations to the IFA. There have been occasions when <i>Webb-site.com</i>
as a shareholder, has had to approach the SFC directly in relation to the offer
timetable when a document has been delayed.</p>
<h4>Proposal: Jury Pool</h4>
<p>We propose that this problem be addressed by way of a &quot;Jury
Pool&quot; of IFAs. Each IFA, if they are willing to serve in the pool, must
commit to advise on any transaction they are given unless they have a conflict
of interest. Transactions would be allocated by transparent random draw - for
example, take the last 3 digits of that day's stock market turnover, divide by
the number of IFAs and take the remainder as the IFA advisor number. If that IFA
has a conflict of interest, then take the next one on the list.</p>
<p>The quality of IFAs would be reviewed by noting when
shareholders vote against their advice. If a persistent pattern of ignored
advice emerges, then the IFA would be removed from the pool.</p>
<p>This Jury Pool system, with its random selection, substantially
reduces the chance of an IFA pandering to the needs of the offeror, although in
a small town like HK, it cannot remove that risk altogether. The transaction fee
(paid by the offeree) would be the same in each case, set at a level which
attracts sufficient IFAs to sign up for the pool each year. Some deals would
involve less work than others, but the IFAs would only sign up if the expected
long-run average was profitable. A standard engagement letter would be used.</p>
<p>The SFC would announce the identity and contact details of the
IFA as soon as they were selected. Shareholders could then make their views
known to the IFA whenever they wanted, not just after the offeree document is
published, by which time it is often too late. The Takeover Code should be
modified to require the IFA to advise the IBC on all aspects of the offer,
including the timetable and level of disclosure in the circular, not just
whether the terms are fair and reasonable.</p>
<p><i>Webb-site.com</i> believes this same Jury Pool system should
also be implemented for IFAs in &quot;connected transactions&quot; under the
SEHK Listing Rules. In 10 years in Hong Kong, we can recall only one occasion
when an IFA said a connected transaction was <u>not</u> fair and reasonable -
and that was the Mansion House case in which the company had breached the
listing rules and was later censured for it.</p>
<p>Opinion shopping is a major problem in Hong Kong and steps must
be taken to stop it, failing which shareholders will continue to be fed a diet
of poor &quot;rent-a-scribe&quot; independent advice.</p>
<hr>
<p><b>Now <a href="../forms/takeoverSubmit.htm">click here to
SUBMIT YOUR VIEW</a> to the SFC using our special form. If you want these
proposals to be adopted, you're going to have to tell them!</b> </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=12914">SFC Takeovers and Mergers Panel</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=191">Takeovers</a></li>
				
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