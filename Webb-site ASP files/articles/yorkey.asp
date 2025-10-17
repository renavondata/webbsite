
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

<script type="text/javascript">document.title="Porky Yorkey";</script>

	<div class="summary">We call on fellow independent shareholders of Yorkey (2788.HK, 9188.TT) to vote against the connected transactions and demand a distribution of HK$0.81 per share. The stock trades at $0.65, a 39% discount to its cash and a 55% discount to its NAV.</div>

<h2 class="center">Porky Yorkey<br>
<span class="headlinedate">25 May 2013</span></h2>
<p><a href="../dbpub/orgdata.asp?p=32013">Yorkey Optical International (Cayman) Ltd</a> (<strong>Yorkey</strong>, 2788) is 
a company suffering from corporate obesity - it is stuffed with cash, and has 
been since it listed in 2006, having consistently failed to execute its IPO 
investment plan or otherwise deploy the capital into its business.</p>
<p>At 
31-Dec-2012, Yorkey had cash of US$113m (HK$878m) and no borrowings. The cash is 
worth HK$1.06 per 
share. Yesterday the shares <strong>closed at $0.65, a 39% discount to the cash</strong>. The 
market capitalisation is HK$538m (US$69.3m). The stock is also at a 55% discount 
to net asset value of $1.43 per share. 74% of the net assets are cash.</p>
<p>Now, after a change of control and the exit of a co-founder, Yorkey
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0522/LTN20130522147.pdf" target="_blank">
is seeking</a> independent shareholders' approval to carry on dealing with its 
new 27.4% shareholder and using the cash to extend generous credit, putting the 
money at risk. With your help, we now aim to resolve this problem in the 
interests of all shareholders. <strong>Vote against the connected transactions, 
and demand a distribution of the surplus cash. We reckon they can pay out $0.81 
per share and still have a comfortable contingency fund.</strong></p>
<p>The dividend would benefit all shareholders, including the controllers. It 
would slim down Yorkey, deter its customers eyeing the cash pile and demanding 
more credit, and would dramatically boost the rate of return on equity.</p>
<h3>Background</h3>
<p>Yorkey is engaged in the manufacture and sale of plastic and metallic parts 
and components of optical and opto-electronic products in China. Customers named 
in the IPO prospectus include Canon, Konica, Minolta, Nikon, Olympus, Pentax, 
Ricoh, Samsung and Toshiba.</p>
<p>Yorkey was founded in 1995 and prior to the IPO and pre-IPO 
subscriptions, it was 55% owned by Mr Cheng Wen-Tao (<strong>Mr Cheng</strong>), 
then CEO, via Asia Promotion Optical International Ltd (<strong>Asia Promotion</strong>, 
BVI) and 45% by Ability Enterprise Co., Ltd. (<strong>Ability Enterprise</strong>,
<a href="http://www.bloomberg.com/quote/2374:TT" target="_blank">2374.TT</a>), 
which is listed in Taiwan.</p>
<p>Yorkey listed in HK on 10-Feb-2006 after an IPO of 190m new shares (including
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2006/0302/LTN20060302054.pdf" target="_blank">
30m over-allotment</a>) and 40m existing shares at $2.20. This raised gross 
proceeds for Yorkey of HK$418m (US$53.9m). The prospectus contained an 
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2006/0126/02788/EWP121.pdf" target="_blank">
investment plan</a> for the proceeds, 90% of which was for equipment purchases and 10% for 
working capital.</p>
<p>In early 2006 just before the IPO, Taiwan-listed Asia Optical Co., Inc. (<strong>Asia Optical</strong>,
<a href="http://www.bloomberg.com/quote/3019:TT" target="_blank">3019.TT</a>)&nbsp; 
subscribed for 40m shares @HK$1.592, raising $63.68m (US$8.21m) and Fortune 
Lands International Ltd (<strong>Fortune Lands</strong>) subscribed for 120m 
shares @HK$0.32, raising HK$38.40m (US$4.95m).</p>
<p>Taking the pre-IPO issues and the IPO together, net of expenses, Yorkey 
raised US$65.4m. This added to a pre-IPO cash pile of US$43.6m at 31-Dec-2005, so at 
31-Dec-2006, Yorkey had US$125.0m of cash and no borrowings. Six years later, 
the company has proven that it didn't need the money, which remains untouched. 
Fixed assets were US$27.9m in 2006 and $24.2m in 2012. Turnover was US$82.2m in 
2006, peaked at US$124m in 2007 and was $92.8m in 2012. Net profit peaked at 
US$27.7m in 2007 (including $5.2m of interest on the cash) and was just US$0.06m 
in 2012.</p>
<p>After the IPO and the over-allotment, Yorkey was 29.16% owned by Asia 
Promotion, 23.86% by Ability Enterprise, 14.46% by Fortune Lands, 4.82% by Asia 
Optical and 27.71% by the public.</p>
<h3>About Fortune Lands</h3>
<p>Fortune Lands does not have a beneficial interest in the shares it holds. It 
is the trustee of the &quot;Yorkey Employees' Trust&quot;, which was established by Yorkey 
to provide for incentives and reward to &quot;Eligible Participants&quot;. Before the IPO, 
Mr Tawara Seiichi, an employee of Yorkey, was nominated to hold 100% of Fortune 
Lands. Mr Cheng loaned HK$38.4m to Fortune Lands to subscribe for the 
deeply-discounted shares. On 1-Feb-2010 Mr Tawara
<a href="http://di.hkex.com.hk/di/NSForm1.aspx?fn=36397&amp;lang=EN&amp;dia=Y" target="_blank">
transferred</a> Fortune Lands to Mr Chen Yao Tang, a senior manager (but not a 
director) of Yorkey who joined the group in 2005 and heads the mould technology 
department.</p>
<p>Fortune Lands sold 5m shares on 15-Jan-2007 in an off-market 
deal at $2.467 per share, and in a week of on-market sales from 
27-Aug-2007 to 3-Sep-2007, sold another 2m shares, cutting to 113m shares where 
it stands today. The sales raised about HK$17.22m. The first two dividends in 
2006 and 2007 produced another $19.79m, so Fortune Lands could have repaid its 
debt to Mr Cheng by 30-Jun-2007, although we have no way of knowing whether it 
did. As the person who funded the original purchase, he continued to disclose an 
interest in the shares held by Fortune Lands
<a href="http://di.hkex.com.hk/di/NSForm3A.aspx?fn=107937&amp;lang=EN&amp;dia=Y" target="_blank">
until</a> 10-Mar-2011, the same day that he
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2011/0310/LTN20110310566.pdf" target="_blank">
stepped down</a> as CEO.</p>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2006/0126/02788/EWP116.pdf" target="_blank">
prospectus (p144-149</a>), outlines the terms of the Employee Trust, a 
points-based system (1 point per underlying share) which awards shares (and the 
income from them) to participants, with a 5-year vesting schedule. As there have 
been no further disposals of shares since 2007, it appears that this scheme is 
dormant. Either that, or each and every one of the participants have decided to 
leave their vested shares in the trust rather than sell them or take delivery of 
them. If the shares in the trust have not been fully allocated, then to whom do 
they belong when the scheme expires after 10 years in 2016? Were these shares 
really for employees?</p>
<h3>Buybacks</h3>
<p>From 3-Oct-2007 to 21-Dec-2007, Yorkey repurchased 2.222m shares at an 
average of $2.117. There has been no change in the outstanding shares since 
then. It would not make much difference if they were to use the repurchase 
mandate now, because at current prices, blowing the full 10% mandate would only 
absorb about HK$53.8m (US$6.9m), just 6% of the cash. Besides, the free float 
limit is 25%, and the float is only 41.5%, so the most they could buy would be 
16.5%.</p>
<h3>TDRs</h3>
<p>On 5-Oct-2009, Asia Promotion and Ability Enterprise transferred 80m shares 
into a Taiwan Depository Receipt (TDR) offering in Taiwan at TWD 8.2 (about 
HK$1.97) per TDR. In the Webb-site CCASS Analysis System, we can see that the 
shares were transferred to Citibank N.A. as depository, 24.833m from Ability 
Enterprise
<a href="../ccass/chldchg.asp?i=4701&amp;d=2009-10-05" target="_blank">on 
5-Oct-2009</a> (from its custodian First Worldsec Securities Ltd) and 55.167m 
deposited by Asia Promotion on
<a href="../ccass/chldchg.asp?i=4701&amp;d=2009-10-06" target="_blank">
6-Oct-2009</a>. The TDRs
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/1007/LTN20091007597.pdf" target="_blank">
began trading</a> on the Taiwan Stock Exchange on 8-Oct-2009 (code
<a href="http://www.bloomberg.com/quote/9188:TT" target="_blank">9188.TT</a>). 
This cut Asia Promotion's holding to 22.57%, and Ability Enterprise to 17.45%.</p>
<h3>Change of control</h3>
<p>On 19-Nov-2012, Mr Cheng's Asia Promotion
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2012/1119/LTN20121119322.pdf" target="_blank">
agreed</a> to sell its 22.57% stake to Asia Optical, purportedly for US$18.55m 
or&nbsp; HK$0.77 per share, increasing Asia Optical's stake from 4.83% to 
27.40%. While there is no evidence that Asia Promotion received anything more 
than that, this is an astoundingly low price given that the net asset value at 
30-Jun-2012 was $1.46 per share including $1.05 of cash per share. Mr Cheng 
could, as the CEO (before stepping down) and largest shareholder, have simply 
caused the board to declare a dividend of $0.77 per share and received the same 
amount while keeping his shareholding intact.</p>
<p>The sale was
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0308/LTN20130308289.pdf" target="_blank">
completed</a> on 8-Mar-2013.</p>
<h3>Dividends</h3>
<p>Dividends paid in the 7 years since IPO total HK$0.884 per share, almost the 
same as EPS of $0.875, so the company has paid out about 100% of its earnings, 
but that is not the point. It is grossly over-capitalised. Even if it had 
genuine plans to invest the money in its business in 2006, those plans have not 
been executed, and with turnover dropping and net margins reduced to nearly 
zero, it doesn't need the money now either. The cash is just sitting in the bank 
earning a paltry rate of interest.</p>
<p>Being a listed company, Yorkey has the flexibility to call on the markets 
with a rights issue if it should need funds for a good project later, but for 
now, it should return the money to all shareholders and allow them to invest it 
themselves in other companies that really need the capital.</p>
<p>With an average turnover in the last 2 years of US$107m per year, we consider 
that a contingency fund of 3 months' turnover, or US$27m, should be more than 
adequate. Trade receivables at 31-Dec-2012 were US$16.6m, or about 65 days' 
turnover, which is not unreasonable, but we would not want to see that situation 
deteriorate as customers eye the cash pile and demand more credit.</p>
<p>So with a US$27m contingency fund, Yorkey has US$86m more cash than it needs. 
That's about HK$0.81 per share. As a Cayman company, Yorkey can pay 
distributions &quot;out of share premium&quot; - that is, it does not need to do anything 
legally complicated even though the money would be a return of surplus cash 
rather than accounting profits.</p>
<p><strong>We call on Yorkey to immediately declare a distribution of $0.81 per 
share (including the pending $0.02 it has declared in respect of 2012). </strong></p>
<h3>Connected transactions</h3>
<p>Yorkey has for years been engaged in ongoing supplier and customer 
transactions with both Ability Enterprise and Asia Optical and their respective 
associates. If ongoing transactions with &quot;connected persons&quot; are large enough, 
then they are subject to approval by independent shareholders every 3 years.</p>
<p>Owning more than 10%, Ability Enterprise has always been a connected person 
of Yorkey. The previous agreement with Ability Enterprise was approved by 
independent shareholders (then including Asia Promotion and Asia Optical) and 
ran from 2010 until 31-Dec-2013. In the past, Asia Optical owned less than 10% 
of Yorkey, so was not a connected person until 8-Mar-2013, when it increased to 
27.4%.</p>
<p>On 25-Mar-2013, Yorkey
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0326/LTN20130326059.pdf" target="_blank">
announced</a> a renewal of transactions with Ability Enterprise and a 
conditional agreement for transactions with Asia Optical, for a period ending 
31-Dec-2015, bringing the two shareholders into synchronisation.</p>
<p>Unfortunately for investors in general, the Stock Exchange of Hong Kong (<strong>SEHK</strong>) 
has relaxed the thresholds for such transactions to require approval. In 2010, 
it was 2.5% of revenue or HK$10m, whichever was greater. Now, it is 5% of 
revenue, so Ability Enterprise does not need your approval this time around, 
while Asia Optical does.</p>
<h3>Extended credit</h3>
<p>The agreements include generous credit terms of up to 120 days for Asia 
Optical and its associates. That is a lot more than the average 65 days in the 
accounts, and in effect it allows Yorkey to use its cash pile to make 
interest-free loans to its largest shareholder in the form of extended credit. 
Yorkey says that Asia Optical was the largest customer in the past and is still 
one of the top 3 customers, and this is a reason for longer credit. To the 
contrary, in our view this is a reason for prudence, because if Asia Optical 
gets into financial difficulties, we don't want it causing large write-offs at 
Yorkey. Given the influence that Asia Optical has over Yorkey, if Asia Optical 
does get into financial distress, then it will lean on Yorkey to extend the 
credit period.</p>
<h3>Who can vote?</h3>
<p>For starters, Asia Optical cannot vote, as it is a party to the agreement.</p>
<p>Webb-site made a submission to SEHK, HK's for-profit regulator, arguing that 
Ability Enterprise should also be barred from voting in favour of Asia Optical's 
transactions, because it had simultaneously been granted a fresh agreement by 
Yorkey, and there was an obvious conflict of interest - we'll approve your 
agreement if you approve ours. SEHK should have allowed truly independent 
shareholders, i.e. the public float, to decide on this.</p>
<p>Webb-site also submitted that Fortune Lands, the trustee of the Yorkey 
Employees' Trust, should also be barred from voting, because it is too close to 
management. At the time of the IPO, 2 of the 4 directors of Fortune Lands were 
Mr Lai I-Jen and Ms Iris Wu Shu Ping, who are directors of Asia Optical. The 
other 2 were Mr Cheng (then CEO) and Mr Tawara, the employee nominee who owned 
it. If it exists to incentivise staff, then it presumably makes awards according 
to management recommendations based on performance of staff.</p>
<p class="regbox"><strong>Regulatory note:<br></strong>We have no way of knowing 
what SEHK did with our submission. When investors make complaints, it is very 
much a black hole approach - information goes in, but nothing comes out. The 
Exchange in theory has an &quot;Aggrieved Party&quot; procedure under
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_2b.pdf" target="_blank">
Listing Rule 2B.15</a>, where &quot;any person&quot; other than a listed issuer, its 
sponsor and authorised representatives, who is aggrieved by a decision of the 
Listing Division, can express his views in writing to the Chairman of the 
Listing Committee. The Listing Committee may decide to fully review the matter.<br>
<br>This rule is useless in practice, because after an investor files a 
complaint, she is not told what the decisions of the Listing Division are, let 
alone the reasons. As she is kept in the dark, she cannot know what to complain 
about. Meanwhile, after an investor complaint is made, the listed company can 
engage in a two-way discussion with the Listing Division to plead their case and 
negotiate an outcome. This is procedurally unfair to the complainant. </p>
<p>After repeated delays,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0522/LTN20130522147.pdf" target="_blank">
<strong>the EGM circular</strong></a> was finally published on Wednesday. It 
states that Ability Enterprise and Fortune Lands can both vote. It discloses 
that the board of Fortune Lands no longer includes the Asia Optical directors, 
but is now 5 people, namely Mr Cheng (who sold his Yorkey shares to Asia 
Optical), Mr Chen (the Yorkey senior manager and nominee owner of Fortune 
Lands), Mr Nagai Michio (the new CEO of Yorkey), Alan Chiang Hsiang Tsai, and 
Wang Yi Chi, who are both also &quot;independent&quot; non-executive directors of Yorkey.</p>
<p>Both of those INEDs are also Professors at Feng Chia University, Taiwan, and 
amazingly, <a href="../codocs/ProfAlanChiang.pdf" target="_blank">Prof Chiang</a> 
specialises in corporate governance and financial statement analysis, so he 
ought to recognise a bloated balance sheet when he sees one, and he's been 
sitting on top of one since 2006. Webb-site reached out to both of them by 
e-mail, hoping for support, but did not receive any response. In HK, INEDs are 
elected by controlling shareholders and are seen but not heard.</p>
<h3>Vote against the connected transactions</h3>
<p><strong>Shareholders should express their displeasure with the state of 
affairs at Yorkey by voting against the connected transactions and demanding a 
cash distribution. </strong></p>
<p><strong>The EGM is on Friday 7-Jun-2013, and voting cut-off at your broker or 
custodian will be well before that, so vote now.</strong></p>
<p>It may seem counter-intuitive to vote against transactions which involve the 
core business, but there are larger issues at stake, and besides, Yorkey barely 
made a profit last year, so it can hardly be said that Asia Optical, which only 
accounted for US$13.8m of transactions (both sales and purchases), is crucial to 
its success. They can always come back and propose tighter credit terms and a 
distribution of the cash.</p>
<p>At the current share price, shareholders would be far better off if 
Yorkey simply shut down its business, distributed its cash and sold the listing 
shell. A clean shell typically goes for a premium of HK$200-250m over NAV, which 
in Yorkey's case would be a premium of $0.24-0.30 over NAV of $1.43.</p>
<p>The public float of Yorkey is 41.5%. Ability Enterprise and Fortune 
Lands have 31.1% between them. So to defeat the proposal, we need to get at 
least 31.1/41.5 = 74.9% of the public shares to vote against. Some of those 
shares (originally 80m shares, or 9.66% of Yorkey) are in the TDR programme. We 
don't know how difficult it is to vote those - we hope that the TDR depository, 
Citibank, will do its job properly, have regard to its fiduciary duties, and 
seek voting instructions from TDR holders in Taiwan.</p>
<p>Webb-site founder David Webb holds over 4% of Yorkey, below the 5% disclosure 
threshold. Templeton Asset Management Ltd holds 6.99% at the
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=204877&amp;lang=EN&amp;dia=Y" target="_blank">
last disclosure</a> on 20-Feb-2013. With SEHK allowing Ability Enterprise and 
Fortune Lands to vote, we have an uphill struggle to muster the remaining public 
vote. If you buy the shares, then make sure you vote them - we don't want people 
just buying for the discount and then sitting on the sidelines hoping that 
someone else will do the work.</p>
<p>We did reach out to management by e-mail several weeks ago, inviting 
them to seize the initiative to slim down the balance sheet with a special 
dividend (think of it as corporate liposuction) and remove the possibility of 
the cash being raided through connected transactions, in which case we would 
vote in favour and say nothing publicly. All we got in response was a load of 
nonsense - for example, after shrinking headcount from 3837 to 2688 in 2012 (in 
line with falling turnover), they claimed that they needed US$30m to buy land to 
expand factory facilities. They also ear-marked US$35-45m for &quot;searching 
appropriate strategic partners to conduct M&amp;A&quot;. There has been no M&amp;A in 7 
years, but if they really had a good deal, shareholders would finance it in a 
rights issue. Capital commitments at 31-Dec-2012 were just US$0.3m.</p>
<p>Even if we lose this vote, a message will be sent by investors that the 
company should shape up from its corporate obesity and lose the excess weight by 
distribution.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=32019">Asia Optical Co., Inc.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=70482">TEMPLETON ASSET MANAGEMENT LTD</a></li>
				
				<li><a href="/dbpub/articles.asp?p=32013">Yorkey Optical International (Cayman) Ltd.</a></li>
				
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