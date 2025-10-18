
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

<script type="text/javascript">document.title="CSFB's Toxic Convertibles";</script>

	<div class="summary"><i>Webb-site.com</i> lifts the lid on the toxic convertibles scam in HK, in which small, mostly naive companies surrender control over future equity issuance to an investment bank, whose principal interest is to lock in a profit by converting bonds on a rolling basis at a deep discount to market and selling the resulting shares. CSFB has led the way down this value-destroying path, with Merrill Lynch recently joining the fray. We estimate that the banks make a gross profit on money raised of about 31%, and the average stock price has fallen 30% since a toxic convertible was launched. If you are a listed company, just say no. If you are an institutional investor, take your business elsewhere.</div>

<h2 class="center">CSFB's Toxic Convertibles<br>
<span class="headlinedate">8 June 2005</span></h2>
<p class="revisedate"><a href="#update">updated</a> 14-Jun-05</p>
<table class="txtable center">
	<tr>
		<th colspan="2" class="center">Companies in this story</th>
	</tr>
	<tr>
  	<td>
	    <a href="#ArtTextile">Art Textile (0565)</a><br>
	    <a href="#AA">Asia Aluminium (0930)</a><br>
	    <a href="#Champion">Champion Tech (0092)</a><br>
	    <a href="#CRE">China Rare Earth (0769)</a><br>
	    <a href="#EganaGoldpfeil">EganaGoldpfeil (0048)</a><br>
	    <a href="#EJP">Egana Jewellery (0926)</a><br>
	    <a href="#FEPT">Far East Pharma (0399)</a><br>
	    <a href="#GGT">Global Green (0274)</a>
	</td>
	<td>
	    <a href="#HHBP">Hua Han Bio (0587)</a><br>
	    <a href="#RexSSP">Rexcapital Intl (0155)</a><br>
	    <a href="#Sinotronics">Sinotronics (1195)</a><br>
	    <a href="#RexSSP">South Sea Petro (0076)</a><br>
	    <a href="#Sunway">Sunway (0058)</a><br>
	    <a href="#TackFat">Tack Fat (0928)</a><br>
	    <a href="#Tidetime">Tidetime Sun (0307)</a></td>
  </tr>
</table>
<p>Over the last few years, a large and until now fairly well respected investment 
bank, Credit Suisse First Boston (Hong Kong) Ltd (<b>CSFB</b>) has been peddling 
a value-destroying financial instrument to small Hong Kong listed companies. In 
2004, Merrill Lynch International (<b>Merrill Lynch</b>) also did one of these 
sordid deals. Like CSFB, they have apparently decided that the huge profit 
margins from this kind of product are worth the reputational risk it carries. 
Come back <a target="_blank" href="http://www.nndb.com/people/072/000045934/">
Frank Quattrone</a> and
<a target="_blank" href="http://www.sec.gov/news/press/2003-56.htm">Henry 
Blodget</a>, all is forgiven.</p>
<p><i>Webb-site.com</i> has been aware of the toxic convertibles scam for 
many years and have repeatedly warned the regulators about them in private, 
urging a regulatory ban. In 
our view, there can be no logical reason why a listed company would want to cede 
control to a third party over what amounts to a stream of future equity issues 
at deep discounts to market. The Listing Rules should be amended to prohibit listed companies 
from issuing 
convertible instruments which carry floating conversion prices. We 
have waited until now to compile this article because we wanted to conduct a comprehensive 
study of the actual results of these deals, which can each last several years, 
to prove how damaging they are. Recently, two of the companies we invested in 
have been ignorant enough to agree to these deals, and so we resolved that it 
was time to act.</p>
<div class="regbox">
  <b>Warning to all listed companies, particularly small, new and ignorant ones</b><p>
  If you run a listed company and get no further than this paragraph, just learn 
  one thing: toxic convertibles with floating conversion prices will seriously 
  damage your wealth. Don't even think about issuing one or your share price 
  will almost certainly fall.</p>
</div>
<p>Hopefully after this story is out, CSFB and Merrill Lynch will reassess that 
reputational risk. if they want to salvage their reputation, they should do the 
decent thing and cancel the outstanding deals without redemption premiums, and 
cease and desist from further issues. <b>In the meantime, if you are an 
institutional investor, you should consider diverting brokerage business to 
firms which do not promote this kind of instrument, which could damage your 
portfolio value. </b>Money talks.</p>
<h3>What is a convertible bond?</h3>
<p>In normal circumstances, a convertible bond represents borrowings by an 
issuer from an investor, on which the investor receives interest and has a right 
to convert the bond into shares at a <b>fixed conversion price</b>, normally until the 
bond matures. The convertible bond represents a combination of a straight loan 
and an option to subscribe shares, and the value of the option compensates the 
investor for the lower interest rate than the issuer would normally pay 
on its borrowings. The conversion price is normally fixed at a premium to the 
market price at the time the bond is issued. If the shares rise above that 
price, then the option will be converted and result in a profit for the 
bondholder, and otherwise, the issuer benefits from lower-cost borrowings until 
the bond is redeemed. There is nothing wrong in principle with convertible 
bonds, other than the fact that they can ultimately result in an issue of shares 
without offering them to existing shareholders, in other words, dilution. </p>
<h3>What is a toxic convertible?</h3>
<p>CSFB has added a nasty twist to its bonds, namely a <b>floating 
conversion price</b>. The typical formula is that at any point during the 
lifetime of the bonds (typically 3 years), the 
bondholder (CSFB) can look back at the last 30 days (six weeks) of trading, and 
pick the lowest closing prices within that period, typically over a 4-day or 
5-day average. It 
can then take a portion of the bonds and convert them at a set discount to that 
low average price, which is typically between 7% and 10%. As a result, CSFB gets a discount 
on a discount. CSFB can then sell those shares in the market, locking in a 
profit. The bond 
allows CSFB to choose either the floating conversion price or the fixed 
conversion price, whichever is lower. It result in a near-certain profit at the expense of the issuer.</p>
<p>The consequence of a floating conversion price is that there is no certainty 
over the number of shares that could be issued if the bonds are converted. This 
creates a massive over-hang on the market, so investors sell the shares, and as 
the price falls, the floating conversion price falls with it, and the potential 
dilution gets even worse. This is why they are known as <b>toxic convertibles</b>. 
In the case of highly geared companies, the effect can be even worse, and the 
bonds are sometimes known as <b>death spiral convertibles</b> because the price 
spirals down as the dilution increases.
<a target="_blank" href="http://www.sec.gov/answers/convertibles.htm">Read</a> 
what the United States regulator, the SEC, has to say about toxic convertibles.</p>
<p>Theoretically, the lower limit to the conversion price is the par value of 
the shares, since under the laws of HK, Bermuda and the Cayman Islands, where 
most HK-listed companies are domiciled, it is illegal to issue shares for less 
than par value. However par value can often be only a small fraction of the 
current share price, allowing a long fall.</p>
<p>Another limit to dilution (but not conversion price) comes in the 20% general 
mandate to issue new shares, but the agreement with CSFB often includes an 
obligation to seek a fresh mandate from shareholders if the current mandate is 
exhausted, and in any case, these are multi-year deals so the annual general 
meeting will likely pass a new 20% mandate each year. It is unclear whether the agreements, which are not themselves 
published, include any obligation on the controlling shareholders to vote in 
favour of such mandates. In some cases, the issuers have sought and obtained a 
blanket issue mandate to cover as many shares as they need for conversions 
during the life of the bond.</p>
<h3>Structural details</h3>
<p>The CSFB deals typically split the bonds into 2 or more tranches, with the 
first tranche or <b>Tranche 1</b> issued immediately. CSFB usually has an option 
to require the next tranche to be issued on the same terms, called the <b>Additional Tranche 1</b>. That option in itself has value, because if the 
share price rises after Tranche 1 is issued, then CSFB benefits from the fact 
that the maximum conversion price has already been fixed. Often a third tranche, 
which they call <b>Tranche 2</b>, can be issued at the option of the listed 
company, and this usually involves resetting the fixed conversion price based on 
a premium to the market price at the time of the new bond issue.</p>
<p>In recent deals, CSFB has included something called the &quot;<b>downside price</b>&quot;, 
at a deep discount (typically 35-40%) to market. If the market price is at or 
below the downside price when bonds are presented for conversion, then the 
issuer has the right to redeem them instead, subject to payment of a premium 
(they always get their pound of flesh). 
However, if the issuer does not or cannot exercise that right then the 
conversion will proceed and the price may decline further. Note that the 
downside price is not actually a limit on the conversion price, because the 
30-day look-back period allows CSFB to convert at less than the downside price 
after the price has risen back above it.</p>
<p>They have also sometimes included a &quot;<b>put price</b>&quot;, at an even deeper 
discount (typically 50-60%). If the market price is below this level, then CSFB 
cannot convert the bonds but has the right to require redemption. If the market 
price reaches this level, then you can bet that the upside is limited so long as 
CSFB has not called for redemption, because as soon as the price begins to 
recover, the conversion rights become exercisable again.</p>
<p>It is still possible that a share price will move upwards after the bond is 
issued, for example, if the earnings grow fast enough to offset the dilution of 
the share base, or if the issue size is relatively small compared with market 
capitalisation, then the damage may not be as great and the overhang is smaller. 
Even in these circumstances, the dilution will still be a drag on the 
performance of the shares.</p>
<p>The CSFB deals usually include an option to subscribe new shares for cash 
worth about 15-20% of the face value of the bonds, with an exercise price at a 
premium to the market price at the time the bonds and options are issued. In 
most cases, however, the share price falls due the the overhang of the bonds, 
and the options are not exercised. Companies may be thinking that these options 
provide some kind of incentive for CSFB not to drive the price down with rapid 
conversions, but history shows that the options are seldom exercised, and it is 
clear that the bulk of the profit comes from the bond conversions.</p>
<h3>An equity tap - outsourcing the general mandate</h3>
<p>In several of the cases we have studied, the agreement with CSFB includes an 
escrow arrangement, so that part or all of the money received for the bond is placed in a 
trustee bank 
account and cannot be used by the company until the corresponding amount of the bond (or part of it) is 
converted. Meanwhile the money earns interest which can be used to pay the 
interest on the bond. This makes it even more obvious that the convertible is in 
effect an &quot;equity tap&quot; (or if you are 
American, a faucet) in which CSFB taps out freshly issued equity into the market 
whenever they see fit. Rationally they would choose moments when the floating 
conversion price is at the largest possible discount to the current market 
price, to earn the maximum profit. Remember, they can look back 30 days to pick 
a low point.</p>
<p>As readers will know, we have long opposed the general mandate sought by 
corporate boards from their shareholders to issue new shares for cash without 
offering them to existing shareholders. But the equity tap takes this a step 
further by effectively delegating and outsourcing the general mandate, placing 
it in the hands of an investment bank whose principal 
financial interest is to lock in the profit from the conversions.</p>
<p>We have no idea why companies would agree to this, particularly 
those which already have strong balance sheets (sometimes holding substantial 
net cash), good core businesses, and low P/Es. We suspect the companies are mostly 
ignorant rather than dishonest, and the involvement of such a prestigious 
investment bank might seem like a way to draw attention to an overlooked company. 
Well, for all the little companies who were seeking attention, now you've got 
ours.</p>
<h3>Opacity</h3>
<p>One of the many defects of Hong Kong's Listing Rules is that, while companies 
are required to disclose share buy-backs by the morning after the transaction, 
they are not required to disclose share issues. So when a placing of new shares 
gets completed, or when share options get exercised, or when bonds are 
converted, or when scrip dividends are issued, nobody knows about the new shares except the company and the person 
receiving them, who may then turn around and sell them. A typical HK-listed 
company has a daily turnover of just 0.1-0.2% of its issued shares, so even a 
small issue of shares hitting the market can impact the share price.</p>
<p>Another implication is that shareholders who are seeking to monitor whether 
their shareholdings have passed through the 5% legal disclosure threshold, or any of 
the 1% boundaries above it (6%, 7%...) don't know for sure how many shares are 
in issue. All they can do is check this
<a target="_blank" href="http://www.hkex.com.hk/invest/company/profile_page_e.asp?WidCoID=1&WidCoAbbName=&Month=&langcode=e">
HKEx web page</a>, which is updated only if a company sends in a monthly return. 
It is unreasonable to expect investors to check that every day for each of their 
holdings, just in case there has been an update.</p>
<div class="regbox">
  We call again on the Listing Committee to amend the rules to require immediate 
  disclosure of all new share allotments by filing with the Stock Exchange, on 
  the same timetable as the disclosure of share buy-backs. The same disclosure 
  should apply to the grant of share options or the creation of any other rights 
  to subscribe shares.</div>
<p>Recently, the Stock Exchange has shown signs of listening to our pleas, 
because in a stop-gap half-measure, they have begun requiring issuers, as a 
condition of listing approval for the shares underlying convertibles, to disclose 
within 5 trading days of each month-end whether any of the convertibles have 
been converted, and if so how much, and a further requirement that if, during a 
month, the number of shares issued since the last disclosure is more than 5% of 
the company, then that must be disclosed too. However, this does not go far 
enough. 5% of the issued shares is about 5 to 10 weeks' turnover for an average 
stock, and it is not much consolation to be told about it a month later.</p>
<h3>A study of toxic convertibles in HK</h3>
<p>We have conducted an extensive study of 15 current and prior toxic 
convertible issues for which online records exist - all that we could find, 
excluding deals with controlling shareholders, although we cover some of those 
at the end of the article. Of the 15 deals, CSFB has led 13 of them, 1 was by 
Merrill Lynch, and one by an obscure firm called FB Gemini.</p>
<h4>Limitations of the study</h4>
<p>As mentioned 
above, we cannot know exactly which dates all the conversions are made, because there is no 
disclosure requirement. However, by carefully analysing statements in annual reports, 
interim reports, shareholder circulars and announcements, we can narrow 
conversions of blocks of bonds to a range of dates. We can then look at the volume weighted average price (<b>VWAP</b>) 
during the same period, that is, the average price at which all shares traded 
in the market during that period, and we can calculate the average discount of the floating 
conversion price compared with the VWAP. Hence we can estimate the profit that 
the bondholders made, or the effective discount to market at which the shares 
were issued during the conversion period.</p>
<p>We emphasise that these are only estimates, and there may be considerable 
variance between the estimate and the actual profit, depending on exactly when 
the bonds were converted and the resulting shares sold. However, if you analyse 
as many cases as we have, then the average of all cases will be a pretty 
accurate estimate. In some cases, 
where we do not have access to daily data before 2003, we have measured VWAP to the nearest week. 
Again, while this makes individual discount calculations less accurate, it will 
even out on the average and will not affect the validity of the results.</p>
<p>We have adjusted for bonus issues, stock splits, consolidations and rights 
issues. We use the phrase &quot;scrip-adjusted&quot; to describe this. We ignore the 
effect of dividends.</p>
<h4>Expenses</h4>
<p>In the course of our case studies, apart from the damage caused by 
toxic convertibles, we found that they also seem to involve unusually high issue expenses, 
averaging around 5% of the bond issue, whereas a typical equity placing would 
cost 1-2%. We can't help wondering whether someone, either the subscriber or a 
middle-man, is charging an arrangement fee. Whatever, the cause, it is a further 
drag on the company.</p>
<h3>Summary and findings</h3>
<p>Of the 15 toxic convertible issues we studied, involving 13 listed companies, 
9 have run their course, 4 still have bonds outstanding, and the latest 2 have 
not yet had any bond conversions. The average market cap of the companies 
involved at the time they agree to the deals was US$142m, and the average 
maximum size of the deals (excluding the 15-20% options) is about US$18m.</p>
<ul>
  <li>We found that in 13 out of 15 issues, or 87% of 
  the time, the share 
  price at the time of writing (7-Jun-05) was less than when the bond was first 
  announced. The average movement in share price for all 15 cases (including the 
  two that rose) was a <b>30.0%</b> drop.
  </li>
  <li>Looking at the average conversion price for each 
  bond issue, in 10 out of 13 cases, it was lower than 
  the market price before the issue was announced, and the average discount of 
  all 13 cases was
  <b>29.8%</b>.</li>
  <li>Looking at the average conversion price compared 
  with the VWAP during the conversion periods, we found it was lower in all 13 
  cases, by a weighted average discount of <b>23.7%.</b></li>
  <li>In terms of money raised for the issuer, before 
  expenses, <b>CSFB's gross profit margin is therefore about 31%</b>. It 
  certainly beats doing straight equity placings for a 1% fee.</li>
  <li>Put simply, for every US$1m the company 
  receives from CSFB, CSFB makes a profit of about US$310k.</li>
  <li>Companies also pay issue fees and expenses 
  averaging 
  5% on money raised.</li>
</ul>
<p>Here is a summary of the findings, in order of issue date.</p>
<img class="center" alt="" src="../images/toxico18.gif">
<p>The above table excludes the US$1.36m redemption premium paid by Sunway to 
terminate its deal early, and the US$2.51m settlement paid by EganaGoldpfeil to 
stop another tranche of bonds. Several of these deals are still in progress, so 
the total profit shown is less than the final figure.</p>
<p>Now we cover the cases in detail. To navigate among them, use the &quot;companies 
in this story&quot; links at the <a href="#top">top</a> of this page.</p>
<h3 id="EganaGoldpfeil">EganaGoldpfeil</h3>
<p>On 15-Dec-99, <a target="_blank" href="../dbpub/articles.asp?p=2078">EganaGoldpfeil (Holdings) Ltd</a> (<b>EGP</b>, 0048)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/19991216/LTN19991216033.HTM">
announced</a> a single-tranche issue of US$15m toxic convertibles to CSFB with a fixed 
conversion price (scrip-adjusted) of $2.80, compared with a market price of 
$2.44. EGP had a market value of HK$2,383m (US$305.5m).</p>
<p>In fact, this was not the first toxic convertible by EGP - it announced one 
back on 21-Apr-97 which was issued on 1-May-97, but we don't have the 
announcement as it predates the online system, and we don't know who the 
subscribers were.</p>
<p>Here's the estimated conversion history of the 1999 bond:</p>
<img class="center" alt="" src="../images/toxico4.gif">
<p>The table shows that the average conversion price was 
$1.726, or a 29.3% discount to the price when the bonds were first announced, 
and we estimate that CSFB made a profit of $31.8m. At the end of the conversion 
period, on 30-Nov-02, the shares closed at $1.52, a fall of 37.7% since the bond 
was announced.</p>
<h4>Round 2</h4>
<p>Not satisfied, EGP came back for more, and on 27-Feb-03 it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030228/LTN20030228028.pdf">
announced</a> a new issue of up to US$25m toxic convertibles, with an initial 
Tranche 1 of US$10m and a fixed conversion price of $1.6184. CSFB also received 
an option to subscribe up to 9,035,336 shares at the fixed conversion price. The 
stock closed the previous day at $1.36, valuing EGP at HK$1,539m (US$197.4m). Issue expenses were US$212,500, or 
2.125%.</p>
<p>On 6-Jun-03, EGP and CSFB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030606/LTN20030606072.pdf">
amended</a> the redemption provisions, apparently to deal with the fact that the 
par value of EGP's shares is HK$1 which sets a floor on the legal price of any 
shares issued to satisfy a redemption.</p>
<p>On 15-Jan-04, EGP and CSFB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040116/LTN20040116033.pdf">
amended</a> the agreement again, to reduce the interest rate, reflecting the 
lower bank deposit rates of the time, and to change the floating conversion 
price from a 7% discount to a 10% discount to the average of the 5 lowest 
closing prices in a period of 30 trading days. They then issued US$5m of 
Additional Tranche 1 bonds. The market price the previous day was $1.85, so the 
fixed conversion price of $1.6184 was already in the money. CSFB also received 
options to subscribe 4,517,668 shares at $1.6184 each. At the same time, EGP 
issued the US$10m Tranche 2, which had a fixed conversion price of $2.0604, and 
came with options to subscribe 7,066,098 shares at the same price. Issue 
expenses were US$290k.</p>
<p>On top of all that, on the same day, EGP granted CSFB a further option to 
require EGP to issue a further US$10m Tranche 3 bonds, exercisable once at any 
time until 27-Feb-06. The bonds would have a 3-year maturity. On 10-May-05, 
perhaps finally realising the damage these instruments cause, EGP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050510/LTN20050510097.pdf">
announced</a> that it had agreed with CSFB to cancel the right to subscribe 
Tranche 3, as well as the existing share options and the ones which would have 
come with Tranche 3. The announcement contains numerous errors which have yet to 
be corrected, and although you won't find it mentioned in the summary, <b>EGP 
had to pay CSFB US$2.51m (HK$19.6m) to cancel the deal</b>.</p>
<p>The conversion history, as near as we can estimate, is as follows:</p>
<img class="center" alt="" src="../images/toxico5.gif">
<p>As shown, the average conversion price of the bonds was $1.308, and CSFB has 
made an estimated profit of HK$14.0m so far, plus the $19.6m they were paid to 
cancel Tranche 3 and the options, plus whatever they will make on the US$15.7m 
of toxic convertibles outstanding at the latest interim report date of 
30-Nov-04.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="CRE">China Rare Earth</h3>
<p>On 13-Jun-00, less than 8 months after it listed,
rare earth and refractory products maker <a target="_blank" href="../dbpub/articles.asp?p=9409">China Rare Earth Holdings Ltd</a> (<b>CRE</b>, 
0769)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000614/ltn20000614029.doc">
agreed</a> an issue of up to US$10m toxic convertibles to CSFB, with an initial 
Tranche 1 of US$5m and a fixed conversion price of HK$1.34, a 24% premium over 
the closing price that day of about $1.08, when CRE was valued at HK$648m 
(US$83.1m). CSFB also received an option to subscribe 4m shares at $1.6035. CRE 
had an option to issue a Tranche 2 of US$5m within 75 days after Tranche 1 was 
fully converted, but they let it lapse. At least they got that right.</p>
<p>The estimated conversion history is as follows:</p>
<img class="center" alt="" src="../images/toxico9.gif">
<p>So the average conversion price (including the options) was $1.157, which was 
a 40.0% discount to the estimated selling price CSFB could have obtained during 
the conversion period. On 7-Jun-05, the 
shares closed at $0.95.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="Sunway">Sunway</h3>
<p>On 25-May-00, less than 9 months after it listed, calculator maker 
<a target="_blank" href="../dbpub/articles.asp?p=8878">Sunway 
International Holdings Ltd</a> (<b>Sunway</b>, 0058)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000526/LTN20000526026.doc">
agreed</a> an issue of up to US$20m toxic convertibles to CSFB and The SCM 
Growth Fund II L.P. (<b>SCM</b>), with an initial Tranche 1 of US$10m and a 
fixed conversion price of HK$2.1087, a 20% premium to the closing price that day 
of about $1.76, which valued Sunway at $1,760m (US$225.6m). The bond subscribers also received options to subscribe 11.5m 
shares at the fixed conversion price.</p>
<div class="regbox" id="update">
  <b>Update, 14-Jun-05</b><p>In the original version of 
  this article, we incidentally suggested that SCM may have been managed by 
  Strong Capital Management Inc. Sources now indicate that this was not the 
  case, and SCM was more probably managed by a firm called &quot;Strategic Capital 
  Management&quot;. We regret any confusion caused.</p>
</div>
<p>The estimated conversion history is as follows:</p>
<img class="center" alt="" src="../images/toxico7.gif">
<p>As you can see, only US$1.3m was converted, at an average price of $0.491, or 
72.1% below the market price when the bond was first announced. The bonds 
included an option for Sunway to redeem the bonds if they were presented for 
conversion while the market price was $1.00 or less, at a redemption price 
&quot;determined under the Subscription Agreement&quot;, the formula for which was not 
disclosed. The market price did indeed descend well beyond this point, and 
Sunway ended up paying a total premium of about HK$10.6m to redeem the rest of 
the bonds, which is more than the $10.1m value converted. Overall then, Sunway 
issued 20.6m shares for a negative price. What a painful lesson. Since then, 
they haven't issued any shares. The stock closed at $0.29 on 7-Jun-05.</p>
<p>Incidentally, Sunway is one of only a few companies in HK with 3 generations 
simultaneously on the board - a Grandfather, his daughter, two granddaughters 
and their mother (who was married to the late Chairman).</p>
<p><a href="#top">Back to top</a></p>
<h3 id="AA">Asia Aluminium</h3>
<p>On 30-Aug-00, <a target="_blank" href="../dbpub/articles.asp?p=5139">Asia Aluminium Holdings Ltd</a> 
(<b>AA</b>, 0930), which in a tech-bubble moment, renamed itself &quot;Global Applied 
Technologies Holdings Ltd&quot; before reverting to its old name,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000831/ltn20000831036.doc">
agreed</a> an issue of up to US$16m toxic convertibles, including an initial 
Tranche 1 of US$13m, of which US$8m went to CSFB and US$5m to SCM, and a US$3m Tranche 
2 to be issued 3 weeks later to SCM. So overall, the US$16m deal went 50:50 
between CSFB and SCM.</p>
<p>Both Tranches had a fixed conversion price of HK$1.375 (scrip-adjusted). The 
Tranche 1 bond issue was completed on 1-Sep-00, and then next day it was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20000904/LTN20000904022.doc">
disclosed</a> that AA had also granted options to CSFB and SCM to each subscribe 
for 12.5m shares at $1.42 (adjusted) per share.</p>
<p>The estimated conversion history is as follows:</p>
<img class="center" alt="" src="../images/toxico10.gif">
<p>On 31-Aug-00, the day before the first bond was issued, the shares closed at 
$1.2125 (adjusted), valuing AA at about HK$2.51bn (US$322m). As you can see, the 
average conversion price was $0.517, a 57.4% discount to that price, and an 
average 25.9% discount to market prices prevailing during the estimated 
conversion periods over the next 2 years. We estimate that CSFB and SCM made a 
profit of HK$44m while AA raised $124.8m before expenses. The amount of expenses 
was not disclosed. None of the share options was exercised.</p>
<p>AA is a company which has spewed out new shares like Vesuvius. The toxic 
convertible was just a part of this. In the 4 years from Jun-00 to Jun-04, its 
Earnings Per Share fell 23.8% even though its net profit rose 37.2%. It's hard 
to grow your EPS when your &quot;S&quot; grows faster than your &quot;E&quot;. The shares closed on 
7-Jun-05 at $0.90.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="Tidetime">Tidetime Sun</h3>
<p>On 28-Feb-01, <a target="_blank" href="../dbpub/articles.asp?p=4903">Tidetime Sun (Group) Ltd</a> (<b>Tidetime</b>, 0307), which has 
had 3 names in the last year alone,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010301/ltn20010301035.doc">
agreed</a> an issue of up to US$16m toxic convertibles to CSFB, with an initial 
Tranche 1 of US$8m and a fixed conversion price of HK$0.2399. The shares closed 
the previous day at $0.225, valuing Tidetime at HK$1,381m (US$177.1m). CSFB also 
received options to subscribe up to 70m shares at $0.2369 each. Issue expenses 
were US$400k (5%). These options were not exercised, and Tidetime did not 
exercise its option to issue a US$8m Tranche 2.</p>
<p>The estimated conversion history is as follows:</p>
<img class="center" alt="" src="../images/toxico11.gif">
<p>So the conversion price averaged $0.0969, a 56.9% discount to the market 
price when the bond was announced.</p>
<h4>Round 2</h4>
<p>Tidetime's then management did not learn much from this experience, because 
on 6-Jun-02 it
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020610/LTN20020610010.pdf">
announced</a> another toxic convertible, this time up to US$26m with FB Gemini 
Asset Management Ltd (<b>FB Gemini</b>). The shares closed the previous trading 
day at $0.136, valuing Tidetime at HK$1,267m (US$162.5m). An initial US$6m Tranche 1 was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020711/LTN20020711045.pdf">
issued</a> on 9-Jul-02 and US$3.5m was immediately converted at $0.102. FB 
Gemini also received an Option to subscribe US$150k at the fixed conversion 
price.</p>
<p>On 27-Aug-02, the agreement was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020827/LTN20020827090.pdf">
amended</a> and FB Gemini surrendered its right to require Tidetime to issue 
another US$20m of bonds, and in return, received a &quot;Further Option&quot; to subscribe 
up to US$4m at any of the actual conversion prices of the Tranche 1 bonds. On 
27-Sep-04, the deal was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040928/LTN20040928038.pdf">
amended</a> again, to change the conversion formula for the remaining US$200k of 
bonds, to lower the exercise price of the $150k option and to cut the size of 
the Further Option.</p>
<p>Here's the estimated conversion history so far:</p>
<img class="center" alt="" src="../images/toxico13.gif">
<p>So the average conversion price so far has been a 53.7% discount to the 
market price before the deal was announced. The deal expires on 9-Jul-05. We should note that Tidetime is one of the most 
prolific issuers of shares in the market, and has reported a loss for 9 
consecutive years under various management. As of 30-Apr-05 it had 23.22 billion 
shares in issue. The shares have been suspended since 25-Apr-05 at $0.017.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="FEPT">Far East Pharmaceutical Technology</h3>
<p>On 14-Aug-01, just under a year after listing, 
<a target="_blank" href="../dbpub/articles.asp?p=11345">Far East Pharmaceutical 
Technology Co Ltd</a> (<b>FEPT</b>, 0399)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010815/LTN20010815026.doc">
agreed</a> an issue of up to US$12m toxic convertibles to CSFB, with an initial 
Tranche 1 of US$4m and a fixed conversion price of HK$0.41125 (scrip-adjusted). 
The stock closed at $0.335 that day, valuing FEPT at HK$461m (US$59.1m). CSFB 
also received options to subscribe up to 18,966,564 shares (adjusted) at the 
fixed conversion price. Issue expenses were US$320k, or 8% of Tranche 1.</p>
<p>On 14-Dec-01, CSFB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20011217/LTN20011217053.doc">
exercised</a> its right to require FEPT to issue US$4m Additional Tranche 1 with 
the same fixed conversion price as Tranche 1. FEPT also exercised its right to 
issue US$4m Tranche 2 with an amended fixed conversion price of HK$0.4775 
(adjusted). The floating conversion price for Tranche 2 was amended from a 7% 
discount to a 9% discount to the (lowest) average of any 4 consecutive closing 
prices in a 30-day look-back period. The stock closed at $0.425 that day. Issue 
expenses were US$320k, or 4%.</p>
<p>On 7-Jan-02, FEPT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020108/LTN20020108032.doc">
announced</a> that on 18-Dec-01, CSFB waived the requirement in the agreement 
for shareholders' approval of the Additional Tranche 1 and Tranche 2 but, with 
the general mandate almost exhausted, FEPT obtained a fresh general mandate to 
issue shares at an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020411/LTN20020411106.pdf">
EGM</a> on 29-Apr-02.</p>
<p>The estimated conversion history is as follows:</p>
<img class="center" alt="" src="../images/toxico8.gif">
<p>As you can see, the volatile nature of this stock allowed CSFB to achieve 
exercise prices which averaged 33.3% less than the volume weighted average price 
for the periods in which bonds were converted. We estimate that they made a 
profit of HK$50m, while FEPT raised $96.4m net of expenses of $5.0m.</p>
<h4>FEPT's crash</h4>
<p>We divert briefly to tell you what happened to FEPT afterwards. Readers may 
recall that on 17-Jun-04, FEPT's share price crashed 92% and swas suspended 4 minutes 
before the market closed, never to trade since. On 24-Jun-04, brokerage Guotai 
Junan Securities (Hong Kong) Ltd (<b>GJ</b>), the Co-lead Manager of FEPT's IPO, 
disclosed that on 17-Jun-04, the day of the crash, it had
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=18310&lang=EN&dia=Y">
enforced</a> a share pledge on 25.9% of FEPT and had
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=18311&lang=EN&dia=Y">
sold</a> about 5.53% at an average of $0.069 in the market that day. On 
29-Jun-04, Celestial Securities Ltd (<b>Celestial</b>) also disclosed that it 
had
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=18488&lang=EN&dia=Y">
acquired</a> and
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=18487&lang=EN&dia=Y">
sold</a> 8.56% at an average of $0.101 on the day of the crash. These two sales 
added up to 14.09%. At least one other party was involved, because the 
controlling shareholder
<a target="_blank" href="http://di.hkex.com.hk/di/NSForm2.aspx?fn=18324&lang=EN&dia=Y">
reported</a> a reduction of its holding of 15.81%, and recorded sales at a 
higher maximum price than the brokers.</p>
<p>As brokers, GJ and Celestial were exempt from disclosing their security 
interest in the shares until it became enforceable, so the public never knew 
about the pledges, and could not factor this information into their investment 
decision to hold the shares. This and several other cases pushed the Securities 
and Futures Commission to review whether the exemption for banks and brokers 
should be continued, and we have long <a target="_blank" href="pledge.asp">
called</a> for it to be scrapped. Pledges represent the potential for a forced 
sale, and this is negative to valuation of stocks, particularly when a company's 
loans include covenants that the controlling shareholder will remain in control, 
as they did in this case, so a forced sale means that the company's bank loans 
go into default.</p>
<p>Predictably, banks, brokers and listed companies were opposed to disclosing 
such negative information, and recently, the SFC
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/consult/05/part_xv_conclusions_eng.pdf">
decided</a> to do nothing but form a working group to study it further.</p>
<p>It appears that a syndicate of banks led by
<a target="_blank" href="http://www.rzb.at/">Raiffeisen Zentralbank Osterreich 
AG</a> (Singapore branch) and Standard Chartered Bank (<b>SCB</b>) were taken 
for a ride,
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040511/LTN20040511071.pdf">
agreeing</a> a US$80m loan on 10-May-04. On 15-Sep-04, SCB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040921/LTN20040921027.pdf">
filed</a> a winding-up petition, and on 22-Sep-04 provisional liquidators were 
appointed. All the directors who were on board at the time of the crash have 
since quit citing &quot;health reasons&quot; or &quot;personal reasons&quot;. Questions remain over 
why a company which apparently had so much cash was in need of a bank loan, and 
what happened to all that money. The last annual accounts for 30-Jun-03, audited 
by <a target="_blank" href="http://www.ccifcpa.com.hk/">CCIF CPA Ltd</a>, showed 
cash in the balance sheet of HK$644m.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="GGT">Global Green Tech</h3>
<p>On 13-Dec-01, just under a year after its IPO,
skin cream maker <a target="_blank" href="../dbpub/articles.asp?p=12209">Global Green Tech Group Ltd</a> (<b>GGT</b>, 
0274)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20011214/LTN20011214043.doc">
agreed</a> an issue of up to US$12m toxic convertibles to CSFB, with an initial 
Tranche 1 of US$4.08m and a fixed conversion price of $1.8019 (scrip-adjusted). 
CSFB also received an option to subscribe 3m shares at $2.0791 each. The shares 
closed that day at $1.267 (adjusted), valuing GGT at HK$467.6m (US$59.94m).</p>
<p>On 9-Apr-02, GGT and CSFB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020410/LTN20020410001.doc">
agreed</a> to swap the remaining US$1.78m of the original Tranche 1 with a new 
batch on identical terms, in order to get around the depleted general mandate. 
On 30-Apr-02, GGT sent a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020531/LTN20020531051.pdf">
circular</a> to shareholders and obtained their approval to issue as many shares 
as necessary to satisfy all future conversions of the bonds.</p>
<p>On 9-Jul-02, GGT
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020710/LTN20020710040.doc">
exercised</a> its right to require CSFB to subscribe US$3.84m Tranche 2, with a 
fixed conversion price of $2.2453 (adjusted). On 30-Jan-04, CSFB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040202/LTN20040202029.pdf">
exercised</a> its right to require GGT to issue the US$4.08m Additional Tranche 
1.</p>
<p>The estimated conversion history is shown below.</p>
<img class="center" alt="" src="../images/toxico12.gif">
<p>The table shows that the average conversion price was $0.987, a discount of&nbsp; 
22.1% to the price when the bond was first announced. The shares closed on 
7-Jun-05 at $0.80.</p>
<h4>Options excess</h4>
<p>As a side note, we should remark that GGT is one of the worst exploiters of 
Hong Kong's lax listing rules on share options, dishing them out not just to 
employees but to consultants, customers and suppliers. We calculate that as of 
25-Apr-05, 36.5% of the existing issued share capital had resulted from the 
exercise of options. Of course, the value of these options has not until now 
been required to be recorded as an expense in the income statements. New 
accounting standards should change that.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="Champion">Champion Technology</h3>
<p>On 22-May-02, <a target="_blank" href="../dbpub/articles.asp?p=848">Champion Technology Holdings Ltd</a> (<b>Champion</b>, 0092)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020523/LTN20020523078.pdf">
agreed</a> an issue of up to US$24m toxic convertibles to CSFB, with an initial Tranche 
1 of US$8m and a fixed conversion price of HK$2.3635. The stock closed at $1.88 
the previous day, valuing Champion at HK$1,070m (US$137.2m). CSFB also received 
options to subscribe 4,949,905 shares at the fixed conversion price. Issue 
expenses were US$306k.</p>
<p>On 27-Jun-02, Champion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020628/LTN20020628023.pdf">
announced</a> that it would sent a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020709/LTN20020709040.pdf">
circular</a> to shareholders seeking authority to issue &quot;the appropriate number 
of shares&quot; on conversion of the bonds - in other words, opening the door to 
almost unlimited dilution of the share capital, beyond the 20% general mandate 
that they already held. The circular failed to spell out the maximum number of 
shares that could be issued in a worst-case scenario, instead focussing on the 
fixed conversion price. Approval was obtained.</p>
<p>On 26-Sep-03, US$8m of Tranche 2 bonds were
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030929/LTN20030929052.pdf">
issued</a>, with a fixed conversion price of HK$1.98. The market price that day 
was $1.68, valuing Champion at HK$1,169m (US$149.8m). CSFB also received an 
option to subscribe 5,881,515 shares at $1.98 each. Issue expenses were US$262k.</p>
<p>You will notice that we have skipped the Additional Tranche 1, which CSFB had 
not called to be issued. The 3-year term of the original bonds was set to expire 
on 22-May-05, but on 28-Apr-05, CSFB and Champion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050429/LTN20050429040.pdf">
amended</a> the agreement and issued US$8m Additional Tranche 1 bonds, extending 
the maturity until 22-Nov-05 and amending the put price to $1.00. The shares 
closed on 28-Apr-05 at $1.18. Issue expenses were another US$273k. As previously 
agreed, CSFB also received an option to subscribe 4,949,397 shares at the fixed 
conversion price of $2.3635 each, although that is obviously of little value 
now.</p>
<p>On 13-May-05, Champion
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050513/LTN20050513147.pdf">
disclosed</a> the formula which would apply if bonds were presented for 
conversion while the market price was below the downside price of $1.10. 
Basically Champion would then have the option to redeem by payment of an extra 
8% interest. CSFB wins either way.</p>
<p>Obviously this deal is still in progress, but based on the accounts up to 
31-Dec-04, here is the estimated conversion history:</p>
<img class="center" alt="" src="../images/toxico3.gif">
<p>As you can see, the average conversion price up to 31-Dec-04 was $1.116, 
which was a 40.6% discount to the market price when the bonds were first issued. 
Champion had issued equity for HK$92.8m, paid expenses of US$841k (HK$6.6m), and 
CSFB has made an estimated profit of HK$27.7m. The stock closed on 7-Jun-05 at 
$1.21.</p>
<p>Champion is a sorry story in itself - if you adjust for 3 bonus issues, a 
consolidation and a rights issue, then the IPO price in Aug-92 was $3.673. The 
company has also pumped out a stream of bonus warrants to its shareholders so 
that there has been one in issue at almost all times since it was listed. All 
that a warrant issue does is to reduce the company's ability to optimise the 
capital structure, since they cannot control when the warrants will be 
exercised.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="TackFat">Tack Fat</h3>
<p>On 19-Dec-02, less than 8 months after listing, 
<a target="_blank" href="../dbpub/articles.asp?p=15854">Tack Fat Group International 
Ltd</a> (<b>Tack Fat</b>, 0928)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021220/LTN20021220054.PDF">
announced</a> an issue of up to US$12m toxic convertibles to CSFB, with an initial 
Tranche 1 of US$4m and a fixed conversion price of HK$0.62. The stock closed at 
$0.55 that day, valuing Tack Fat at HK$730.4m (US$93.6m). CSFB also received 
options to subscribe US$0.8m for 11.744m shares at $0.531 each.</p>
<p>This was one of the smaller deals, so the overhang was less and the stock price actually rose. On 
3-Oct-03, CSFB
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031003/LTN20031003088.pdf">
exercised</a> its option to require Tack Fat to issue US$4m Additional Tranche 1 
bonds, together with options to subscribe another 11.744m shares at $0.531 each. 
That day, the share price was $0.87, so the Additional Tranche 1 with options 
already had an expected profit of HK$16.56m (US$2.12m).</p>
<p>We estimate the conversion history was as follows:</p>
<img class="center" alt="" src="../images/toxico2.gif">
<p>Overall, the table shows that Tack Fat issued 123.1m shares for HK$71.9m 
(before expenses of $3.4m) at an average price of $0.584, and CSFB earned an 
estimated profit of $18.0m, or about 20% of the estimated gross amount raised. 
At 28-Dec-04 (when the interim report was finalised) they also still had options 
to subscribe 5.528m shares at $0.531. That day, the shares closed at $0.85, 
implying an intrinsic value of $1.8m.</p>
<p>So far, Tack Fat has not, as far as we know, exercised its right to require 
CSFB to subscribe the final Tranche 2 of US$4m. Perhaps they have learnt from 
their experience. Tack Fat closed on 7-Jun-05 at $0.98.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="HHBP">Hua-Han Bio-Pharmaceutical</h3>
<p>On 22-Jul-03, <a target="_blank" href="../dbpub/articles.asp?p=17721">Hua Han Bio-Pharmaceutical Holdings Ltd</a> (<b>HHBP</b>, 0587)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030723/LTN20030723028.pdf">
announced</a> an issue of up to US$12m toxic convertibles to CSFB. The stock closed at 
$1.19 before the announcement, valuing HHBP at HK$676m (US$86.7m). The fixed 
conversion price was $1.4879.</p>
<p>Tranche 1 was US$3.5m (HK$27.3m), less expenses of HK$2.9m. CSFB also 
received options to subscribe 4,587,078 shares at $1.3094 each. Further details were 
disclosed in an&nbsp;
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030811/LTN20030811017.pdf">
announcement</a> on 8-Aug-03, and, and an Additional Tranche 1 of US$4.5m 
(HK$35.1m), less expenses of HK$2.3m was 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030905/LTN20030905129.pdf">issued</a> 
on 5-Sep-03, when the shares closed at $1.35. </p>
<p>On 30-Oct-03 the company
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031030/LTN20031030111.pdf">
issued</a> a further clarification and the next day dispatched a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031031/LTN20031031045.pdf">
circular</a> to obtain shareholders approval for the possible issue (at the 
option of HHBP) of US$4m Tranche 2 convertible bonds and the issue of 
&quot;such number of new shares as may be required&quot; upon their conversion. 
In other words, an unlimited general mandate had bee outsourced to CSFB.</p>
<p>As of 31-Dec-04, a total of US$7.25m had been converted and US$0.75m remained 
outstanding, so the company had not yet pulled the trigger on the next US$4m 
tranche. The conversion history, as near 
as we can estimate, is as follows:</p>
<img class="center" alt="" src="../images/toxico1.gif">
<p>As you can see, up to 31-Dec-04 the average conversion price was $0.964 per share, or 19% 
less than the market price when the bond was first issued. The company has so 
far issued equity for $56.5m before expenses of $5.2m. Net of expenses, HHBP has 
raised only $51.27m, or $0.876 per share.</p>
<p>On 7-Jun-05, HHBP closed at $1.00 per share. The company has 
also been a heavy issuer of share options to directors, employees and 
consultants.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="EJP">Egana Jewellery &amp; Pearls</h3>
<p>Earlier in this chronology we covered the toxic convertibles issued by 
EganaGoldPfeil. EGP has a listed subsidiary, <a target="_blank" href="../dbpub/articles.asp?p=7054">Egana Jewellery &amp; 
Pearls Limited</a> (<b>EJP</b>, 0926). On 10-Feb-04, EJP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040211/LTN20040211014.pdf">
agreed</a> to issue up to US$45m of 5-year toxic convertibles, not to CSFB, but to Merrilll Lynch, 
who were jumping on the toxic bandwagon for the first time in Hong Kong, at 
least.</p>
<p>The shares closed the 
previous day at HK$2.10, valuing EJP at HK$651.4m (US$83.52m) so the maximum bond 
issue represented a huge portion of the company.</p>
<p>The initial 
US$10m (HK$78m) Tranche 1 carried a fixed conversion price at the lesser of 
$2.50 or 122% of the market price the day before closing. When the issue closed 
on 26-Feb-04, the market price was already $2.475 (a price not seen since then), 
so the fixed conversion price was set at $2.50, and Merrill Lynch received 
options to subscribe about 5,548,929 shares at the same price. Issue expenses 
were HK$3m.</p>
<p>An additional US$5m Tranche 1a was agreed to be issued between 45 and 150 
days later. Each side had an option to issue another US$5m Tranche 2a from day 
151 to day 250, which EJP could optionally increase with a US$5m Tranche 2b on 
the same day. The same fixed conversion price of $2.50 applied to all these 
tranches. Apparently neither Tranche 1a nor Tranche 2 was issued.</p>
<p>Merrill Lynch was also given an option to subscribe US$5m Tranche 3a from day 
251 to day 350, and US$5m Tranche 4a from day 351 to day 500. If either of these 
options was exercised, then EJP had the right to increase the issue size with 
US$5m Tranche 3b or US$5m Tranche 4b, on the same respective issued dates. As
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040227/LTN20040227034.pdf">
clarified</a> on 26-Feb-04, the fixed conversion prices for Tranche 3 and 
Tranche 4 would be 122% of the 30-day volume-weighted average price prior to 
issue.</p>
<p>On 13-Jan-05, Merrill Lynch
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050113/LTN20050113120.pdf">
exercised</a> its right to require US$5m Tranche 3a to be issued, together with 
options to subscribe 3,518,342 shares at the fixed conversion price of $1.656. 
EJP chose not to add a Tranche 3b. The shares closed that day at $1.37. On 
18-Feb-05, EJP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050218/LTN20050218092.pdf">
announced</a> that listing approval for the underlying shares had been obtained, 
but didn't say when. On 7-Mar-05 EJP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050308/LTN20050308024.pdf">
announced</a> that the approval was in fact obtained on 4-Feb-05, and from then 
until 28-Feb-05, US$2.5m had been converted. On 17-Mar-05, EJP
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050317/LTN20050317131.PDF">
announced</a> that the rest of Tranche 3a had been converted on 9-Mar-05, which 
was the same day that they had put out a standard
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050309/LTN20050309074.HTM">
statement</a> saying they had no idea why the volume had increased. Really!</p>
<p>So far, the estimated conversion history is as follows:</p>
<img class="center" alt="" src="../images/toxico6.gif">
<p>As you can see, the average conversion price has been $1.136, a discount of 
45.9% to the market price of $2.10 when the toxic convertibles were first 
announced, and we estimate that Merrill Lynch has made about $31m from the issue 
so far, plus any profits they may make from the share options if the price 
recovers. The number of shares in issue has been diluted by 33.2% since the bond 
was announced, entirely because of conversions. The stock closed on 7-Jun-05 
at $1.32.</p>
<p>As far as we know, Merrill Lynch has not yet required EJP to issue Tranche 
4a, and they have until the 500th day after the first bond, being 10-Jul-05, to 
do so.</p>
<p><a href="#top">Back to top</a> </p>
<h3 id="ArtTextile">Art Textile</h3>
<p>On 6-Dec-04, <a target="_blank" href="../dbpub/articles.asp?p=18197">Art Textile Technology International Co Ltd</a> (<b>Art Textile</b>, 
0565)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041208/LTN20041208053.pdf">
agreed</a> an issue of up to US$15m toxic convertibles to CSFB, including an 
initial US$10m Tranche 1 with a fixed conversion price of $0.8579. Issue 
expenses were US$563k, or 5.63%. The shares closed the previous day at $0.69, 
valuing Art Textile at HK$604.8m (US$77.54m). Up to 31-May-05, none of the bonds 
had been converted, but the overhang has been enough to drive the market price 
down 24.6% in 5 months, closing at $0.52 on 7-Jun-05. The fall came despite the 
fact that the company reported interim net profit up 32.3% for the six months to 
31-Dec-04.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="Sinotronics">Sinotronics</h3>
<p>On 27-Apr-05, CSFB found its latest victim, 
<a target="_blank" href="../dbpub/articles.asp?p=13475">Sinotronics Holdings Ltd</a> (<b>Sinotronics</b>, 
1195), which
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050506/LTN20050506025.pdf">
agreed</a> to an issue of up to US$15m toxic convertibles, including an initial 
Tranche 1 of US$10m with a fixed conversion price of $1.1722. Issue expenses 
were US$600k, or 6%. The shares closed the previous day at $0.85, valuing 
Sinotronics at HK$421.3m (US$54.02m).</p>
<p>Up to 31-May-05, no bonds have yet been converted, but since the 
announcement, the shares have fallen 12.9%, closing on 7-Jun-05 at $0.74.</p>
<p><a href="#top">Back to top</a></p>
<h3 id="RexSSP">Dishonourable Mentions</h3>
<p>The toxic convertible has also been used by lesser-known subscribers, and 
we mention them here as a warning to our readers.</p>
<h4>Rexcapital International</h4>
<p>On 12-Jun-01, <a target="_blank" href="../dbpub/articles.asp?p=4869">REXCAPITAL International Holdings Ltd</a> (<b>RexInt</b>, 0155)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20010613/LTN20010613030.doc">
agreed</a> an issue of HK$100m 5% 3-year toxic convertibles to a BVI company called Kingfair Co Ltd, whose owner was not disclosed. The fixed conversion price 
(scrip adjusted) was $0.982 and the bonds were issued on 26-Jun-01. They were 
fully converted by 26-Jan-04. The average conversion price (adjusted) was 
$0.230. </p>
<p>On 22-Jul-02, in a connected transaction, Rexcapital International Holdings 
Ltd (<b>RexInt</b>, 0155)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020725/LTN20020725026.doc">
agreed</a> to buy Rexcapital (Hong Kong) Ltd from Rexcapital 
Partners Incorporated, which in turn was 75% owned by Victor Chan How Chung, the 
Chairman and then 29.5% shareholder of RexInt, in return for HK$80m of 2-year 
toxic convertibles with a fixed conversion price of $0.36 (scrip-adjusted). The 
market price the previous trading day was $0.26. The acquisition was completed 
on 13-Dec-02. By the time the notes matured on 13-Dec-04, a total of $60m had 
been converted into shares at an average price of $0.070, a 73.1% discount to 
the market price when the bond was issued. </p>
<p>RexInt closed on 7-Jun-05 at $0.166, valuing the company at $456.9m. Net 
tangible assets at 30-Sep-04 were $346.2m, but this includes a receivable of 
$350m for the purported
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20031103/LTN20031103014.pdf">
sale</a> on 29-Oct-03 of 87.5% of REXCAPITAL Infrastructure Ltd (<b>RI</b>) to a 
BVI company called Sky China Holdings Ltd (Sky China), the owners of which have 
never been disclosed. Sky China 
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050525/LTN20050525112.pdf">has not paid a penny</a>, and in the audit report 
for the year ended 31-Mar-04, Grant Thornton said &quot;we have been unable to obtain 
sufficient information to satisfy ourselves as to the recoverability of a 
receivable&quot;. The reason the sale is so questionable is that in the 2 years ended 
31-Mar-03, RI, which purportedly owns a fibre optic network in the PRC, recorded 
zero turnover. This business had been acquired for huge piles of cash in a 
series of transactions in 1999 and 2000, from a BVI company, the owner of which 
was not disclosed. The acquisition was made despite the PRC ban on foreign 
ownership of telecom networks.</p>
<p>BUBBLE WARNING: If you count the receivable at zero, and adjust for a recent 
placing and bond conversions, then RexInt has net tangible assets of only about 
HK$38m, so it is trading at about 12x adjusted net assets. If you own RexInt, 
get out now.</p>
<h4>South Sea Petroleum</h4>
<p>On 25-Nov-04, <a target="_blank" href="../dbpub/articles.asp?p=2049">South Sea Petroleum Holdings Ltd</a> (<b>SSP</b>, 0076)
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20041126/LTN20041126056.pdf">
announced</a> a HK$80m toxic convertible with companies represented by a man who 
had been negotiating &quot;for a certain period of time&quot; with the government 
authority of Mongolia to establish a 60:40 oil exploration joint venture in the 
country. The shares closed that day at $0.53, valuing SSP at HK$254m. On 
4-Apr-05, the agreement was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20050404/LTN20050404185.pdf">
terminated</a>, without shares being issued. By then, the shares had fallen to 
$0.39, down 26.4%.</p>
<p>As a footnote, readers may recall that SSP was a ramped stock which underwent 
a spectacular 1-day 88.9%
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040903/LTN20040903103.pdf">
crash</a> on 31-Aug-04, falling from $3.325 to $0.37, during which some of the 
Chairman's shares were dumped by a margin lender. As in the case of Far East 
Pharmaceutical (<a href="#FEPT">see above</a>), there had been no legal requirement for prior 
disclosure of the pledge.</p>
<p><a href="#top">Back to top</a></p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=18197">Art Group Holdings Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5139">ASIA ALUMINUM HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=848">CHAMPION TECHNOLOGY HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=9409">CHINA RARE EARTH HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4869">CHINA SOLAR ENERGY HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5643">Credit Suisse (Hong Kong) Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=7054">EGANA JEWELLERY & PEARLS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2078">EGANAGOLDPFEIL (HOLDINGS) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2049">Elate Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17721">Hua Han Health Industry Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15854">King International Investment Limited (KY)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13475">Kingwell Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=12209">Renaissance Asia Silk Road Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=11345">Starcoin Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=8878">SUNWAY INTERNATIONAL HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=4903">Up Energy Development Group Limited</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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