
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

<script type="text/javascript">document.title="Minsheng tax grab, HKEx conflicts";</script>

	<div class="summary">Minsheng Bank (1988) just grabbed RMB115.6m from H-share holders and paid it to the Government with no good reason. We explain why bonus share issues by PRC issuers are not just silly but damaging to shareholder value. We also look at the conflict of interest for HKEx, which recently signed a strategic MoU with Minsheng and is pursuing relationships with other banks while acting as their listing regulator. The SFC should now take over regulation of these listings, but has declined to do so.</div>

<h2 class="center">Minsheng tax grab, HKEx conflicts<br>
<span class="headlinedate">30 June 2014</span></h2>
<p><a href="../dbpub/orgdata.asp?p=9318">China Minsheng Banking Corp., Ltd.</a> 
(<strong>Minsheng</strong>, 1988) has just taken RMB115.6m (HK$145.8m) from 
H-share holders and paid it to the Central People's Government without any good 
reason, as we will explain.</p>
<p>With the 2013 results, Minsheng announced &quot;2 shares of stock dividends for 
every 10 shares&quot;, or what it called &quot;Bonus Shares&quot;, to be &quot;paid&quot; out of the 
retained profit of the Bank as of 31-Dec-2013. That was alongside a real cash 
dividend of RMB 1 for every 10 shares, before withholding tax. Incidentally you 
will notice that in quirky China, Minsheng and some other companies are in the 
habit of defining distributions &quot;per 10 shares&quot; rather than per share, and using 
unsimplified ratios like 2 for 10 rather than 1 for 5.</p>
<p>As we've <a href="bonusplit.asp">said before</a>, even when there 
are no tax implications, issuing bonus shares is a pointless waste of 
administrative costs. A bonus issue does not give any value to shareholders, it 
just subdivides what they already own into a larger number of shares, similar to 
a stock split. Same pizza, more slices.</p>
<p>But in mainland China, there are tax implications which make some bonus 
issues not just silly but destructive of shareholder value. When a PRC company 
transfers part of its reserves from the &quot;retained profit&quot; account to the &quot;share 
capital&quot; account in the balance sheet, this is deemed to be a &quot;distribution&quot; of 
profits to shareholders, equivalent to the par value (normally RMB 1) for each 
bonus share issued, even though shareholders aren't actually receiving any 
value.</p>
<p>So, although the Minsheng cash dividend was only RMB 0.1 per share, 
shareholders are also deemed to have been &quot;paid&quot; RMB 0.2 per share, in the form 
of bonus shares, for a total of RMB 0.3 per share.</p>
<p>Now, for &quot;Non-resident Enterprise&quot; (<strong>NRE</strong>) registered holders 
of H-shares, an &quot;Enterprise Income Tax&quot; of 10% is withheld from the 
distribution, and for individuals in HK, a PRC &quot;Individual Income Tax&quot; of 10% is 
withheld. Under PRC law, NREs include nominees, so HKSCC Nominees Ltd (<strong>HKSCCN</strong>), 
the<em> </em>registered holder for all shares in the HK clearing system run by 
HKEx, is an NRE. HKSCCN
<a href="../ccass/choldings.asp?d=2014-06-11&amp;sort=holddn&amp;i=5487" target="_blank">
held</a> 99.38% of all H-shares before the bonus issue.</p>
<p>The tax of 10% on RMB 0.3 reduces the cash dividend from RMB 0.10 per share 
to RMB 0.07 per share, and in effect it is a <strong>30% withholding tax</strong> 
on the dividend, not 10%.</p>
<p>Based on the 5,777,982,840 H-shares outstanding before the bonus issue, the 
extra tax of RMB 0.02 per share amounts to <strong>RMB115.6m</strong> 
(HK$145.8m). The situation for non-enterprise A-share holders (mainland 
individuals) is worse, because they are taxed at 20%, so the tax on the bonus 
issue reduces their dividend from RMB 0.10 to RMB 0.04, an effective tax of 60%. 
That's also the case for any H-share holder with a registered address in a 
country that has no tax treaty with China, although there are probably none, 
because as we said, most of the H-shares are held by HKSCCN. Dividends between 
mainland-resident enterprises are not taxable, so Minsheng's PRC corporate 
shareholders won't lose anything.</p>
<p>The extra tax of RMB0.02 (about HK$0.025) per share is entirely avoidable, 
because Minsheng did not have to make the bonus issue and it serves no economic 
purpose. At the closing price of HK$8.16 per H-share before they went 
ex-distribution, this is a reduction in shareholder value of about 0.31%. If 
they did that every year, the compounding effect would mean that the deemed 
distribution would be (per current share), RMB0.2 this year, RMB0.24 next year, 
RMB0.288 the year after and so on, and the extra tax would be 10% of those 
amounts.</p>
<p>If any of this sounds familiar, that's because
<a href="bonussharetax.asp">we wrote about</a> the problem three 
years ago, when <a href="../dbpub/articles.asp?p=5606">Bank of Communications 
Co., Ltd.</a> (3328) declared a bonus issue which took 50% off the final 
dividend for 2010 and paid it to the Government. </p>
<h3>Not their first time</h3>
<p>Minsheng should have been aware of this problem, because they have done this 
before. In 2010, they made a bonus issue of 2 shares for every 10 held, and the 
closing price on the day before the ex-date was HK$8.43. This reduced the cash 
dividend from RMB0.05 per share (before tax) to RMB0.025, an effective tax rate 
of 50%. The extra tax of RMB0.02 (then HK$0.0228) destroyed about 0.27% of 
shareholder value. So with this second bonus share issue, <strong>the board has 
now destroyed about 0.6% of shareholder value in 4 years</strong>. The tax was 
the subject of an
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2010/0708/LTN20100708420.pdf" target="_blank">
announcement</a> on 9-Jul-2010 in which the board said:</p>
<blockquote>&quot;Apart from the dividends to be distributed, the bonus 
shares converted from the retained profits of the Company represent income from 
equity investment on the part of shareholders shall also be at the same time 
subject to the above tax laws, and an enterprise income tax shall be levied on 
the face value of the bonus shares distributed to non-resident enterprise H 
Shareholders at the tax rate of 10%.&quot;</blockquote>
<p>So why on Earth do it again? The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2014/0422/LTN20140422567.pdf" target="_blank">
circular</a> proposing the 2014 bonus issue gives the following statement of 
reasons:</p>
<blockquote>&quot;The Board believes that the proposed Bonus Issue enables 
the Shareholders to share the business growth of the Company. In addition, the 
Bonus Issue will also enlarge the share capital of the Company and increase the 
liquidity of Shares in the market.&quot;</blockquote>
<p>and in the 2010
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2010/0429/LTN201004291043.pdf" target="_blank">
circular</a> they said:</p>
<blockquote>&quot;The Board believes that the proposed Bonus Issue will 
allow the Shareholders to participate in the growth of the Company. In addition, 
it will provide the Company with a wider share capital base and therefore 
increase the marketability of the Shares.&quot;</blockquote>
<p>This is, in layman's terms, complete and utter hogwash. Shareholders already 
&quot;share the business growth&quot; with their existing shares, and cutting the farm 
into smaller fields does not make the farm bigger. On the share capital point, 
converting retained earnings into share capital just reduces the amount of 
earnings that could in future be distributed as cash dividends, so that is not 
in shareholders' interests either. Finally, for the liquidity and marketability 
argument, when you have a board lot of 500 shares worth only about HK$4,000, you 
are not going to make the stock materially more accessible by splitting it, 
because minimum brokerage fees make purchases at that size uneconomic. </p>
<p>In fact, the bonus issue creates &quot;odd lots&quot; of shares which are more 
difficult to dispose of (at a discount) and increases some transaction costs 
which are charged per-board-lot (particularly scrip fees), because you have 20% 
more board lots than before with the same total value value (minus the tax hit). HKEx, as operator of the central depository, is one of the main beneficiaries of 
scrip fees.</p>
<p>But the &quot;reasons&quot; statements in the circulars are worse than hogwash, because 
they failed to warn shareholders that the bonus issues would actually result in 
a reduction in the net cash dividend and therefore be damaging to shareholder 
value. We regard the statements to be false and misleading by omission.</p>
<h3>Who's the regulator?</h3>
<p>You might be tempted to write to the Stock Exchange, as the &quot;front-line 
regulator&quot; of listings, complaining that the circular didn't warn you about the 
negative tax consequences before you voted in favour of the bonus issue. But 
before you write to them, you might want to look at this photo:</p>
<a href="http://www.youtube.com/watch?v=ETxmCCsMoD0" target="_blank">
<img class="center" alt="Minsheng-HKEx strategic cooperation" src="../images/minshengHKEx.jpg"></a>
<p>Yes, that is <a href="../dbpub/positions.asp?p=52480">Charles Li Xiao Jia</a>, 
CEO and unelected director of <a href="../dbpub/articles.asp?p=9643">Hong Kong 
Exchanges and Clearing Ltd</a> (<strong>HKEx</strong>, 0388), shaking hands with 
the President and Vice Chairman of Minsheng,
<a href="../dbpub/positions.asp?p=54383">Mr Hong Qi</a> after
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2014/140423news.htm" target="_blank">
signing</a> a Memorandum Of Understanding between HKEx and Minsheng for 
&quot;strategic cooperation on solutions for market users and product development&quot;. 
Amongst other things, the MOU would &quot;give HKEx access to Minsheng's large client 
base for product marketing.&quot;</p>
<p>Now, as a for-profit business, HKEx should of course pursue its commercial 
interests. But that puts it in direct conflict with its role as Listing 
regulator, via its wholly-owned subsidiary, The Stock Exchange of Hong Kong Ltd 
(the <strong>Exchange</strong>). If last year's
<a href="investordream.asp">dreams</a> of winning the Alibaba deal 
by lowering governance standards weren't enough to convince you that HKEx should 
get out of regulation and pass the role back to the SFC, then perhaps this will 
help, because if HKEx is signing, or seeking to sign, MOUs with listed companies 
that it regulates, then it is inherently conflicted.</p>
<p>There is actually a provision in the Listing Rules,
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/ch38.pdf" target="_blank">
Chapter 38</a>, which allows for the SFC to take over regulation of a particular 
issuer where:</p>
<blockquote>&quot;Conflicts of interest may arise between the 
Exchange and persons whom the Exchange regulates, including applicants for 
listing and listed issuers&quot;.</blockquote>
<p>One case where this has occurred is <a href="../dbpub/articles.asp?p=55733">
United Company RUSAL Plc</a> (0486), which is in litigation against an HKEx 
subsidiary, London Metal Exchange, and the only other case we know of is
<a href="../dbpub/articles.asp?p=14550">First China Financial Network Holdings 
Ltd</a> (<strong>FCFN</strong>, 8123), since its 2002 GEM listing. In its 
prospectus, FCFN said that &quot;HKEx has indicated its intention to enter into the 
back office support services business and may thus compete with the Group&quot;.</p>
<p>Listing Rule 38.14 states that any person who considers that a conflict of 
interest may exist &quot;should bring the facts of the matter to the attention of the 
Executive Director in charge of the Corporate Finance Division&quot; of the SFC. So 
Webb-site wrote to <a href="../dbpub/positions.asp?p=24073">Brian Ho Yin Tung</a>, 
who holds that office, asserting the conflict of interest. We asked that the SFC 
take over the Listing regulation of Minsheng for as long as it was pursuing 
&quot;strategic cooperation&quot; with HKEx under the MOU. The response on his behalf was 
not encouraging:</p>
<blockquote>&quot;The
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2014/140423news.htm" target="_blank">
press release</a> of 23rd April makes it clear that the MOU between HKEx and 
China Minsheng Bank is the beginning of HKEx's collaboration with Chinese banks 
(plural). Having considered the nature of the arrangements between HKEx and 
China Minsheng Bank, we do not consider that there is a conflict of interest or 
potential conflict of interest issue as defined in paragraph 3 of Appendix 3 to 
the
<a href="http://www.sfc.hk/web/doc/EN/general/general/press_release/01/gem-mou.pdf" target="_blank">
Memorandum of Understanding for the Listing of HKEx on the Stock Exchange dated 
22 August 2001</a> as referred to in Listing Rule 38.02.&quot;</blockquote>
<p>So far as we know, Minsheng is the only bank that has signed such an MOU with 
HKEx, but the SFC really makes our point that HKEx is likely to pursue 
&quot;collaboration with Chinese banks (plural)&quot; - so how can it be trying to make 
nice with the banks, many of which are listed in HK, while maintaining its 
vigilance for their compliance with the Listing Rules? How exactly does pursuing 
relationships with multiple banks have any bearing on whether a relationship 
with the first one is a conflict of interest? We call on the SFC to think again. 
Whether the conflict is perceived or real, the position of the listing regulator 
should be beyond doubt. The current situation undermines market confidence.</p>
<h3>Guangdong Yueyun</h3>
<p>At least holders of one small H-share issuer have had the sense to veto their 
board's proposal, saving themselves from a 1.5% value destruction, as explained 
in our <a href="gdyueyun.asp">second article</a> today.</p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9318">China Minsheng Banking Corp., Ltd.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=140">Financial regulatory structure</a></li>
				
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