
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

<script type="text/javascript">document.title="One Board, One Regulator";</script>

	<div class="summary">We respond to HKEX's 2nd attempt to introduce 2nd-class shares via a "New Board", rather than cleaning up its existing boards and transferring listing regulation to the statutory regulator which oversees takeovers, the SFC. Coupled with recent moves to embed the Communist Party in the constitutions of state-controlled enterprises, HK and China risk a toxic combination of no votes for government and no votes for capital, leading to an emerging tycoon-Communist Party oligarchy. We propose a better approach.</div>

<h2 class="center">One Board, One Regulator<br>
<span class="headlinedate">7 August 2017</span></h2>

<p>We mentioned in our article <a href="shells.asp">Preventing Cash 
Shells</a> (3-Mar-2016) that <a href="../dbpub/articles.asp?p=9643">Hong Kong 
Exchanges and Clearing Ltd</a> (<strong>HKEX</strong>, 0388), the owner of HK's 
monopoly Stock Exchange of Hong Kong Ltd (<strong>SEHK</strong>), was proposing 
a "third board" for listing stocks, rather than addressing the problems with the 
existing Main Board and Growth Enterprise Market (<strong>GEM</strong>). As we 
said then, HKEX is "rather like a village that refuses to build a proper 
sewerage system and instead digs another cesspit to accommodate a larger 
population, ignoring the fact that eventually nobody wants to live in a 
disease-ridden village."</p>
<p>15 months later on 16-Jun-2017, HKEX has published a "<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2017061.pdf" target="_blank">Concept 
Paper</a>" on a third board, or what critics are calling the "Turd 
Board", for obvious reasons. Possible marketing slogans are "Float your sh*t on 
the Turd Board". Kinder suggested names include "The Third Time Lucky Board" or 
the "Third-Class Board" - for companies that do not qualify for the other two 
boards. HKEX calls it the "New Board", with 2 segments - effectively a third and 
fourth board.</p>
<p>This article is Webb-site's submission on both the Concept 
Paper and the related consultation on the GEM. For reasons that will become 
apparent, we are not going to answer the
<a href="https://en.wikipedia.org/wiki/Loaded_question" target="_blank">loaded 
questions</a> in HKEX's crafty questionnaires. The proposals take entirely the wrong direction to 
improve HK's markets. As detailed below, there are aspects of HK's listing 
criteria that play no role in corporate governance and should be abolished to 
facilitate listings, but we favour a single board, under a single statutory 
regulator (the SFC), combining listing and takeover regulation, and not the 
4-board mess that HKEX advocates.</p>
<p>The HKEX Concept Paper jumps the gun on a consultation on listing 
regulation which ended on 18-Nov-2016 and for which, after 9 months' gestation, 
no conclusion has yet been announced. Our submission on that
<a href="listingreg.asp">is here</a>. The joint HKEX-SFC proposal 
was to move all listing policy issues to a new Listing Policy Committee (<strong>LPC</strong>), 
with equal representation from HKEX and the SFC. If that goes ahead, then HKEX's 
unilateral Concept Paper becomes rather pointless.</p>
<h3>WVR 2.0</h3>
<p>The Concept Paper is entirely motivated by a wish to list companies with what HKEX 
euphemistically calls "Weighted Voting Rights" or "WVR structures" - either 
listing second-class shares with reduced or no voting rights, or allowing 
peculiar governance structures such as that of
<a href="../dbpub/articles.asp?p=1852090">Alibaba Group Holdings Ltd</a> 
(NYSE:BABA), which has only one class of shares but entrenches management rights 
to nominate directors in its Articles of Association, thereby reducing the 
effect of voting rights held by shareholders. In either case, the ability of 
public shareholders, large or small, to engage in governance would be reduced or 
eliminated.</p>
<p>HKEX initially tried to do this in an Aug-2014
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2014082.pdf" target="_blank">concept paper</a> on proposals to put WVR structures on the Main Board. This 
resulted in a
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2014082cc.pdf" target="_blank">
conclusions paper</a> on 19-Jun-2015 containing draft proposals for primary 
listing of WVR structures in a second round of consultation, which was shot down 
6 days later when the board of directors of the SFC (a majority of which is 
non-executive) unanimously <a href="../codocs/SFC150625.pdf" target="_blank">
rejected</a> them, citing "core principles of fairness and transparency". As the 
SFC's approval is needed for any change to the Listing Rules, that was the end 
of it.</p>
<p>Undeterred, HKEX CEO <a href="../dbpub/natarts.asp?p=52480">Charles Li 
Xiaojia</a> began pushing for a work-around, attempting to ring-fence the target 
companies in a third board. Such an arrangement would of course be entirely 
artificial and involve the same concerns stated by the SFC when it rejected the 
proposals in 2015, including:</p>
<blockquote>"The SFC is of the view that Hong Kong’s securities markets and 
reputation would be harmed if WVR structures became commonplace...Unrestricted, 
post-listing transactions could over time result in the transfer of a 
significant proportion of existing listed businesses and assets to WVR 
structures. In the SFC’s view, such a development would be detrimental to our 
markets and the interests of the investing public generally."</blockquote>
<p>Grouping WVR companies into a separate "board" doesn't solve that problem, 
and in any case, the shares would be traded and settled on the same platforms as 
the Main Board and GEM. In fact, HKEX is now proposing two new boards, both 
allowing WVR structures. One, dubbed "New Board PRO", would be restricted to 
"professional investors" and would allow companies with no financial track 
record and have a "light touch" to vetting. Given the capital lettering, perhaps 
PRO stands for Professional Rip-Offs. The other, "New Board PREMIUM" would be 
open to all investors, but given the inclusion of WVR structures, should 
probably be called "New Board DISCOUNT".</p>
<h3>An emerging tycoon-Communist Party oligarchy</h3>
<p>The push to strip equity owners of governance rights needs to be seen in a 
broader, political context. China is a country which already deprives its 
citizens, both in the mainland and in HK, of the right to elect their 
leaders, and now it is pushing via the HKSAR Government (<strong>HKSARG</strong>) and HKEX to deprive 
investors of voting rights to govern the use of their capital, on the "home 
soil" of HK, free of oversight by foreign regulators. At least US-listed Chinese 
WVR companies have some oversight from US regulators (in turn appointed by an 
elected government) and are subject to potential class action in the US courts 
even if their underlying assets (or contracts) are in China.</p>
<p>That lack of accountability, both in Government and for the use of 
capital, would be a particularly toxic combination. It would lead to further 
entrenchment of the Communist Party leadership alongside tycoons who are 
answerable to nobody but themselves, and work together with the leadership to 
further their mutual interests. A new oligarchy is emerging. Migrating 
overseas-listed Chinese companies back to Chinese soil, while maintaining their 
WVR structures, is part of that emerging picture.</p>
<p>This comes as an increasingly assertive Communist Party is now abusing the 
state's voting rights to amend the Articles of Association of state-controlled 
enterprises, including those listed in HK, to entrench its role. For example,
<a href="../dbpub/articles.asp?p=9490">China Petroleum &amp; Chemical Corp</a> 
(0386), aka Sinopec, recently
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0427/LTN201704272794.pdf" target="_blank">
did so</a>,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0626/LTN20170626664.pdf" target="_blank">
as did</a> China Machinery Engineering Corp (1829). Datang International Power 
Generation Co Ltd (0991)
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2017/0630/LTN201706301016.pdf" target="_blank">
will do so</a> on 15-Aug. Notably, the PRC's pretence that it is a
<a href="https://en.wikipedia.org/wiki/List_of_political_parties_in_China" target="_blank">
multi-party state</a> is discarded by allocating these powers to "The Communist 
Party" rather than "The Government".</p>
<p>Institutional investors appear to have been asleep at the wheel when 
some of these amendments were passed, but even if they all voted against (as 
they should), the resolutions would still be passed, because HKEX has allowed 
the Government to vote its majority holdings in favour, despite the obvious 
conflict of interest.</p>
<p>If an individual HK tycoon were proposing to embed himself in the 
Articles of Association of a company he controls, perhaps regulators would raise 
a red flag, but HKEX does not oppose the Communist Party which, via 
state-controlled companies, is its single largest customer. The red flag that 
HKEX raises for them is
<a href="http://english.cpc.people.com.cn/206972/206981/8188029.html" target="_blank">
the other kind</a>, with a hammer and sickle on it.</p>
<p>Imagine the outcry if the Articles of Association of RBS Group plc were 
amended (using the UK Government's majority vote) to entrench the Conservative 
Party in its governance structure. Governments in multi-party democracies would 
never attempt such a thing.</p>
<h3>Professionals are not isolated, they manage the public's money</h3>
<p>Second-class shares are unpopular amongst investors even in democratic 
countries. In response to pressure from organisations such as the US
<a href="http://www.cii.org/" target="_blank">Council of Institutional Investors</a>, 
S&amp;P Dow Jones Indices
<a href="http://press.spglobal.com/2017-07-31-S-P-Dow-Jones-Indices-Announces-Decision-on-Multi-Class-Shares-and-Voting-Rules" target="_blank">
announced</a> last week that it would no longer admit companies with multiple 
share classes to its S&amp;P Composite 1500 indices (including the flagship S&amp;P 
500), although it has not (yet) evicted existing multi-class companies such as 
Facebook or Ford Motor.</p>
<p>Some would argue that nobody has to buy second-class shares if they don't 
want to, or even that the shares should be limited to "professional investors" - 
but this overlooks the fact that if more and more assets are held via WVR 
structures, then those professionals who manage the public's money - including 
asset managers, pension trustees, college endowments, sovereign wealth funds and 
so on, would have little choice but to own WVR shares in order to get 
diversified exposure to the economy.</p>
<p>The notion that professional investors are somehow able to overcome a deficit 
of voting rights or bad governance by listed companies, or that restricting the 
market to professionals would insulate the general public is false. Bad governance hurts us all. Investors do 
not acquire new rights by being "professional". The beneficiaries of all money 
managed by professional fiduciaries are ultimately the general public.</p>
<p>With so many scam stocks and corporate governance problems amongst HK-listed 
mainland companies, and with major overseas investor groups and index providers 
starting to rebel against second-class shares, the last thing HK needs is to 
weaken investor rights further. It would strengthen HK's reputation as the wild 
East rather than a trustworthy destination for capital.</p>
<h3>Secondary listings: a path to evasion</h3>
<p>Both new boards would also allow "secondary listing" of mainland 
companies with overseas primary listings (particularly, the USA), effectively 
outsourcing regulation to the USA and by-passing HK rules, but presumably in the 
hope that the bulk of the trading volume would migrate to HK. This would leave 
HK investors without some of the most important protections such as the HK rules 
requiring minority shareholder approval of connected transactions, while at the 
same time, the investors would be unlikely to be covered by US class action rights as 
their investments were made in HK. It's the worst of both worlds.</p>
<p>There are currently
<a href="../dbpub/listed.asp?e=s&amp;t=s&amp;d=2017-08-06&amp;s=dateup">only 7 
secondary listings</a> in HK, of which 6 have only tiny amounts of shares in the HK 
clearing system, ranging from 0.01% to 1.37% of their issued shares. The 
exception is <a href="../dbpub/articles.asp?p=56082">SouthGobi Resources Ltd</a> 
(<strong>SouthGobi</strong>, 1878), which is the only one that conducted a 
public offering in HK while maintaining a primary listing overseas. Over 7 
years, the proportion of SouthGobi's shares in the HK clearing system
<a href="../ccass/ctothist.asp?i=5591">has risen</a> from 16.13% to 97.05%, 
yet its primary listing regulator is still in Toronto. However, in 2014, the 
SFC's Takeover Panel
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/corporate-news/doc?refNo=14PR81" target="_blank">
revoked</a> SouthGobi's exemption from the Takeovers Code, leaving SouthGobi 
with the unique status of being treated as a secondary listing by HKEX but as a 
public company in HK by the SFC under the Takeovers Code. That's what you get 
when you have split regulation.</p>
<p>If a company is going to have a substantial shareholder base and 
trading in HK, then it will need to conduct an offering in HK, and if it does 
that, then we believe that it should be treated as a primary listing under the 
Listing Rules and a public company under the Takeovers Code. Otherwise, we will see evasion by outsourcing on a grand scale.</p>
<h3>HKEX has a WVR structure</h3>
<p>Ironically, HKEX itself has a WVR structure (using its own broad definition) 
because only 6 of its 13 directors can be elected by shareholders, the others 
being directly or indirectly appointed by the HKSARG, 
although it only owns about 6% of HKEX. This peculiar structure reduces the 
ability of investors to engage in stewardship by electing the board. There is 
one other HK-listed company with HKSARG appointees, train operator
<a href="../dbpub/articles.asp?p=11569">MTR Corp Ltd</a> (0066), but that is 
majority-owned by HKSARG, so HKSARG elects all the other directors (including 
the so-called INEDs) anyway.</p>
<p>By comparison, the US Government does not appoint any directors to the 
multiple competing stock exchanges there, nor does the UK Government appoint 
directors to UK exchanges. In both markets, substantially all the regulatory 
powers are held by statutory regulators, the US Securities and Exchange 
Commission and the UK Financial Conduct Authority (via the
<a href="https://www.fca.org.uk/markets/ukla" target="_blank">UK Listing 
Authority</a>), while competing exchanges set their own criteria for trading 
stocks on a commercial basis. Put simply, a for-profit regulator like HKEX has a 
conflict of interest in setting and administering (or waiving) Listing Rules.</p>
<h3>The so-called "New Economy"</h3>
<p>In the concept paper and in other forums, HKEX has sought to portray the 
absence of WVRs (itself excepted) as a loss of so-called "New Economy" stocks. Of course, at 
any point in time at least since the Industrial Revolution moved us away from 
agrarian subsistence, part of the economy involved new technology. Railways were 
once new technology. 
Broadcasting was new. The transistor was new, and then the microchip, the personal 
computer and the internet were new. HKEX admits that "it is hard to define such 
companies" but rather desperately tries to define the "New Economy" as:</p>
<blockquote>"Industries include Biotechnology, Health Care Technology, Internet 
&amp; Direct Marketing Retail, Internet Software &amp; Services, IT Services, Software, 
Technology Hardware, Storage &amp; Peripherals"</blockquote>
<p>Defined in this way, the paper states that</p>
<blockquote>"companies from New Economy industries that have listed on our 
market in the past ten years make up only 3% of our total market 
capitalisation".</blockquote>
<p>That is true but misleading. It is only natural that newer companies tend to 
be (but are not always) smaller than older ones, as they grow after listing if 
they are successful. The average size of IPOs in HK has declined from abnormally 
high levels over the last 20 years, but that is because the stream of giant 
state-owned enterprises (banks, insurers, petrochemicals and so forth) coming to 
the market has largely been exhausted. In that respect, HK is now returning to 
more normal conditions.</p>
<p>The 
10-year window chosen by HKEX excludes HK's largest listed company, internet 
gaming, chat and payment firm <a href="../dbpub/orgdata.asp?p=21290">Tencent 
Holdings Ltd</a> (0700), which listed in 2004 and closed on 31-Jul-2017 with a 
market cap of HK$2,977bn (US$381.7bn), or 9.34% of the
<a href="https://webb-site.com/dbpub/mcaphist.asp?e=a&amp;s=mcpdn&amp;t=s&amp;d=2017-07-31" target="_blank">
entire HK market of HK$31,878m</a>. 10 years earlier, Tencent
<a href="../dbpub/outstanding.asp?i=3601">was worth</a> just HK$64.53bn, and 
it was even smaller when it listed, at just HK$6.2bn.</p>
<p>Also excluded is <a href="../dbpub/orgdata.asp?p=4901">Lenovo Group Ltd</a> 
(0992), a leading global computer-maker listed in 1994, which ranked 98th by HK 
market cap at the end of July, and smartphone speaker-maker
<a href="../dbpub/orgdata.asp?p=28231">AAC Technologies Holdings Inc</a> (2018), 
listed in 2005 and worth HK$128.5bn at the end of July. Smartphone camera-maker
<a href="../dbpub/orgdata.asp?p=39891">Sunny Optical Technology (Group) Co Ltd</a> 
(2382) listed just over 10 years ago and was worth HK$102.0bn at the end of July 
but only $4.02bn on the day it listed, 15-Jun-2007 (and
<a href="../dbpub/outstanding.asp?i=4873">shrank</a> to just HK$490m on 
31-Jan-2009).</p>
<p>It is true that there is a concentration of Chinese internet stocks in the 
USA, including recently-listed Alibaba and older dotcom era companies such as 
NetEase Inc (NASDAQ:NTES) and SINA Corp (NASDAQ:SINA). Some of these have WVR 
structures, but many of them chose the US because of its existing investor and 
analyst base focussing on the internet. If WVR was the real reason that HK 
"lost" these listings, then we would also be losing listings from other sectors, 
such as property, manufacturing or finance. We haven't.</p>
<p>It is also unsurprising that HK's market, of which more than half 
is now mainland businesses, has a heavier weighting of manufacturing and 
property stocks. China is still a developing economy, and developing economies 
tend to be heavier on infrastructure investment and manufacturing, and lighter 
on services and technology. The HK market is a mirror of China's economy, not of 
the US economy.</p>
<p>Remember also that many of the US's most successful tech companies have only one 
class of share, including Microsoft, Apple, Intel, Hewlett-Packard and IBM. Each 
of them in their time was "New Economy", but none felt the need to 
disenfranchise shareholders.</p>
<p>A few authoritarian or emotionally insecure CEOs feel a 
need to protect their jobs with WVR structures, but losing those listings to the 
US (or any other market which races to the bottom, such as Singapore) is to HK's 
overall gain, because it implies that we have maintained, or improved, on 
standards which will attract other issuers with better pricing than they would 
get if we joined that race to the bottom.</p>
<p>Incidentally, another misleading comparison has been made by several 
commentators measuring the turnover of US-listed Chinese stocks against HK's 
market turnover, claiming that HK has "lost" this turnover. That comparison 
fails to recognise that due to the absence of stamp duty, transaction costs in 
the US are far lower than in HK, facilitating high-frequency trading that is 
simply not feasible in HK. If such stocks were instead listed in HK, their 
turnover would be substantially lower. Stamp duty is currently a 0.2% round trip 
for HK stocks.</p>
<h3>The Enigma meltdown and systemic failure</h3>
<p>The most recent demonstration of HK's systemic failure of listing regulation 
was the
<a href="https://www.bloomberg.com/news/articles/2017-06-27/-enigma-network-roils-hong-kong-markets-with-sudden-90-losses" target="_blank">
meltdown</a> on 27-Jun-2017 of dozens of stocks in what <em>Webb-site</em> 
called the <a href="enigma.asp">Enigma Network</a> when we 
graphically identified it 6 weeks earlier. This collapse, on both the Main Board 
and GEM, was the biggest meltdown since the Penny-Stocks Incident of 2002, which 
led, after an initial inquiry (the <a href="pipsireport.asp">PIPSI 
Report</a>), to the Government's appointment of a 3-man Expert Group, which
<a href="../dbpub/artlinks.asp?s=11610">concluded</a> in Mar-2003 that:</p>
<blockquote>"The 
listing function must be removed from the HKEx and performed by a new division 
of the SFC to be known as the Hong Kong Listing Authority".</blockquote>
<p>That recommendation, 
which would have brought HK into line with the US and UK, was briefly accepted 
by the Government before it was dropped on opposition from local tycoons and 
HKEX.</p>
<p>So here we are 15 years later, and history, not having been learned from, is 
being repeated.</p>
<p>Since the SFC's creation, it has regulated public company takeovers via 
the Takeovers Code, overseen by the Takeovers Panel, of which your editor has 
been a member since 2001 and a Deputy Chairman since 2013, but front-line 
Listing regulation has remained with SEHK.</p>
<p>You might think that the Enigma meltdown would be enough to remind HKSARG and 
its new Chief Executive of this unfinished business, but we fear that they 
are more interested in pursuing the national agenda of furthering the oligarchy 
by listing WVR companies than they are in building a better quality market.</p>
<p>That's a shame, because ultimately HK and Chinese companies would be more 
competitive globally if they were governed to higher standards, both internally 
and externally through laws and regulations. All other things being equal, 
investors will pay more for stocks in a market with a strong governance 
framework, including investor rights and remedies, than stocks in a market which 
has raced to the bottom, because investors expect a fairer share of the returns 
from the underlying businesses. Higher prices are the flip-side of a lower cost 
of capital, which increases competitiveness as companies can take on projects 
with lower rates of return.</p>
<h3>Scrap GEM, Go OBOR (One Board, One Regulator)</h3>
<p>The New Board Concept Paper was launched simultaneously with a
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2017062.pdf" target="_blank">
consultation paper</a> on a review of GEM and consequential proposed changes to 
the GEM and Main Board Listing Rules, intended to isolate GEM from the Main 
Board by reinstating a requirement for a sponsor and a listing document to move 
up to the Main Board. There is also an SFC-inspired requirement to have a public 
offering (not just a placement) in GEM listings, as if that would prevent the 
formation of bubbles. It won't - there have been many bubbles on the Main 
Board despite the public offer requirement.</p>
<p>This really misses the mark. What HK needs is an end to the artificial 
distinction between GEM and the Main Board. We need a single board, let's call 
it the "One Board", with a single set of Listing 
Rules, taking the best aspects of both markets and improving on them. We need to 
remove archaic requirements that do not contribute to corporate governance and 
instead make the process of listing unnecessarily cumbersome or expensive. The 
One Board Listing Rules should be administered by the HK Listing Authority 
under the SFC, and the combined requirements should include:</p>
<ol>
	<li>Strictly one share, one vote.</li>
	<li>A 3-year track record for a new entrant with an unqualified audit 
	report, under substantially the same management as it will have at listing. 
	Anything shorter than that belongs in the unlisted private equity or venture 
	capital markets, with the possible exception of dedicated project companies 
	managed by people with an existing track record of projects.</li>
	<li>Very Substantial Acquisitions of other companies should be prohibited 
	unless the target has a 3-year unqualified track record.</li>
	<li>No requirement for a profit before listing - let investors decide, based 
	on the 3-year track record, whether they want to own a loss-making company 
	(or what HKEX euphemistically calls a "pre-profit" company). After all, in 
	any given year, numerous existing companies are loss-making.</li>
	<li>No requirement for a public offer tranche at listing (same as GEM). 
	Whether to have one, and in what form, should be a commercial judgement for 
	a listing applicant and its advisers.</li>
	<li>No minimum market capitalisation. If a company is willing to pay the 
	listing fees and satisfies track record requirements, let the market decide.</li>
	<li>No minimum <a href="../dbpub/subject.asp?c=176">public float</a>. Again, 
	let the market decide, and stop suspending shares and trapping minority 
	shareholders when the free float shrinks.</li>
	<li>Full disclosure of the identities of subscribers (including beneficial 
	owners of 10% or more of their votes or equity) and the numbers of shares 
	subscribed in placings, whether at initial listing or subsequently.</li>
	<li>Full disclosure of the identities of beneficial owners of counterparties 
	to notifiable transactions (acquisitions, disposals or loans) by listed 
	companies. No more hiding behind BVI curtains.</li>
	<li>Mandatory <a href="../dbpub/subject.asp?c=177">quarterly financial reporting</a> - something that Shanghai- and 
	Shenzhen-listed companies have been doing since 2002, as has every GEM 
	company since 1999, as has almost every other market in Asia. The HK Main 
	Board has been the laggard - it has only been a "Recommended Best Practice" 
	in the Code on Corporate Governance. The 3 quarterly statements should 
	include balance sheets and cash flow statements (GEM still doesn't), but do 
	not need to be audited.</li>
	<li>INEDs: boards or shareholders can continue to nominate candidates for 
	election as Independent Non-Executive Directors, but controlling 
	shareholders, executive directors and their associates must abstain from 
	voting in the elections, due to their obvious conflict of interests. This 
	will leave independent shareholders to elect the INEDs. Otherwise, INEDs
	<a href="3wisemonkeys.asp">serve at the pleasure of the King</a>, 
	making a joke of their independence.</li>
	<li>Tighten the permissible <a href="../dbpub/subject.asp?c=173">general 
	mandate</a> to dilute existing shareholders by issuing new shares for cash, 
	with a maximum of 5% enlargement in any year, at a maximum discount of 5% 
	(currently: 20% at a 20% discount). Any larger size or discount should 
	require a rights issue, or approval by 75% of votes cast by independent 
	shareholders on a special resolution. This would raise HK pre-emption 
	standards to the UK's.</li>
	<li>Introduce a Cash Shell Limit as we proposed in 2016, to prevent listed 
	companies hoarding excess capital or entering into transactions which would 
	make them a cash shell. For details, <a href="shells.asp">click 
	here</a>.</li>
</ol>
<h3>Other issues</h3>
<p>Separately, HKSARG must legislate to:</p>
<ol>
	<li>provide investors with access to justice in the form of
	<a href="../dbpub/subject.asp?c=111">class action rights</a>. The loser-pays 
	costs system will deter vexatious or meritless cases;</li>
	<li>abolish the common law against <a href="../dbpub/subject.asp?c=109">champerty and maintenance</a>, to allow 
	litigation finance companies to finance litigation;</li>
	<li>allow solicitors and barristers to work on a contingent fee basis, for 
	the same reason. &nbsp;Existing legal remedies have remained largely unused due to these 
	first three issues;</li>
	<li>impose a statutory duty of care on auditors to shareholders and 
	creditors, not just to the listed companies that employ them. When auditors 
	fail in their duties, the losses accrue to shareholders and creditors, not 
	to listed companies.</li>
	<li>repeal the statutory monopoly of SEHK on running a stock market from the 
	Securities and Futures Ordinance, and revoke the exemption of HKEX and its 
	subsidiaries from the Competition Ordinance;</li>
</ol>
<p>Last but not least, the SFC must require intermediaries who hold shares for 
clients, including banks and brokers, to notify clients of voting opportunities 
and provide an online mechanism for voting 
those shares at every general meeting. The intermediaries can either establish 
those systems themselves, or outsource it to Hong Kong Securities Clearing Co 
Ltd (owned by HKEX) which operates an online voting system for
<a href="https://www.hkex.com.hk/eng/prod/clr/sec_clrsett/segacct/Documents/SSA_booklet_eng.pdf" target="_blank">
Stock Segregated Accounts</a>. Currently, a lot of bad proposals are passed in 
shareholder meetings simply because retail investors are practically unable to 
vote. There is no point in having equal voting rights if they are not 
exercisable.</p>

<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=115">Competition</a></li>
				
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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