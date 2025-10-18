
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

<script type="text/javascript">document.title="Nagacorp controller's dealings";</script>

	<div class="summary">A recent court case highlights the dealings of Chen Lip Keong, controlling shareholder of Cambodian casino firm Nagacorp (3918). Given his numerous outside interests, and the ongoing pledges of shares, investors should be concerned about how much debt he might be carrying and the risk that he may need to, or be forced to, sell part or all of his stake in Nagacorp.</div>

<h2 class="center">Nagacorp controller's dealings<br>
<span class="headlinedate">28 January 2011</span></h2>
<p>It seems like we get more information from court judgments than we do 
from corporate disclosures these days.</p>
<p>One case that caught our eye before Christmas, and we are now finding time to 
write up, is <em>
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=74165&amp;currpage=T" target="_blank">
Chen Lip Keong v Evolution Master Fund Ltd SPC, Segregated Portfolio M</a></em> 
in the Court of First Instance. This ongoing case concerns
<a href="../dbpub/positions.asp?p=36544">Chen Lip Keong</a> (<strong>Dr Chen</strong>), 
the founder, controlling shareholder and CEO of
<a href="../dbpub/orgdata.asp?p=36541">NagaCorp Ltd</a> (<strong>Nagacorp</strong>, 
3918), which operates the only licensed casino in Phnom Penh, Cambodia on a 
70-year franchise from 1995, and claims the exclusive right to casinos on 
Cambodian territory within a 200-km radius of Phnom Penh (minus a few bits) 
until the end of 2035.</p>
<p>The defendant in the court case, which we will call <strong>EMF</strong>, 
is managed by <a href="../dbpub/orgdata.asp?p=39885">Evolution Capital 
Management LLC</a> (<strong>ECM</strong>). ECM was founded in 2002 by Michael 
Lerch, its Chief Investment Officer, and is based in Santa Monica, California. 
Over the years, ECM has invested in a
<a href="http://di.hkex.com.hk/di/NSSrchPersonList.aspx?sa1=pl&amp;scsd=01/01/1900&amp;sced=27/01/2011&amp;pn=Evolution+Capital&amp;src=MAIN&amp;lang=EN" target="_blank">
ragbag of companies</a> listed in HK, none of which we would touch with a barge 
pole, but that's what makes a market. Its local licensed entity is
<a href="../dbpub/officers.asp?p=55505">Evo Capital Management Asia Ltd</a>.</p>
<p>Nagacorp listed on 19-Oct-2006. According to the judgment, prior to that, Dr 
Chen became acquainted with <a href="../dbpub/positions.asp?p=55506">Frank 
Dominick</a>, then Managing Director of the Evolution group of companies, and on 
13-Jun-2007, EMF agreed to lend Dr Chen US$15m, repayable within 12 months of 
the drawdown, secured by Dr Chen's pledge of 114,333,658 shares (5.51%) of 
Nagacorp. The loan was drawn down on 18-Jun-2007. We note that EMF
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=67320&amp;lang=EN&amp;dia=Y" target="_blank">
disclosed</a> a security interest in 114,333,659 shares (<strong>Pledged Shares</strong>) 
on 13-Jun-2007, and that it also acquired a derivative interest in 49,263,993 
shares.</p>
<p>According to the judgment, some time prior to 19-Nov-2007, Dr Chen delivered 
to Mr Dominick a further 10m shares, for reasons which are in dispute.</p>
<p>On 6-Jun-2008, Dr Chen and EMF agreed to extend the loan by 1 year to 
18-Jun-2009. On 23-Sep-2008, due to a falling share price, EMF required Dr Chen 
to deliver a further 27,088,159 shares to keep the value at not less than 
US$30m, that is, twice the loan amount. Rounding this up, the next day Dr Chen 
delivered another 30m shares.</p>
<p>On 10-Jun-2009, the loan was extended again, with US$7.5m (less dividends) to 
be repaid by 30-Jun-2009 and the other half by 31-Oct-2009. The 40m additional 
shares that Dr Chen had already delivered were then formally pledged to EMF, 
taking the total to 154,333,658 shares.</p>
<p>By Nov-2009, with US$7.5m outstanding, there was a further extension, with 
US$2m due by 31-Dec-2009 (which was duly repaid) and the remaining US$5.5m by 
31-Mar-2010. In preparation for repayment, Dr Chen told EMF that there would be 
payments from two sources, and obtained an e-mail from Richard Chisholm (<strong>Mr 
Chisholm</strong>), General Counsel and Chief Compliance Officer of ECM, 
confirming the amounts due. US$3.5m of the payment came from a new lender,
<a href="../dbpub/orgdata.asp?p=63822">DMG &amp; Partners Securities Pte Ltd</a> (<strong>DMG</strong>) 
of Singapore, in exchange for the release of 100m shares to DMG, and the 
remaining shares were to be released to LGT Bank after payment of the balance. 
Dr Chen's private company, and DMG, paid the agreed amounts on 30-Mar-2010, and 
DMG received 100m shares, but the remaining shares were not released.</p>
<p>Dr Chen then instructed lawyers Richards Butler to chase EMF for the 
remaining shares. On 9-Apr-2010, Mr Chisholm for EMF replied that:</p>
<blockquote>"It's clear that your client has not provided you with the 
entire story. The obligations under the loan agreement have not been met. In 
addition, the counterparty has been in default. Lastly, there are other 
obligations that your client has breached."</blockquote>
<p>After further warnings from Dr Chen's lawyers, two weeks later on 23-Apr-2010 
EMF finally gave specifics on what it said was wrong, responding through lawyers 
Simmons &amp; Simmons. It said that an event of default had occurred because Nagacorp had 
traded below $1.43 per share for more than 3 consecutive days, and that there 
had been delays in repayment of principal and interest, both constituting events 
of default for which interest was due - claims it had not previously made. It 
also said, and here's the shocker, that:</p>
<blockquote>&quot;a sum of HK$134,750,000 would become payable by [Dr 
Chen] to [EMF] by close of business on 7 May 2010 under an oral agreement made
<u>in 2008</u> which obliged [Dr Chen] to buy from [EMF] at 
its request, up to 55 million shares in Nagacorp at the predetermined price of 
HK$2.45 per share&quot; (<u>emphasis added</u>)</blockquote>
<p>In other words, EMF says that Dr Chen had orally granted a put option. That 
anyone would do this by word of mouth, over such a large value, might seem 
implausible, unless at least one of the parties had a good reason not to put it 
in writing, because of the evasion of some law or regulation.</p>
<p>In defence of the demand for return of the shares, Mr Chisholm told 
the court that the Put Option was concluded orally between Dr Chen and EMF &quot;some 
time towards the end of October 2007&quot; (not in 2008 as it had said on 
23-Apr-2010) and the 10m shares that were delivered in Nov-2007 were as security 
for his obligations under the put option. That seems hard to believe when you 
consider that 10m shares were only worth about $23.4m at the time, only about 
17% of the amount of the alleged put option.</p>
<p>&nbsp;EMF says that the oral agreement was 
as follows:</p>
<ul>
	<li>EMF would buy up to 55m shares of Nagacorp [presumably, in the market]</li>
	<li>Dr Chen would try to find a buyer for the shares at $3 per share</li>
	<li>The profit would be split between EMF and Dr Chen equally</li>
	<li>If Dr Chen could not find a buyer at $3, then Dr Chen would (i) buy the 
	shares at $2.45; or (ii) pay EMF the difference between what EMF sold the 
	shares for and $2.45; or (iii) find a buyer at $2.45</li>
</ul>
<p>EMF says it bought about 44m shares at $2.45 per share (presumably, an 
average of actual purchase prices) between 30-Oct-2007 and 20-Mar-2008, which it 
would not have done but for the put option. Looking at the
<a href="../dbpub/hpu.asp?i=4781">market data</a> during that period, we 
find total volume of 170.474m shares at an average of $2.238 per share. So EMF's 
purchases were about 26% of total market volume.</p>
<p>EMF says that on or about 23-Apr-2010, the date that it replied to Dr Chen, 
it exercised the Put Option to sell the shares to Dr Chen, and that he failed to 
pay for them.</p>
<p>To verify the market purchases, we looked at
<a href="http://di.hkex.com.hk/di/NSNoticePersonList.aspx?sa2=np&amp;scpid=1974876&amp;sa1=pl&amp;scsd=01%2f01%2f1900&amp;sced=26%2f01%2f2011&amp;src=MAIN&amp;lang=EN" target="_blank">
EMF's disclosures</a>. The disclosure as at 26-Oct-2007 when it crossed the 8% 
disclosure boundary shows that its long position (excluding derivatives and 
pledged shares) was <strong>2,456,000</strong> shares. That was 4 days before it 
says it started buying in purported reliance on the put option.</p>
<p>On 1-Nov-2007, EMF apparently stopped treating the Pledged Shares as a 
security interest and started treating them as assets under management (code 
202), as shown in
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=79466&amp;lang=EN&amp;dia=Y" target="_blank">
this filing</a>. On 14-Dec-2007, it went through the 9% boundary, by which stage 
its holding (excluding derivatives) had increased to 126,947,659, or 12,614,000 
if you exclude the Pledged Shares. On 5-Mar-2008, it went through the 10% 
boundary, by which stage it held 148,083,659 shares, or 33,750,000 if you 
exclude the Pledged Shares. On 10-Jun-2009 (the day of the supplemental loan 
agreement) the
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=116147&amp;lang=EN&amp;dia=Y" target="_blank">
disclosure</a> shows the increase of 40m (being the additional shares pledged) 
and EMF then starts treating the original Pledged Shares as security interests 
again. Apart from those, and excluding derivatives, it has <strong>34,050,115</strong> 
shares. There are no further disclosures during the relevant period to 
20-Mar-2008, but we can see that EMF's claims to have bought about 44m shares 
are consistent with these disclosures. </p>
<p>If the alleged oral put option is true, then it appears that EMF was 
acting in concert with Dr Chen to support the share price, without him 
disclosing it. EMF had upside potential, but its downside would be nil as long 
as Dr Chen honoured the put option. He would have had a disclosure obligation of 
his contingent interest in 55m shares under the put option. </p>
<p>The court dismissed Dr Chen's application for summary judgment, concluding 
that the matter must go to trial. So unless there is a settlement, the details 
of this case should emerge in full trial. Meanwhile, the SFC should be looking 
closely at Dr Chen's various dealings.</p>
<p>At the time of 
the Nagacorp IPO, Dr Chen also had controlling interests in
<a href="../dbpub/orgdata.asp?p=39597">Karambunai Corp Bhd</a>, a resort firm in 
Sabah, <a href="../dbpub/orgdata.asp?p=36546">FACB Industries Inc Bhd</a>, a 
stainless steel pipes and fittings maker, and
<a href="../dbpub/orgdata.asp?p=36547">Petaling Tin Bhd</a>, a property 
developer, all of which are listed in Malaysia and are relatively small compared 
to Nagacorp. According to their web sites, he remains involved as President of 
Karambunai, Executive Director of FACBI, and President of Petaling Tin. None of 
these positions was mentioned in the
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20100429/LTN20100429206.pdf" target="_blank">
AGM circular</a> of 29-Apr-2010 when he came up for re-election. That's a breach 
of
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_13.pdf" target="_blank">
Listing Rule 13.51(2)(c)</a>. He also has a private company which is or was involved in oil and 
gas exploration in the Gulf of Siam, called Resourceful Petroleum Ltd.</p>
<p>Dr Chen has also 
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=125459&amp;lang=EN&amp;dia=Y">pledged</a> 148m 
Nagacorp shares (7.10%) to
<a href="../dbpub/orgdata.asp?p=56833">Yardley Finance Ltd</a>, wholly owned by 
Mr <a href="../dbpub/natarts.asp?p=15551">Chan Kin Sun</a> (<strong>Mr Chan</strong>), 
on 9-Nov-2009. Mr Chan has a regulatory history. Another block of 236,956,383 
shares (11.38%) was
<a href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=143995&amp;lang=EN&amp;dia=Y" target="_blank">
pledged</a>, probably by Dr Chen or his trust, to OSK Investment Bank (Labuan) 
Ltd on 22-Sep-2010, according to the filing. DMG is jointly owned by OSK 
Investment Bank Bhd of Malaysia and Deutsche Bank.</p>
<p>Given Dr Chen's numerous outside business interests and the share pledges, 
investors should be concerned about how much debt Dr Chen might be carrying 
against his shareholding and the risk that he may need to, or be forced to, sell 
part or all of his stake in Nagacorp.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=63822">DMG & Partners Securities Pte Ltd</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55505">Evo Capital Management Asia Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=39885">Evolution Capital Management LLC</a></li>
				
				<li><a href="/dbpub/articles.asp?p=36546">FACB Industries Incorporated Berhad</a></li>
				
				<li><a href="/dbpub/articles.asp?p=39597">Karambunai Corporation Berhad</a></li>
				
				<li><a href="/dbpub/articles.asp?p=36541">NagaCorp Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=36547">Petaling Tin Berhad</a></li>
				
				<li><a href="/dbpub/articles.asp?p=56833">YARDLEY FINANCE LIMITED</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=15551">Chan, Kin Sun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=36544">Chen, Lip Keong</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=55506">Dominick, Frank</a></li>
				
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