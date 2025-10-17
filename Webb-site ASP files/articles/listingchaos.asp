
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

<script type="text/javascript">document.title="Listing Chaos";</script>

	<div class="summary">We review a chaotic month on the Government policy front in general and the HKEx in particular, and look at the broader issues surrounding the current proposals, or rather the lack of them. Merging two issuer-dominated Listing Committees together will not address the needs of investors, while the Government ducks the real problem of having a for-profit toothless regulator rather than SFC regulation and statutory backing for the Listing Rules.</div>

<h2 class="center">Listing Chaos<br>
<span class="headlinedate">28 July 2002</span></h2>
<p>Phew! What a month it has been on the policy front. In fact,
from a period of policy paralysis up to 30-Jun-02, while Hong Kong Chief
Executive Tung Chee-hwa was preparing his new ministerial
&quot;accountability&quot; system and nobody wanted to make any decisions, we
have now transitioned into a period of policy chaos, with newly-appointed
ministers, many of them either tycoons or their friends, seek to make an
impression by disgorging a stream of consciousness and random policy proposals
on the unprepared public. It's a new kind of heuristic approach to policy
formation - launch a balloon, see if it flies, and if not, declare that it was
just a personal idea and not government policy. The media have been scrambling
to try and make sense of it all, which in several cases is probably a futile
exercise. </p>

<p>Even hereditary tycoon <a href="http://www.info.gov.hk/info/exe7a.htm#pctien" target="_blank">James
Tien Pei-chun</a>, head of the Liberal Party and Chairman of Manhattan Garments,
began wondering out loud if, as a member of the Executive Council, he would ever
be consulted on these policies. Perhaps Mr Tung thought that wasn't necessary,
since Mr Tien has proudly announced that he and the other seven Liberal
Legislative Councillors would always vote in favour of Government policies -
whether or not they agreed with them. </p>

<p>Our prize for wackiest and most retrogressive proposal of the
month goes to former civil servant and Secretary for Financial Services <a href="http://www.info.gov.hk/info/cv_sedl_e.htm" target="_blank">Stephen
Ip Shu-kwan</a>, now Secretary for <a href="http://www.edlb.gov.hk/" target="_blank">Economic
Development and Labour</a>, who proposed government hand-outs, such as
tax-breaks and land, to get factories to relocate from mainland China back to
Hong Kong, allowing them to import mainland labour so long as a proportion of
employees were Hong Kong residents, suggesting 30% as a target. So we might yet
get back into the T-shirt and plastic flowers business after all. But why stop
there - let's roll the clock all the way back and provide subsidies to
rejuvenate the opium and tea trade, which was the true foundation of Hong Kong's
economic success. </p>

<p>In a founding contribution to the Yin and Yang branch of
economic theory, Mr Ip said the government should not be afraid of interfering
because <i>&quot;the market can't be open if there is no interference&quot;</i>.
This, you may recall, is the man who <a href="nofreemarket.asp" target="_blank">postponed</a>
abolition of the minimum brokerage cartel in April this year. It's a huge irony
that the only grain of truth in Mr Ip's statement is that you can't have a free
market without an effective <a href="noncompete.asp" target="_blank">competition
law</a> to prevent that kind of price-fixing and abuse of monopolies, a law
which the HK Government refuses to introduce. </p>

<p>Close on Mr Ip's heels was hereditary tycoon <a href="http://www.info.gov.hk/info/poff7.htm#scit-b" target="_blank">Henry
Tang Ying-yen</a>, Chairman of Peninsula Knitters Ltd, an old Hong Kong garment
manufacturer, and now Secretary for <a href="http://www.info.gov.hk/citb/" target="_blank">Commerce,
Industry and Technology</a>. Mr Tang said he would <i>&quot;not rule out&quot;</i>
tax or land incentives to promote private sector investments in &quot;research
and development&quot; including <i>&quot;traditional or foundation manufacturing
industries&quot; </i>such as toy and garment manufacturers. There we go again -
Mr Tien and Mr Tang can set up new garment factories together. Maybe we could
build one of them on Lower Albert Road after the government offices move to the
Tamar site. </p>

<h3>Governance of HKEx</h3>

<p>Against this background, newly-appointed Secretary for <a href="http://www.info.gov.hk/fstb/" target="_blank">Financial
Services and the Treasury</a>, <a href="http://www.info.gov.hk/info/poff7.htm#sfst-b" target="_blank">Frederick
Ma Si-hang</a> (<b>Mr Ma</b>), stands out in policy formation as being more
coherent and organised but misguided. Immediately prior to his appointment, Mr
Ma was finance director of Li-family <a href="../dbpub/articles.asp?p=2925" target="_blank">Pacific
Century Cyberworks Ltd</a> and a member of the GEM Listing Committee and the
Takeover Panel. Your editor also sits on the Takeover Panel. </p>

<p>Now in case you were thinking that <a href="http://www.hkex.com.hk/" target="_blank">Hong
Kong Exchanges and Clearing Ltd</a> (<b>HKEx</b>) is a public listed company
with no controlling shareholder, think again - that is only half true. The
Government is not a shareholder, but appoints 8 out of the 15 directors on the
board, ensuring control. The HKEx chief executive, currently former civil
servant Mr Kwong Ki-chi, sits on the board, and the other 6 directors were
elected by former members of the Stock and Futures Exchanges before the
flotation of HKEx. After the 2003 AGM, the number of directors appointed by the
Government will be &quot;no more than&quot; the number of directors elected by
shareholders. </p>

<p>It was this power that was used to propose and then delay
scrapping minimum brokerage commissions, which are required through the rules of
the Stock Exchange. So be in no doubt that corporate policy of HKEx is
ultimately determinable by the Government. What it wants, it gets. </p>

<h3>The Listing Committee</h3>

<p>In Hong Kong, the Listing Division of the Stock Exchange of Hong
Kong Ltd (<b>SEHK</b>), which is wholly owned by HKEx, processes applications
for listing on the main board and GEM, and the listings are subject to approval
by the main board and GEM <a href="http://www.hkgem.com/aboutgem/e_release010503committee.pdf" target="_blank">Listing
Committees</a>, each of which normally meets once a week and consists
predominantly of people who either represent or get their fees from listed
issuers, including lawyers, accountants, investment bankers and brokers, all of
whom are involved in IPO and secondary issue work. We call these the
&quot;issuer-based&quot; members of the committees. <a href="http://www.hkex.com.hk/rulereg/listrules/CH2A.doc" target="_blank">Listing
Rule 2A.17</a> sets out the composition of the main board committee, and you
will note that a maximum of 4 members out of 25 can be engaged in fund
management, or &quot;investor-based&quot;. Even then, they can be working for
the fund management subsidiaries of integrated investment banks. So as you can
see, decisions are likely to be heavily tilted in favour of issuers rather than
investors. </p>

<p>One can sympathise to some extent that even if the management of HKEx and its
Listing Division were minded to be more vigorous in the application of listing
criteria, they could still be overruled by the Listing Committee. Indeed, having
been consulted as a member of the SFC Shareholders Group on the SEHK's internal
draft of the corporate governance proposals for the Listing Rules, your editor
could not help noticing that by the time the final <a href="http://www.hkex.com.hk/library/listpaper/Corporate%20governance%20issues.pdf" target="_blank">consultation
paper</a> came out in Jan-02, these proposals had been watered down, presumably
by the Listing Committee (for our series of articles on that consultation, <a href="/dbpub/subject.asp?c=164">click
here</a>). </p>

<h3>Conflicting interests</h3>

<p>HKEx, as a for-profit company, has a vested interest and duty to
its shareholders to maximize profits. It receives initial and annual <a href="http://www.hkex.com.hk/rulereg/listrules/app8.doc" target="_blank">listing
fees</a>, and it receives a trading levy of 0.01% on each transaction (0.005%
from buyer and seller). It can also boost short-term profits by minimizing
expenditure on regulation, even if the quality of markets and profitability is
degraded in the long term. HKEx incentivises its employees (as any for-profit
company should) to maximise profits. At the time of its 2000 flotation, 143
directors and employees had been granted share options which vest between 2002
and 2005. </p>

<h3>Mr Ma's proposals</h3>

<p>This week, Mr Ma <a href="http://www.info.gov.hk/gia/general/200207/24/0724130.htm" target="_blank">announced</a>
a &quot;restructured listing framework&quot; which was more notable for what it
didn't propose than what it did. You can watch the press conference at <a href="rtsp://203.198.82.20:554/webcast/240702e.rm">this
link</a>. The announcement reversed changes <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/020506news.htm" target="_blank">announced</a>
by HKEx on 6-May-02, which would have seen the Listing Committee abolished and a
new &quot;Listing Matters Committee&quot; to deal with appeals of decisions of
the full-time Listing Division, including the rejection of new listing
applications. That structure was in line with proposals outlined by the
Financial Services Bureau in a report <a href="http://www.info.gov.hk/fstb/fsb/reinforc/content.htm" target="_blank">published</a>
in Jul-99 (you'll find it on page 30 of the report). </p>

<p>Vested interests have been fighting the abolition of the Listing
Committees ever since, which is why we didn't see corresponding proposals
announced until nearly 3 years later. In the meantime, we've seen the launch and
collapse of the GEM market, and a GEM Listing Committee, of which Mr Ma was a
member, which waived and bent rules to allow companies with engineered track
records to be spun off from tycoon-controlled conglomerates. The GEM index is
down 85.7% from its high, but look on the bright side - there is only 14.3% left
to go! </p>

<p>Mr Ma's announcement also included internal restructuring of the
Listing Division and the way in which it processes listing documents and
circulars, and creation of the two new committees envisioned in the Jul-99 paper
under new names - the <i>&quot;Listing Policy Appeals Committee&quot;</i> to
deal with appeals of the Listing Division decisions on the Listing Rules, and
the <i>&quot;Disciplinary Appeals Committee&quot;</i> to hear appeals of
disciplinary decisions. </p>

<h3>Who does the Listing Committee serve?</h3>

<p>In his announcement, Mr Ma proposes to keep the Listing
Committees (after merging them together), which he claims have served Hong Kong
so well in the past. On the one hand, they claim that the listing admission
criteria are &quot;objective&quot; but on the other hand, they want the Listing
Committee to retain subjective &quot;gatekeeper&quot; control over who gets
listed or delisted and who does not. If the criteria were really so black and
white, then we wouldn't need any committee to consider whether or not a company
meets the listing criteria, as it would be obvious from the facts of each case.
Of course, the reality is different, and some judgement is always required. </p>

<p>So there is nothing wrong with the principle of having a
committee to render this final judgement (whether on appeal or in the first
instance), but there is plenty wrong with the way Hong Kong approaches it. When
a company comes to market, who buys the shares? Not the issuers, not their
bankers, lawyers, brokers or accountants, but the investors. And when it comes
to appeals of the SEHK's decisions on on-going Listing Rules, who suffers the
consequences? Investors, again. This simple fact argues for the majority of the
Listing Committee to be formed of investor-based representatives, not
issuer-based as is currently the case. Give professional investors a choice, and
they will reject a scam far more often than the people who promote them for a
living. </p>

<p>To kick off his newly merged Listing Committee, Mr Ma announced
nominations of <a href="http://hr.kpmg.com.hk/kpmg/asp/content_cn/ceo.htm" target="_blank">Marvin
Cheung Kin-tung</a> as Chairman, and Moses Cheng Mo-chi and Vernon Francis Moore
as Vice-Chairmen of the Listing Committee. Mr Cheung is local Chairman of big-5
accounting firm KPMG, which has over a hundred listed companies as clients,
while Moses Cheng is Senior Partner of&nbsp; solicitors P.C. Woo &amp; Co, whose
numerous clients include <a href="../dbpub/articles.asp?p=2117" target="_blank">Allied Group Ltd</a>.
Mr Cheng has been an independent director of many listed companies including <a href="../dbpub/articles.asp?p=7078" target="_blank">Pacific
Challenge Holdings Ltd</a>. Mr Moore is a director of HK-listed conglomerate CITIC
Pacific Ltd. Both Mr Cheng and Mr Moore are existing members of the main board
committee. If this is an indication of the shape of the new Listing Committee of
<i>&quot;24-30 members independent and broadly based&quot; </i>(others have yet
to be announced), then it looks very much like the old one and we are not
impressed. </p>

<p>Incidentally, Mr Cheung and Mr Cheng are the Chairman and
Vice-Chairman of the <a href="http://www.eaa.org.hk/organisation/content.html" target="_blank">Estate
Agents Authority</a>, of which Mr Ma is or was a member. </p>

<h3>For-profit regulators are conflicted</h3>

<p>Regardless of this, Mr Ma continues to duck the real issue: the
admission and regulation of listed companies properly belongs with the SFC, not
the SEHK. The entire Listing Division of SEHK should be transplanted to the SFC,
and it should be given the resources and legal backing to do its job and to fine
offenders. London got this right, and the <a href="http://www.fsa.gov.uk/ukla/" target="_blank">UK
Listing Authority</a> was moved out of the London Stock Exchange and across to
the UK Government's Financial Services Authority when the LSE was demutualised.
The FSA has powers to fine listed companies and their directors for breaking the
rules. There is no reason by Hong Kong should be any different. </p>

<p>The HKEx seeks to <a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2002/0206112news.htm" target="_blank">defend</a>
its position by comparing itself with Australia, Singapore and New York. We
believe Australia and Singapore, where the listing divisions remain with the
listed exchange, have got it wrong. It is only a matter of time before they
recognise this, and situations like the collapses of HIH Insurance and OneTel in
Australia may accelerate the debate. The third comparison is invalid because (i)
the New York Stock Exchange is not-for-profit, (ii) the SEC has a much greater
role in enforcement than our SFC does here, and (iii) there is civil enforcement
from shareholder class actions as an additional deterrent to shareholder abuse.
In any case, nobody is holding out the New York Stock Exchange as a safe haven
of corporate governance and Hong Kong cannot seek comfort by comparison with it. </p>

<p>Incidentally, the Australian Stock Exchange does not have a
Listing Committee, only a <a href="http://www.asx.com.au/ListingRules/guidance/appeals.pdf" target="_blank">Listing
Appeals Committee</a>. The Singapore Stock Exchange has neither, reaching all
decisions internally. </p>

<h3>Statutory backing</h3>

<p>The second reason why the Listing Division should be moved to
the SFC is the lack of teeth in the Listing Rules. As a commercial entity, the
SEHK can only enter into contractual arrangements with listed issuers, and
cannot fine them or their directors for breaches of the Listing Rules, nor does
it have any investigatory powers. In legal terms, it has no statutory backing,
and as a commercial entity it would be inappropriate to give it those powers. To
our knowledge, the SEHK has never sued a listed company for breaching the
Listing Agreement or directors' undertakings to comply with Listing Rules, and
it is difficult to see what damages the SEHK would claim to have suffered
anyway. </p>

<p>So the deterrent for breaking the Listing Rules is incredibly
low. In 2001, the SEHK processed 140 cases of Listing Rules breaches (these are
just the ones they know about) which led to 8 public censures, 8 public
criticisms (tell us the difference) and five private reprimands (otherwise known
as the &quot;get them round for a cup of tea&quot;&nbsp; penalty). 117 cases got
nothing more than a private warning letter. So in all, there were 16 public
telling-offs in one year - is that enough to terrify 900 listed companies into
compliance? </p>

<p>The recent <a href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=02pr72" target="_blank">announcement</a>
that regulatory disclosures would be dual-filed with the SEHK and SFC, go only a
fraction of the way to dealing with this - while the SFC can then pursue cases
of false and misleading disclosure, all other breaches of the rules will be
dealt with by the SEHK in the traditional way. </p>

<p>Mr Ma promises a review of the &quot;new&quot; structure after
two years - presumably, after two years of operation and another year of
consultation. Can Hong Kong really afford to wait until 2006 to get a regulatory
structure that works? </p>

<p>The merging of two Listing Committees and the retention of
listing admission and regulation by HKEx is really just a new coat of paint on a
rusting ship, and the track record show that our existing listing regime is
defective. But then Mr Ma and his colleagues on the Listing Committees were
never that good at rejecting duff track records. </p>

<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13780">SEHK Listing Committee</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=17269">Ip, Stephen Shu Kwan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=877">Ma, Frederick Si Hang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=2656">Tang, Henry Ying Yen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6609">Tien, James Pei Chun</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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