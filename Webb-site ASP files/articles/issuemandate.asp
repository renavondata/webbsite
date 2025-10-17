
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

<script type="text/javascript">document.title="HKEx: no reform to placing mandate...or anything else";</script>

	<div class="summary">HKEx's decision to leave the Rules on dilutive issue mandates unchanged is an insult to investor opinion, expressed by their voting on this matter. Since the 2008 blackout saga, the Government and its regulators are unwilling to upset the local business elite with reforms. As China heads for an international currency, the tycoons are not as important to the market's future as HKEx seems to think they are.</div>

<h2 class="center">HKEx: no reform to placing mandate...or anything else<br>
<span class="headlinedate">27 October 2009</span></h2>
<p>On 9-Oct-09 <a href="../dbpub/orgdata.asp?p=9643">Hong Kong Exchanges and 
Clearing Ltd</a> (<strong>HKEx</strong>, 0388)
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/091009news.htm">
announced</a> the conclusion of its consultation on the general issue mandate, 
one of 18 areas covered in a
<a target="_blank" href="http://www.hkex.com.hk/consul/paper/cp200801_e.pdf">
consultation paper</a> way back on 11-Jan-08. Citing &quot;current facts and 
circumstances&quot;, HKEx concluded that no amendments 
will be made to the Listing Rules.</p>
<p>This conclusion is offensive to investor opinion, as expressed 
by voting patterns against the issue mandate in AGMs, something which HKEx 
didn't even mention in its conclusions, but which we <a href="#latestVotes">
analyse below</a>. Investors' interests have been disregarded in favour of 
politically powerful tycoons who continue to hold back 
corporate governance reforms and prevent Hong Kong from building a competitive 
advantage as a financial market.</p>
<h3>Background</h3>
<p>The general issue mandate is a mandate which directors can seek from 
shareholders at each annual general meeting to allow the board to issue new 
shares, equal to 20% of existing issued shares, without offering them to 
existing shareholders first, at any time until the following AGM. In other 
words, the directors get to pick the owners of the company, rather than the 
other way around, subverting the governance chain of command. In the case of 
cash placings, the shares are almost always issued at a significant discount 
(the Rules allow 20%, or more in &quot;exceptional circumstances&quot;), thereby 
transferring value to the subscribers from existing shareholders and diluting 
their voting power and economic interest in the company's assets.</p>
<p>The AGM vote requires only an ordinary resolution, with 50% majority of votes 
cast. By comparison, in the UK, such a waiver of pre-emptive rights is taken 
more seriously and requires a special resolution, with 75% majority of votes 
cast, just as if the class rights attaching to the shares are being temporarily 
varied. The right to maintain your percentage share of ownership of a company is 
fundamental. The HK Companies Ordinance
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/31A120FDE53D3BA5482574A3002B0350?OpenDocument">
Section 57B</a> is deficient in this respect. Even for PRC issuers, the mandate 
requires a special resolution with two-thirds majority, and even then, it cannot 
be used to issue domestic A-shares without further specific shareholder approval 
for each issuance.</p>
<p>Since our launch in 1998, Webb-site.com has
<a href="displacement.asp">regularly criticised</a> the issue 
mandate and in 2003 we launched a campaign called
<a href="vampire1.asp">Project VAMPIRE</a> (<strong>V</strong>ote 
<strong>A</strong>gainst <strong>M</strong>andate for 
<strong>P</strong>lacings, <strong>I</strong>ssues by <strong>R</strong>ights 
<strong>E</strong>xcepted) urging investors to vote against the 
mandate. At the same time, our <a href="projectpoll1.asp">Project 
Poll</a> also made sure that, in the blue chips, those votes were properly 
counted rather than binned in favour of a show of hands in the room, as was the 
prevailing practice. On 1-Jan-09, six years after we launched Project Poll, 
poll-voting became mandatory for all HK-listed company meetings.</p>
<p>As Project Poll lifted the veil, it became
<a href="vampireproven.asp">blindingly obvious</a> by 2004 
from the voting patterns in general meetings that a substantial majority of 
public votes are cast against the issue mandate. Gradually, a few of HK's more 
enlightened blue-chips cut their mandates in response to investor pressure. 
HKEx, itself a listed company, persisted with the issue mandate until 2004 when 
it was <a href="hkexbeavampire.asp">almost voted down</a>. In 2005 
it finally heeded our advice (your editor was a director of HKEx from 2003 to 
2008) and stopped asking for the issue mandate. <strong>HKEx cannot claim to be 
unaware of how investors feel about the issue mandate, having dropped its own 
mandate in response to investor pressure.</strong></p>
<p>The voting patterns have not changed much over the years since votes were 
first counted, in 2003. Controlling shareholders and directors, who run the 
companies, naturally vote to give themselves as much power as possible, in 
favour of the issue mandate, and public investors generally vote against, if 
they manage to vote at all.</p>
<h3>Voting barriers</h3>
<p>Public investors comprise institutional and retail investors. Voting in HK is 
difficult for retail investors for the simple reason that the SFC does not 
require brokers and banks (intermediaries) to request voting instructions from 
retail investors for whom they hold shares. That would cost money, so almost 
no intermediary bothers - they just put it in the small print of client 
agreements that they don't have to tell you about shareholder meetings, in 
essence waiving their duty of care. You will 
find abundant online dealing systems, but no online voting systems at these 
firms.</p>
<p>For larger companies with institutional investors, the voting turnout (shares 
voted) averages about 40% of the public float, but for small caps, particularly 
some of the more abusive ones which institutions have managed to avoid, there is often 
nearly zero public vote, which tends to facilitate abusive acquisitions from 
supposedly independent vendors, connected 
transactions, open offers and intra-year refreshments of the issue mandate. The &quot;public 
float&quot; will inevitably include close relatives and employees of the company 
whose votes can be mustered to push things through if the turnout of the real 
public is low enough.</p>
<h3>Discount limit</h3>
<p>Under
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_13.pdf" target="_blank">Listing Rule 
13.36(5)</a> introduced on 31-Mar-04, issuers under the general 
mandate are limited to a 20% discount to market price at the time the placing is 
announced, except in exceptional circumstances. To avoid this, some issuers 
enter placing agreements on a &quot;best efforts&quot; basis with long completion 
deadlines (or deadlines which are repeatedly extended), turning them into call 
options. If the market price rises, the discount expands, handing the benefit to 
the placees. If the price falls, the agreement lapses.</p>
<p>Take
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090409/GLN20090409060.pdf">
this one</a>, for example, entered into by 
<a href="../dbpub/articles.asp?p=18177">Byford International Ltd</a> (8272) on 9-Apr-09 with a 
placing price of $0.20 when the market price was $0.24, with a 3-month deadline. 
It finally
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20090630/GLN20090630017.pdf">
completed</a> on 29-Jun-09, when the share price was 
$0.53 and the discount was 62%. Ironically, defenders of the general mandate proclaim how speedy it is as 
a way to raise funds - but companies then drag this process out when it suits 
them. <strong>To prevent such abuse, the Listing Rules should impose a completion 
deadline of 14 days on each use of the general mandate, because any placing agreement 
longer than that allows enough time to call a shareholder meeting to approve it 
before it completes.</strong></p>
<p>Another way to avoid the discount limit is to issue convertible notes with a 
conversion price within the discount limit under the general mandate. If the market 
price falls, you 
can just redeem the notes. If it rises, the notes convert. The broker can even 
hold the cash as collateral until one of these two events happens. HKEx noted 
this problem in para 11.34(b) of its consultation paper but has done nothing 
about it. Such issues should be subject to specific shareholder approval.</p>
<h3>Refreshments at EGMs</h3>
<p>By &quot;refreshments at EGMs&quot; we don't mean the tea and dim sum. Under
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_13.pdf">Listing Rule 
13.36(4)</a> introduced on 31-Mar-04, issuers need approval of 
independent shareholders for any 2nd or subsequent general issue mandate in a year, 
known as a &quot;refreshment&quot; of the mandate, 
with the controlling shareholder or, if none, the directors, abstaining from 
voting. Issuers have found ways around that rule too - just call the mandate 
&quot;specific&quot; or &quot;special&quot;, but do not specify the subscribers up front, only a 
friendly &quot;best efforts&quot; broker. In our view that is not a specific mandate at all, but a general mandate in disguise. 
A specific mandate would be to introduce a particular new shareholder (or 
convertible note holder) to a company for some strategic reason (and it had 
better be a good one).</p>
<p>HKEx &quot;noted with concern&quot; this problem in para 11.36 of its consultation paper, 
but has done nothing about it.</p>
<p>We do note that one company, <a href="../dbpub/articles.asp?p=18187">Sino 
Katalytics Investment Corp</a> (<strong>SKI</strong>, 2324) went too far even 
for the Exchange's relaxed position, seeking a &quot;specific mandate&quot; without even 
signing a placing agreement, giving the board approval to
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090915/LTN20090915323.pdf">
enlarge the share base</a> by 675.7%. There are no institutions in this stock, 
so a low voting turnout of 22.98% of the company (presumably including the 
11.85% owned by the directors)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091002/LTN20091002582.pdf">
unanimously</a> thought this was a great idea at the EGM, and ten days later, on 
12-Oct-09, the company
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091012/LTN20091012539.pdf">
launched</a> a placing of 38.8% new shares. It was only at this point that the 
Exchange woke up and, on 22-Oct-09,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20091023/LTN20091023013.pdf">
rejected</a> the listing application for the new shares (something almost 
unheard of), on the grounds that (according to SKI) &quot;the proposed issue of the 
Placing Shares bears many of the characteristics of those of a general mandate&quot;. 
Surely the Exchange should have said so before the EGM was called.</p>
<p>Take a look at
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090609/LTN20090609003.pdf">
another example</a> from China Strategic Holdings Ltd (0235) on 8-Jun-09, which 
proposed to place up to 78 billion shares (yes, <em>billion</em>) in tranches of 
not less than 2 billion shares each at $0.1 per share. This would increase the 
issued shares by more than 38 times, raising $7.8bn without any stated 
purpose at the time, and with no stated completion deadline. That agreement was terminated 
on 20-Aug-09 and
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20090820/LTN20090820159.pdf">
replaced</a> with a proposed issue of $7.8bn of zero-coupon notes convertible at 
the same price, by then a 69.7% discount to market, with a completion deadline 
of 30-Jun-10, more than 10 months away, and with no specific subscribers. If that isn't a general mandate, then 
what is?</p>
<p>These pseudo &quot;special mandates&quot; should be stopped. Shareholders should either 
be told before they vote who is getting the shares and why, or the proposal to 
place shares or convertibles through a broker should be regarded as a 
refreshment of the general mandate on which directors and controlling 
shareholders should abstain. </p>
<p><strong>The Listing Rules should not regard a mandate as &quot;specific&quot; 
or &quot;special&quot; unless the 
subscriber(s) are named and have signed subscription agreements. Otherwise, the proposal should be treated as a refreshment of the general 
mandate, with controlling shareholders and directors abstaining from voting.</strong></p>
<h3 id="latestVotes">Latest votes: status quo unacceptable</h3>
<p>To leave HKEx in no doubt about where investors stand on the general issue 
mandate, we have done what they 
should have done, and analysed the 
votes at the latest AGM of each of the top 30 HK-listed companies,
<a href="../dbpub/mcap.asp">ranked by market value</a> of HK-listed shares on 
Friday, 23-Oct-09. These top-30 cover <strong>61.7%</strong> of HK market 
capitalisation (as defined below). We excluded the votes of the controlling 
shareholder(s) from the &quot;For&quot; vote of each company, and then looked at how the 
rest of the votes were cast; &quot;net for&quot; and &quot;net against&quot; as a percentage of the 
remaining votes.</p>
<p>We consider that a proposed issue mandate conforms with international best 
practice (a &quot;Y&quot; in the Conform column) if it limits the number of shares which 
can be issued for cash to 5% of the existing issued shares. This is in line with 
the UK practice, although the 
<a target="_blank" href="http://www.pre-emptiongroup.org.uk/documents/pdf/Statement%20of%20Principles%20July%202008.pdf">UK guidelines</a> also limit it to 7.5% in a rolling 
3-year period and a maximum discount of 5%. We also want that discount 
limit, because if you want to use a larger discount, then you should offer it to 
existing shareholders, but for the purpose of this study, we will ignore it. We 
also note whether the mandate extends to shares which are repurchased - we 
always vote against that extension, because issuing a repurchased share (or one held in 
treasury) is no different to issuing a shiny new one as far as dilution of economic and voting 
interests are concerned.</p>
<p>Of the 30 companies in the study, 5 did not ask for a mandate at all (ICBC, 
CCB, BOC, Bank of Communications and HKEx) while 5 had mandates which comply 
(HSBC and Standard Chartered, because they are UK-listed, Hang Seng Bank, which 
is majority-owned by HSBC, BOC Hong Kong, which is majority-owned by Bank of 
China, and CLP). In one case (HK &amp; China Gas) the number of votes in favour was 
less than the controlling shareholding, so some of the controller's votes were 
not cast, and we exclude the unreliable result from our study. That leaves 19 
non-conforming issue mandates. Here are the voting figures:</p>
<img class="center" alt="" src="../images/mandates2009.gif">
<p>The table shows that of the 19 non-conforming mandates, an average of 
60.4% of the public votes were against them, out-numbering those in favour 
(39.6%) by more than 50%. Without the controlling 
shareholder, only 4 of the 19 would have passed as an ordinary resolution and 15 
would have been voted down. If held to the UK standard, where waiving 
pre-emption rights requires a special resolution, all 19 of them would have 
failed to get the necessary 75% approval. And we've been generous to the 
supporters in our calculations: where there is a controlling shareholder, we 
haven't assumed the shares held by non-family directors were in favour.</p>
<p>We note that of the 
19, three of them (SHKP, MTRC and Li &amp; Fung) have made half-way steps towards 
compliance, cutting their mandate to 10%, as has HK &amp; China Gas. That leaves 16 
who are still going for the full 20%. Issuers won't get credit for half-way 
measures though.</p>
<p>By comparison, for the 5 conforming mandates, the average support was 67.5%, 
although this includes HSBC and Standard Chartered of the UK, which bring up the 
average. Indeed, the default 20% 
mandate is so widely proposed in HK that many investors don't bother to try and 
spot the companies which have voluntarily cut their mandate. Instead, they just 
vote against all general mandates. Just ask Esprit, which cut its mandate to 5% 
for cash and imposed a 10% discount limit but still got
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20081211/LTN20081211377.pdf">
voted down</a> at its AGM, possibly because it bolted on an extension of the 
mandate to repurchased shares. Investors could have supported the issue mandate 
and voted down the extension, but it's too much trouble.</p>
<p>Below the top 30, but still in large-cap territory, honourable mentions go to 
<a href="../dbpub/orgdata.asp?p=384">Swire Pacific Ltd</a> (0019/0087, 
34th/54th largest) and associate <a href="../dbpub/orgdata.asp?p=385">Cathay Pacific Airways Ltd</a> (62nd), which both 
have complying mandates and no extension to buybacks. They may be hopeless at 
fuel hedging/speculation but at least they get some things right. Swire would 
actually be 22nd largest if it unified its share classes - its' the last holdout 
with two classes of voting shares on SEHK.</p>
<div class="regbox">
	<h4>A note on market cap</h4>
	<p>H-share issuers (incorporated in the PRC) have other shares which are not listed 
	in HK (and in some cases are listed in Shanghai) and those non-listed shares 
	don't count towards the HK market cap. Some, particularly
	<a href="../dbpub/orgdata.asp?p=1785">China Construction Bank Corp</a> (<strong>CCB</strong>, 0939), 
	have it both ways, listing almost all their shares in HK but having some of 
	those listed in Shanghai. So there's no consistency. This originally happened 
	when CCB listed on 27-Oct-05 and wanted to be in the HSI, but HSI wanted all the 
	issued shares to be listed as H-shares, even though the state retained most of 
	them. HSI has quietly dropped that criterion, still listed on its web site, when 
	it moved to a
	<a href="http://www.hsi.com.hk/HSI-Net/static/revamp/contents/en/news/pressRelease/20060630e.pdf">
	free float model</a>. Index member PetroChina, for example, has 21.0989bn shares 
	listed in HK, but it has about 183.02bn shares in total. It ranks 15th by HK 
	market cap, but if you applied the HK price to all its shares, it would be worth 
	about HK$1.92tn, bigger than CCB. ICBC (1398) would be even bigger, at 
	$2.17tn, and BOC (3988) would be $1.18tn. Looked at this way, it puts the old 
	tycoon-run companies of HK into the shade and is a taste of things to come - 
	<strong>the tycoons are far less important to the market's future than they think, or than HKEx 
	seems to think.</strong> </p>
</div>
<h3>The conclusions paper</h3>
<p>HKEx's
<a target="_blank" href="http://www.hkex.com.hk/consul/conclusion/cc200910.pdf">conclusions paper</a> looks 
like it started with a conclusion and worked backwards in a futile effort to 
find plausible reasons to 
justify it. The paper makes no analysis of public voting figures on the 
general issue mandate, even though this is surely the most obvious way to measure what 
investors think. It only took us a few hours' work to gather the data and 
produce the table above, and the results are no different to
<a href="vampireproven.asp">what we found in 2004</a>. We didn't 
bother to launch an opinion poll or make a submission on this issue because it 
was quite clear from the <a href="investorsignored.asp">previous consultation in 2002</a> and from voting figures 
since 2004 what investors think. In any case, the Exchange would just play the 
numbers game, counting each listed company's identical submission separately and 
treating an opinion poll as a single response.</p>
<p>Here are some of the specious reasons given in the paper, and our response to 
them:</p>
<table class="txtable">
	<tr>
		<th>The Exchange's conclusions</th>
		<th>Our response</th>
	</tr>
	<tr>
		<td>We are mindful of profound changes in market conditions since 2004 
		when the general mandate rules were last amended, in particular the 
		increased volatility and difficulties faced by issuers in raising funds 
		since the financial turmoil of 2008.</td>
		<td>Rubbish. There has been no &quot;profound change&quot; in market conditions 
		or market structure. There has been a temporary financial crisis, and a period of 
		higher volatility which has abated. During that crisis, HSBC 
		successfully raised HK$140bn in HK's biggest ever rights issue, 
		respecting pre-emptive rights that HKEx clearly does not. And for what 
		it's worth, the Hang Seng Index is up 70% (ex-dividend) from 31-Mar-04 
		to the date of your conclusions paper.</td>
	</tr>
	<tr>
		<td>We also note the lack of a clear consensus on what, and the extent 
		to which, change should take place since the responses did not 
		demonstrate overwhelmingly strong support for any particular size limit 
		option.</td>
		<td>Take your blindfold off and look at the voting figures in 
		AGMs and the fact that HKEx itself no longer has an issue mandate. There is a clear 
		consensus of investors that the status quo is unacceptable. You proposed a range of reductions in the consultation. Naturally 
		then, you didn't get overwhelming support for any particular option, but 
		that is not an excuse for doing nothing. Those who wanted a 5% limit 
		would obviously regard 10% as better than the status quo.</td>
	</tr>
	<tr>
		<td>a reduction in the size limit for general mandates would have a 
		substantial impact on H-share issuers. In considering any reduction of 
		this kind for issuers, we would also need to consider to what extent 
		H-share issuers should be treated differently.</td>
		<td>Again, this is not a reason for inaction. In fact, mainland law 
		offers greater protection of pre-emptive rights, because it 
		doesn't allow directors to issue A-shares without
		<u>specific</u> approval in shareholder meeting. So 
		some H-share issuers (including the 4 banks above) don't ask for a 
		mandate, and those that do still need subsequent shareholder approval if they use it 
		in Shanghai or Shenzhen.<br>
		<br>
		But investors would not object if a 5% limit on cash placings applied to 
		the number of all issued shares (not just the number of H-shares) and 
		allowed the new shares to be issued as A-shares or H-shares, within the overall (20% 
		A, 20% H) allowed under the Listing Rules. What matters to investors is 
		the dilution to economic interests and voting rights, which relates to 
		the entire share base, not the market in which the dilution occurs.</td>
	</tr>
	<tr>
		<td>Pre-emption restrictions can only go so far in fostering and 
		promoting good corporate behaviour.</td>
		<td>So what? Laws against theft can only go so far in fostering good 
		social behaviour. Is that a good reason not to have them?</td>
	</tr>
	<tr>
		<td>Over-regulation would only serve to curtail bona fide corporate 
		activity ultimately intended to benefit issuers and their shareholders</td>
		<td>Ah yes, the old &quot;investors don't know what's good for 
		them&quot; argument. It's patronising and insulting. Clearly from their votes, 
		investors do not regard the 
		existing general mandate as beneficial to their interests. There is no 
		evidence that the UK pre-emption limits, in place since 1987, have 
		curtailed bona fide corporate activity or damaged shareholders' 
		interests.</td>
	</tr>
	<tr>
		<td>The [UK] Pre-emption Group's Statement of 
		Principles...is not a legal or regulatory instrument and allows 
		deviation for good reason. In Hong Kong...we do not think that this 
		should be compensated for by means of formal Rules mandating the same 
		higher standards as the UK Statement, non-compliance with which would 
		render the Hong Kong issuer liable to disciplinary proceedings.</td>
		<td>It is extremely rare for UK issuers to deviate from 
		the Pre-emption Guidelines on size and/or discount. The Hong Kong Listing 
		Rules, particularly
		<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_2.pdf">
		Rule 2.04</a>, provide flexibility for the Exchange to waive any Rule in 
		&quot;exceptional circumstances&quot;, and some Rules specifically allow for 
		that, 
		as does the existing 20% discount limit. The same approach can 
		be taken with size limits. The possibility that occasionally a company may 
		be able to justify a waiver is not a good reason for not having rules. 
		Anyway, in most such cases, seeking a specific mandate from 
		shareholders, for example, to allow a strategic investor or rescuer to 
		subscribe more than 5%, will be more appropriate than applying for a 
		Rule waiver from the Exchange.</td>
	</tr>
	<tr>
		<td>We have not seen any evidence of widespread abuse of the 
		general mandate</td>
		<td>Then you don't understand that the general mandate 
		itself, on current terms, is abusive to shareholder value, which is why the substantial 
		majority of public investors are voting against it. The deeper the 
		discount and the larger the issue, the greater the abuse. Even assuming 
		the same rate of return on new equity as existing equity, a 20% issue at 
		a 20% discount amounts to a 3.33% loss of value (116/120-1 = -3.33%) and 
		a 16.67% loss of voting weight for existing holders, and that can be 
		repeated every year. If more than 
		5% of shares are to be issued at more than a 5% discount, then they 
		should be offered to existing owners.</td>
	</tr>
	<tr>
		<td>we published a Consultation Paper proposing the 
		shortening of timetables on rights issues. With pro rata fund-raising a 
		more attractive alternative, use of the general mandate...may become 
		commercially less justifiable and abuses less widespread</td>
		<td>In the line above you said that you do not see any 
		evidence of widespread abuse, and now you say there are widespread 
		abuses which may be mitigated by your proposal - which is true? Anyway, 
		this statement is hopelessly naive because it assumes that abusive controllers will change their ways in 
		response to investor pressure. They won't.</td>
	</tr>
</table>
<h3>Investor reaction to the HKEx decision</h3>
<p>Jamie Allen, Secretary-General of the <a href="../dbpub/orgdata.asp?p=18035">
Asian Corporate Governance Association</a>, which counts many of the largest 
institutional investors among its
<a target="_blank" href="http://www.acga-asia.org/content.cfm?SITE_CONTENT_TYPE_ID=36">
membership</a>, told Webb-site.com:</p>
<blockquote>&quot;We are very disappointed with the decision of HKEx not to 
amend and update the general mandate rules in Hong Kong. This is an issue that 
global institutional investors have been voting against in large numbers over 
the past five years, and it is a pity that their views have been disregarded by 
regulators.&quot;</blockquote>
<p>Mr Allen is also a member of the HKEx Listing Committee.</p>
<h3>HKEx ices pro-investor reforms</h3>
<p>This latest decision should be seen in the political context. Ever since the blackout controversy at 
the end of 2008, the Government, the SFC and HKEx have clearly been keen to 
avoid anything which might upset the tycoons, without whose support a Chief 
Executive of Hong Kong cannot get elected.</p>
<p>The <a href="../dbpub/officers.asp?p=13780&amp;hide=Y">Listing Committee</a> has been <a href="LC2009.asp">revamped</a> 
to put tycoon-friendly faces on the committee and in the top seats. The new 
Chairman of the Listing Committee, Teresa Ko Yuk Yin, is also a partner of
<a href="../dbpub/adviserships.asp?p=6007">Freshfields</a>, and one of the two 
Deputy Chairmen, John Moore, is a partner of
<a href="../dbpub/adviserships.asp?p=5556">Herbert Smith</a>. The two firms, on 
behalf of 12 investment banks, jointly
<a target="_blank" href="http://www.hkex.com.hk/consul/response/JS002.pdf">
opposed</a> any change to the general mandate. Not surprisingly, investment 
banks like the easy money of instant placings, being able to offer discounted 
stock to their favourite clients, and not having to do any labour-intensive 
documentation work.</p>
<p>The Government has also appointed <a href="../dbpub/positions.asp?p=30144">Lawrence 
Lee Kam Hung</a>, a director of the <a href="bauhiniafound.asp">
tycoon-sponsored</a> Bauhinia Foundation, to the SFC effective 15-Nov-09, as a 
non-executive director.</p>
<p>Quarterly financial reporting, first <a href="showusthemoney.asp">proposed 
by HKEx</a> in 2002 (and mandatory in mainland China since then) and
<a href="quarterly.asp">proposed again in 2007</a>, has now been
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/0904243news.htm">
downgraded</a> to a &quot;long-term goal&quot;, and even a proposal on some wishy-washy 
quarterly management statement (words, not numbers) has yet to see the light of 
day. If you think management statements would be useful, take a look at 
London-listed Jardine Matheson's
<a target="_blank" href="http://202.66.146.82/listco/sg/jm/press/p090507.pdf">Q1 statement</a>, 
which tells you nothing you didn't already know. Management statements in HK 
would be an exercise in obfuscation, like asking your kid what he did at school 
this term rather than getting test scores.</p>
<p>The latest official line-to-take on quarterly reporting is that &quot;we might not 
need it if we have statutory backing for prompt disclosure of price-sensitive 
information&quot;. This is a complete non sequitur. What is or is not price-sensitive 
is hard to prove beyond a reasonable doubt, the standard needed for criminal 
prosecution, and non-disclosure is even harder to prove when the information 
never sees the light of day. If a company only reports half-yearly, a first quarter's 
(internal) results might be awful, and insiders might sell shares, while the 
second quarter's results might fortuitously turn out better. A half-year report 
would never reveal what insiders knew after 3 months. Alternately, the second 
quarter might turn out awful too, and the insiders would have avoided a loss, 
while claiming that they didn't know half-way through the period that the 6 
months would be that bad, so they are in the clear. The public would get a profit warning only after the 
result was in the bag.</p>
<p>To see the flaw in the line-to-take you only have to look at the fact that 
A/H mainland-listed issuers who report quarterly are required to publish the 
same information here. It's price-sensitive, you see. But if it weren't for the 
mainland rules, you wouldn't see it. The same applies to companies with dual 
listings in Singapore, Malaysia, Taiwan or Canada, or those with parents listed 
in a jurisdiction which reports quarterly. Together, those account for nearly 
all the estimated 96
<a href="../dbpub/reportspeed.asp?exch=main&amp;rep=2&amp;hide=&amp;sort=recdatedn">
companies which currently report quarterly on the main board</a>. There are just 
a few voluntary reporters, including HKEx.</p>
<p>But the tycoons don't want statutory backing for Listing Rules anyway - they 
are opposed to that just as much as they are opposed to quarterly reporting and 
have
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?art_id=86717&amp;con_type=1">
said so</a> via spokesman <a href="../dbpub/positions.asp?p=692&amp;hide=Y">Lo Ka Shui</a> (a man for all seasons as long as they 
don't come quarterly), who seems to think the answer lies in a 
civil tribunal with fining powers. He must be unaware that tribunals 
cannot fine people, otherwise they become criminal courts in nature, as the 
Court of Final Appeal
<a target="_blank" href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=60481&amp;currpage=T">
ruled</a> in <em>Koon Wing Yee v Insider Dealing Tribunal</em>. The statutory 
backing saga has been dragging on since the first version was proposed in 
January 2005 (<a target="_blank" href="http://www.fstb.gov.hk/fsb/ppr/consult/statutorybacking.htm">Government 
paper</a>,
<a target="_blank" href="http://www.sfc.hk/sfc/notes/consult/EN/apps/cf/smlr.nsf/content/Main.html">
SFC paper</a>), with a watered down and probably-impractical &quot;revised approach&quot;
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=07PR21">
announced</a> on 28-Feb-07 and still no draft legislation.</p>
<p>Meanwhile a Law Reform Commission
<a target="_blank" href="http://www.hkreform.gov.hk/en/projects/class_action.htm">
sub-committee on class action rights</a> continues to labour harmlessly in 
obscurity. Their work will never see the light of day if the tycoons have 
anything to do with it.</p>
<h3>Where does this leave us?</h3>
<p>Investors continue to factor Hong Kong's weak protections into the price they 
are willing to pay for stock. We can't expect Hong Kong to achieve a competitive 
advantage in capital markets, in the form of higher pricing to attract issuers, 
unless we give investors a more trust-worthy market structure with appropriate 
laws, regulations and enforceability. It's time for the Government and 
regulators to start thinking about the long-term future of the Chinese capital 
market - one in which the RMB will be an international currency and large, 
widely held national and multi-national companies would vastly outweigh the 
small, tycoon-dominated companies of Hong Kong. In such circumstances, what will 
be Hong Kong's competitive advantage? HK's rule of law is often trumpeted 
(relative to the government-controlled and corruptible mainland judiciary), but 
it's seldom of any use to investors. The rule of law isn't worth much if the 
rules are stacked against you.</p>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=18187">Capital VC Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2911">CSC Holdings Limited (HK)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13780">SEHK Listing Committee</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=173">Pre-emption rights/ general mandate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=177">Quarterly financial reporting</a></li>
				
				<li><a href="/dbpub/subject.asp?c=190">Statutory backing of Listing Rules</a></li>
				
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