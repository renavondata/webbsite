
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

<script type="text/javascript">document.title="Recor Losses";</script>

	<div class="summary">Spare a thought for long-suffering shareholders of Recor Holdings. This company is now on its third controlling shareholder in two years, and original investors, who have seen their shares fall 94% since the 1993 IPO, have yet to receive a general offer. Mystery surrounds the ownership of two large blocks of shares, with the latest controller squeezing under the takeover threshold by purchasing 34.9% of the company at a premium.</div>

<h2 class="center">Recor Losses<br>
<span class="headlinedate">17 May 1999</span></h2>
<p>Oh what a tangled web we weave - in our piece on Recor Holdings, we'll
take you through this company's tortured history and bring you up to date with the events
since its 1997 restructuring. In a strange sequence, directors have come and gone faster
than typhoons in spring. The 1997 rescuers, who originally held 52.5% of the company,
later transferred 15% to a director who resigned 9 days later.&nbsp; We don't know why he
resigned so soon, or what happened to another 15% once held by the company's founder. This
transfer, plus a small charitable donation, cut the rescuers' stake to 34.9%, just under
the takeover threshold, allowing them to transfer control last week at a 154% premium to
the market price without triggering a bid. But first, the background...</p>

<h3>History</h3>

<p>Recor was founded by James Hon Siu Chung in 1984 and listed on the SEHK on
13-Oct-93 with an IPO of 96m shares at HK$1.16 each, raising $98.1m net of expenses. The
issue was 6.3 times over-subscribed. The group was then a manufacturer of consumer
electronic products, mostly audio-visual, including TVs, VCRs, VCD players and music
systems.</p>

<p>The year ended 31-Mar-94 was Recor's best and only profitable year as a
listed company, with a net profit of $67.7m. The next year saw a small loss of $1.6m, and
then in the year ended 31-Mar-96, a huge net loss of $125m on turnover which fell 24% to
$791m. The group wrote off as an exceptional item $47m of development costs which had
previously been capitalised.</p>

<p>The Chairman wrote &quot;<em>profit margin was...eroded by the soaring
price of raw materials. Prices for plastics doubled in the first half of 1995</em>.&quot;
He reported a &quot;<em>sudden cancellation of orders from major customers combined with
the collapse of existing markets devastated the Group's business plan and ruined its
internal control systems...excessive raw materials were purchased and inventories were
stocked up</em>&quot;.</p>

<p>We find it puzzling that a collapse in orders could itself ruin internal
controls - more likely that they were somewhat lacking in the first place, allowing stocks
to build up ahead of firm orders. Stock levels at 31-Mar-95 had risen to $214m from $150m
a year earlier. It is always a temptation to think that you can &quot;time&quot; the
market by buying ahead of anticipated price rises, rather than matching raw materials with
orders on a when-needed basis. </p>

<p>Mr. Lam Hing Ching, who was a director of Asia Commercial Bank, one of
Recor's lenders, resigned as an independent non-executive director of Recor on 3-Aug-96. A
few weeks later, on 28-Aug-96 the shares of the company were suspended at $0.155&nbsp; due
to the financial difficulty of RCR Electronics Manufacturing (<strong>RCRM</strong>), the
Group's principal subsidiary, and a standstill agreement with its banks was entered into
on 10-Oct-96. In what might be termed a pre-emptive strike, on 31-Jan-97 RCRM conveyed its
fixed assets and stocks to Recor (RCR) Ltd, a BVI subsidiary of Recor, in partial
settlement of debts due by RCRM for $69.4m. On 19-Mar-97, a Provisional Liquidator was
appointed to RCRM after a winding-up petition from a creditor. </p>

<h3>Restructuring and the Siu Brothers</h3>

<p>A restructuring agreement was entered into on 12-Jun-97 and eventually the
deal was announced on 3-Nov-97. In this deal, rescuers Siu Man Pau and his younger brother
Siu Man Piu agreed through their company, Hoverton, to subscribe for 500m new shares at
$0.12 per share, injecting $60m into the company. Hoverton then transferred 43.5m shares
&nbsp; (5% of Recor) to founder James Hon, and he entered into a service contract with
Recor, becoming Vice Chairman and MD but surrendering his Chairmanship to Siu Man Pau. The
Sius then held 52.5% of Recor. Hoverton was advised by Lippo Securities while Recor was
advised by Pacific Challenge Capital.</p>

<p>Under a scheme of arrangement of RCRM, the unsecured debts owed to banks
and other unsecured creditors (excluding PRC creditors) totalling $137.6m were settled at
20 cents on the dollar, or a total of $27.5m, with $110.1m being written off.</p>

<p>The bankers were:</p>

<blockquote>
  <p>Asia Commercial Bank<br>
  Bank of China<br>
  Credit Agricole<br>
  Kwong On Bank<br>
  Overseas Trust Bank<br>
  Standard Chartered Bank<br>
  State Street Bank &amp; Trust<br>
  Banco Hispanoamericano<br>
  Standard Chartered</p>
</blockquote>

<p>(Sorry, we couldn't resist it). Only 3 of these, Asia Commercial, Kwong On
and OTB, had been listed as &quot;Principal bankers&quot; in Recor's 1995-6 annual report.
Standard Chartered also acted as Agent Bank in the restructuring. Mr. Hon transferred
60.7m shares (7% of Recor) to the Agent Bank in return for the banks waiving all his
personal guarantees of Recor's debt to them. This reduced Mr. Hon's holding to 14.5%. The
Banks agreed not to sell the shares (except to Mr. Hon) for a year, and then to give Mr.
Hon first refusal. That period expired on 24-Mar-99, and we don't know whether the banks
have dumped the stock.</p>

<p>If you are wondering what happened to the PRC creditors, who were excluded
from the scheme of arrangement, take a look at our sidepiece on the company's <a href="recorprop.asp" target="_blank">property problems</a>.</p>

<h3>Parallel business</h3>

<p>Siu Man Pau, his wife and the wife of Siu Man Piu were the sole owners of
Botin Holdings, a private HK company which imports and distributes brand-name domestic
electrical appliances. Siu Man Pau was President of Botin and his brother was MD. To keep
Botin and Recor's business separate, it was agreed that Botin would in future be
restricted to cameras, air-conditioners and personal stereo systems.</p>

<p>When the restructuring was completed on 24-Mar-98, Mr. Dennis Ho Chi Kuen,
managing partner of solicitors K.F. Wong &amp; Co, was appointed as a new Independent
Non-executive Director, as was Mr. David Tiang Wei Ping. However, Mr. Tiang resigned the
next day and was thanked for his &quot;valuable contribution to the company&quot;. What a
difference a day makes. At the same time, a new Executive Director, Mr. Hui Sui Lun, was
appointed.</p>

<h3>CD and DVD stamping</h3>

<p>On 9-Dec-98 Recor agreed to lease an &quot;ODC Mastering System&quot; for
the manufacture of CD and DVD disc stampers from a lessor who wasn't named. The lease was
in the amount of HK$27.4m, payable over 16 months with interest on the outstanding balance
at 1-month HIBOR +3% p.a.. There was a 30% down-payment and 15 equal monthly instalments.</p>

<p>The lessor, no doubt aware of Recor's history, required that during the
lease, Recor shall not borrow from banks or financial institutions without the lessor's
consent, and any money lent to Recor by the Siu brothers shall not be secured or repaid
without the lessor's consent. In addition (known in the industry as the &quot;belt <em>and</em>
braces approach&quot;) the Siu brothers gave a personal guarantee to purchase the
equipment if Recor defaulted on the lease. <strong>We don't know whether that guarantee is
outstanding now that the Siu brothers have sold their stake in Recor.</strong></p>

<h3>...and the other half of the picture</h3>

<p>It was another month before we learnt the other part of this picture. In
an announcement on 6-Jan-99, Recor explained that most of the CD and DVD stampers to be
produced by the equipment would be supplied to a company called Manwide Development, to
enable it to produce CDs and DVDs. Manwide was &quot;previously engaged in properties
trading&quot;. </p>

<p>Manwide was owned as to 10% by Mr. Leung Chi Hung and 90% by Mr. Pan Zhi
Qing. On 6-Nov-98, Manwide agreed to buy from Toolex (Hong Kong) Ltd 14 CD replication
lines for US$5.99m (HK$46m), with a down-payment of 20%. The remaining 80% is payable from
31-Dec-98 in 2 monthly instalments of US$199,500 and 11 of US$399,000. </p>

<p>On 11-Dec-98 (2 days after Recor signed the lease for its ODC Mastering
System), Manwide had agreed with a 100% subsidiary of Recor to purchase disc stampers for
a period of 18 months from 1-Jan-99. Terms were not disclosed.</p>

<p>On 22-Dec-98, Recor agreed to guarantee the remaining US$4.79m (HK$37m),
in return for a monthly fee of HK$400k for 12 months from 1-Jan-99. The guarantee fees
amount to 13% of the initial amount outstanding, or 26% of the average amount during the
term of the payments. The guarantee is effectively secured against the CD replication
lines and the shares of Manwide.</p>

<h3>Mr. Hui's shareholding</h3>

<p>Mr. Hui Sui Lun was appointed an Executive Director of Recor after the
restructuring was completed on 25-Mar-98. He had no shareholding at that time, but
according to statutory disclosures, he acquired 151.9m shares from Hoverton (held by the
Siu brothers), or about a third of Hoverton's holding, on 29-Dec-98 for $0.076 per share,
or HK$11.54m. This gave him a 17.5% stake in Recor, and reduced Hoverton's stake to 35.0%.
</p>

<p>9 days later, on 7-Jan-99, Mr. Hui resigned, a strange move for someone
who had just acquired a 17.5% stake. A search through subsequent disclosures does not
reveal any reduction in his stake. At the same time, Mr. Chen Zhi Qiang and Mr. Wong Hoi
Ching were appointed as Executive Directors. We don't know anything else about them, or
whether they have a shareholding, or whether they have any connection to the CD/DVD
project, but they didn't stay long....</p>

<h3>What's in a name?</h3>

<p>Recor must be the only company in recent history to see shareholders veto
a change of name. On 8-Jan-99, the board called a shareholders' meeting to change the
company's name to &quot;GB Int'l Holdings Limited&quot;. The reason was &quot;<em>to mark
a change in the management of the Company since 7th January 1999 as well as to enhance its
corporate image</em>&quot;. What image consultant would come up with a name like that,
apostrophe and all? On 2-Feb-99, the Special Resolution (which required a 75% majority of
votes cast) was defeated. </p>

<p>We don't know who voted against the resolution. The founder and former
Chairman, Mr. James Hon, resigned on 19-Sep-98 on health grounds, but remained a
substantial shareholder through his company, Berwyn Ltd. In fact his stake was increased
from 126.4m shares (14.5%) to 134.7m shares (15.5%) sometime between 30-Dec-98 and
8-Feb-99, when he reduced it back to the previous level. The meeting occurred between
these 2 dates.</p>

<p>Later, on 27-Mar-99, the reasons for the proposed change of name became a
little clearer. Recor announced that 4 out of the 5 employees of the marketing department
had resigned on 31-Dec-98. 2 of them, together with 2 other ex-employees (who resigned on
31-Aug-98 and 1-Oct-98) from another department, had formed &quot;Recor Trading
Company&quot; with the intention of promoting the products under the Recor trademark. They
had effectively out-sourced themselves. The Recor brand accounted for 74% of Recor's
turnover in the year to 31-Mar-98.&nbsp; So Recor has granted them a licence to use the
brand for HK$1 per year until 31-Dec-2001 and an option to buy it for HK$300k. It appears
that Recor had little choice, because sales under the brand collapsed to zero in Jan-99
and Feb-99. In future, Recor will have first refusal to manufacture brand orders generated
by Recor Trading. However, the company admitted that &quot;<em>a lot of its products are
old fashioned and lag behind the market trend</em>&quot;. Don't hold your breath!</p>

<h3>The Founder disposes of his stake</h3>

<p>On 10-Feb-99, the founder, Mr. Hon, reduced his holding by 73.6m to 52.8m
shares (6.07%). As this is below the 10% disclosure threshold, we don't know if the
position has changed since. There were no transactions in the shares on either day in the
stock market, so we can only assume that the block, equal to 8.5% of Recor (or more if the
rest has been disposed of), went to one or more off-market private buyers. The price was
not disclosed.</p>

<h3>Recor changes control again, with no bid</h3>

<p>On 7-May-99, the Siu brothers agreed to sell Hoverton to Mr. Cheung Ying
Nang, making him the new controlling shareholder. That day, Hoverton donated 400,000
shares in Recor to a charity, reducing its holding to just below the 35% level at which
transfer of Hoverton would have triggered a takeover bid. The resultant holding was 304.2m
shares, or 34.96% of Recor. Mr. Cheung has a 30% stake in a Beijing joint venture which
makes Video CDs. </p>

<p>The price of HK$45m equates to about $0.148 per Recor share, a 154%
premium to the ten-day average closing price of $0.0582 up to 7-May-99, and also a 51%
premium to adjusted unaudited net asset value at 30-Sep-98. Taking into account the $11.5m
value of shares transferred to Mr. Hui in Dec-98, the Siu brothers had almost got their
$60m investment back, excluding any salary they may have received from Recor.</p>

<p>The announcement dated 10-May-99 stated that Mr. Wong Hoi Ching and Chen
Zhi Qiang had &quot;been resigned&quot; that day. They had only joined the board on
7-Jan-99. Both Siu Brothers will stay on at Recor, but Mr. Siu Man Pau has left the board
and become deputy general manager. This means that any shareholding he may have in the
future would not be discloseable. Neither brother had any holding immediately after the
transaction.</p>

<p>Mystery surrounds the recent events. Are the Siu brothers still
guaranteeing the lease on the ODC Mastering System? Does Mr. Hui still hold his 17.5%
stake, and if not, who does? Why did he resign so soon after acquiring it? Who bought Mr.
Hon's 8.5%-15.5% stake?&nbsp; As far as we know, nobody is acting in concert with Mr.
Cheung. This is just as well, because if anyone was, then their combined stake might be
above the takeover threshold.</p>

<p>As for the original IPO shareholders, if any are left, they have seen
their $1.16 reduced by 94% to $0.065 and have only&nbsp; 6 cents of dividends (in 1994 and
1995) to show for it. That's what we call a Recor loss.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=4951">Minerva Group Holding Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=8357">Cheung, Ying Nang</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8352">Ho, Dennis Chi Kuen</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8341">Hon, James Siu Chung</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7638">Hui, Sui Lun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8346">Lam, Hing Ching</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8351">Siu, Man Pau</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=7641">Siu, Man Piu</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8353">Tiang, David Wei Ping</a></li>
				
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