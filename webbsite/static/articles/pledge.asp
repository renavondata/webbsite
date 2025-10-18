
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

<script type="text/javascript">document.title="Disclosure of Pledges";</script>

	<div class="summary">After recent one-day crashes in several stocks, there is renewed focus on the need to disclose share pledges. Some, including the CEO of HKEx, have suggested that this can be dealt with in the Listing Rules. But they are missing the point - HKEx has no jurisdiction over shareholders. There is a simple solution - remove the exemption of banks and brokers from the disclosure law.</div>

<h2 class="center">Disclosure of Pledges<br>
<span class="headlinedate">7 September 2004</span></h2>
<p>In the last three months, there have been spectacular one-day sell-offs in 
shares of three small-cap companies, and this has brought renewed attention to 
the major gap in Hong Kong's regime for disclosure of interests in shares.</p>

<p>Paul Chow, CEO of <a target="_blank" href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and 
Clearing Ltd</a> (<b>HKEx</b>, 0388), has reportedly asked the Listing Division 
of the Stock Exchange to consider whether shareholders should be required to 
disclose pledges of shares on a continuing basis. A number of commentators have 
supported this proposal. While we believe the disclosure is needed, this is the 
wrong approach to the problem, and we'll explain why.</p>

<h3>Background</h3>

<p>The current situation, under Listing Rule 10.07, is that for 12 months after 
listing, if a controlling shareholder (holding 30% or more of the shares) 
pledges any shares as security for a loan, then he must disclose that to the 
company, and the company must announce it. This is a achieved by way of a 
written undertaking provided by the controller before listing is approved. The 
12 month period corresponds to the lock-up undertaking which prohibits 
controllers of newly listed companies from disposing of any shares for the first 
6 months, and requires them to hold at least 30% for the second 6 months.</p>

<p>However, after the first year is over, there is no longer any general 
obligation for pledges by a controlling shareholder to be disclosed, unless it 
relates to a loan or guarantee provided to the company, in which case the 
company must disclose it under Rule 13.17.</p>

<h3>Right approach, wrong regulator</h3>

<p>The Stock Exchange implements Listing Rules on a contractual basis under the 
Listing Agreement with listed companies. As part of that process, listed 
companies and their directors agree to abide by the Listing Rules.</p>

<p>The problem with the proposal to require shareholder disclosure is that the 
exchange has no jurisdiction over shareholders, who are not a party to the 
Listing Agreement. In some cases, directors may also be controlling 
shareholders, holding shares in their own name or in BVI companies that they 
control. In those cases, the exchange can expect compliance due to the 
obligations of directors, which includes companies they control.</p>

<p>But in many cases, the controlling shares are held by offshore trusts (to 
avoid estate duty) and the trusts are not legally controlled by the director, so 
he cannot force the trustee to follow Listing Rules.</p>

<p>In another set of cases, there are controlling shareholders who are not 
directors of the company at all - sometimes because they have criminal records, 
or simply because they don't like the disclosure obligations and dealing 
restrictions of being a director. So they get hired hands to run the board 
instead.</p>

<p>So any effort by the exchange to extend its jurisdiction beyond directors to 
plain shareholders would fail. The only time the exchange has any leverage is at 
the time of listing, when it can and does require controlling shareholders to 
enter into the 1-year undertakings described above. But after listing, any 
subsequent controlling shareholder is not within reach of the exchange unless 
they are a director.</p>
<p>The most the exchange could do would be to require directors who are also 
substantial or controlling shareholders to disclose pledges of shares in which 
they are interested. While that would be an improvement, it doesn't go far 
enough.</p>
<h3>Legal obligations under the SFO</h3>
<p>The solution to this problem is actually very simple. Hong Kong already has a 
legal disclosure regime in Part XV of the
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/" target="_blank">Securities and Futures Ordinance</a> (<b>SFO</b>). Under that regime, interests 
of 5% or more in the shares of a listed company must be disclosed. These 
&quot;interests&quot; include &quot;security interests&quot;. A person receives a security interest 
in shares when someone pledges shares to that person. So the good news is that 
the law already requires pledges to be disclosed! If you pledge 5% of a company 
to a friend, your friend has to disclose it. </p>
<p>&quot;So what's the problem&quot;, we hear you ask?</p>
<p>The bad news is that there is a giant loophole. Under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s323.html" target="_blank">Section 323(1)(f)</a>, an &quot;exempt security interest&quot; does not have to be 
disclosed. This is defined by Section 323(6) to be an interest which is:</p>
<blockquote>
  <p>&quot;held by a qualified lender by way of security only for the purposes of a 
  transaction entered into in the ordinary course of his business as such a 
  qualified lender&quot;</p>
</blockquote>
<p>And a &quot;qualified lender&quot; is defined by
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s308.html" target="_blank">Section 308(1)</a> to be a bank (including a restricted licence bank or a 
deposit taking company), a stockbroker, insurer or anyone licensed by the SFC to 
provide margin finance on shares.</p>
<p>The security interest only becomes discloseable if the lender effectively 
forecloses and starts selling the stock, and then he has the usual 3 business 
days in which to make the disclosure. By then, of course, it is too late to be 
of much use to investors as the stock will already have crashed. The exact 
conditions in which disclosure is triggered are set out in
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s323.html" target="_blank">Section 323(7)</a>.</p>
<h3>The principle</h3>
<p>The principle behind the disclosure law is&nbsp; that it should require 
sufficient disclosure for investors to be aware of positions which may affect 
the market in the shares. That is the basis of the 5% threshold - because for 
most stocks, the disposal of such a large holding would represent several weeks 
of turnover in the market and could impact the price, even if done gradually, 
and similarly, someone who is consistently increasing their holding may have an 
upward effect on the price which may not be sustained if they stop. </p>
<p>If a person has pledged more than 5% of the shares in a company to a lender, 
then the probability of a rapid disposal is materially higher than if the shares 
are held &quot;free and clear&quot; because there is an additional risk that the borrower 
may not keep up repayments on the loan, or may fail to meet a margin call when 
the stock price falls, and this could immediately trigger a default and a right 
of the lender to sell the shares. In such circumstances, the lender's only 
concern is not to get the best price in the market but to cover his loan (as any 
surplus belongs to the borrower), so he is likely to sell far more rapidly than 
a substantial shareholder who is voluntarily reducing his holding.</p>
<p>That's actually a best-case scenario. There are other cases in which the 
lender may actually act in cahoots with a third party to push down the price, 
trigger a margin call and take control of a company through a fire-sale of the 
stock.</p>
<p>So the sensible solution is to remove the &quot;qualified lender&quot; exemption from 
the SFO, and require all security interests of 5% or more to be disclosed.</p>
<h3>Past consultation</h3>
<p>Despite the recent incidents, this is not a new problem. Regulators have 
looked at it in the past, but have always been under pressure from vested 
interests (tycoons, banks and brokers) not to lift the veil on security 
interests.</p>
<p>In Jun-98, the SFC
<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=98CP4" target="_blank">consulted</a> the market on this but set out on the basis of proposing not to 
make any change, and sure enough, it didn't. It wrote:</p>
<blockquote>
  <p>&quot;As the existing provisions are in line with international standards and 
  the imposition of a duty on banks to disclose share pledges before enforcement 
  of security might create undue burden on their normal business activities, it 
  is not currently the SFC's intention to change the Ordinance in this respect.&quot;</p>
</blockquote>
<p>and on the suggestion that the borrower should disclose the pledge, they 
wrote:</p>
<blockquote>
  <p>&quot;The informational value of the pledge itself may not serve particularly 
  useful purpose without the knowledge of the financial position of the 
  substantial shareholder at a particular point in time.&quot;</p>
</blockquote>
<p>In the Mar-99
<a href="https://www.sfc.hk/edistributionWeb/gateway/EN/consultation/listing-and-takeovers/conclusion?refNo=98CP4" target="_blank">conclusions paper</a>, the SFC wrote, regarding lenders:</p>
<blockquote>
  <p>&quot;In the SFC's view, imposing a duty on banks and licensed brokers to 
  disclose share pledges before enforcement of security would create undue 
  burden on their normal business activities.&quot;</p>
</blockquote>
<p>and on borrowers:</p>
<blockquote>
  <p>&quot;There is a need to balance a substantial shareholder's right to privacy in 
  relation to his personal financial affairs against the usefulness to the 
  market of disclosure of share pledges.&quot;</p>
  <p>&quot;disclosure of the pledge itself would not provide meaningful information 
  on the likelihood of a forced sale&quot;</p>
</blockquote>
<h3>Let's take a look at these concerns</h3>
<p>These arguments don't stand up to much scrutiny.</p>
<h4>&quot;Undue burden&quot;?</h4>
<p>First, on the &quot;undue burden&quot; argument, asset managers, whose &quot;ordinary 
business&quot; is to hold interests in shares, are already subject to the 5% 
disclosure regime and there have not been any serious difficulties in complying 
with this. So it is really far-fetched to claim that banks and brokers could not 
handle the &quot;undue burden&quot; of filling in disclosure forms when asset managers 
have complied.</p>
<p>What is really behind this is not any practical difficulty in complying, but 
a wish on the part of banks and brokers for secrecy in their dealings. That is 
outweighed by the public interest in fair and orderly markets. If a lender 
wishes to keep its loans private, then it should not take such large positions 
(over 5%) as collateral.</p>
<h4>&quot;Disclosure is meaningless&quot;</h4>
<p>Second, on the &quot;disclosure is meaningless&quot; argument, we strongly disagree. If 
a shareholding has not been pledged, then the probability of a forced sale by a 
lender is zero, but if it has been pledged, then the probability is greater than 
zero. That is what we call informational value. It provides notice to investors 
that if they hold the stock, there is a non-zero risk of a sudden sell-off by a 
lender, and furthermore, if there is a sudden and unexplained fall in the price, 
then an investor will know that there is a strong likelihood that the lender is 
selling the stock. This is valuable information. Indeed in some cases, this 
knowledge might reduce the market impact of a forced sale, because knowledgeable 
investors would know that the business still has some value and they would go 
into the market and buy stock from the lender at a fair price. In the absence of 
a known pledge, they might think there is something wrong with the company and 
stand back until the smoke clears.</p>
<p>Investors will not treat the information that stock is pledged in isolation. 
They may well have other knowledge about the borrower. For example, the borrower 
may be a listed company, for which financial information is disclosed, and the 
investor can assess the gearing and reach a view on the risk of sale. The 
borrower may also be a person who is known to have other financial commitments, 
for example, a property speculator. Mortgages against property are filed with 
the Lands Registry, and mortgages by companies over assets are filed at the 
Companies Registry - so it is an ironic fact that there is more information 
available on pledged private assets than there is on pledged listed shares.</p>
<h4>Privacy v public interest</h4>
<p>Third, on the &quot;privacy&quot; argument, this is outweighed by the public interest. 
If you are a controlling shareholder who wants privacy, then don't float you 
company on the Stock Exchange, and don't ask the public for their money. If you 
want their money, then you must be willing to live with the transparency that 
goes with it. If you are an investor who wants privacy, then stay under 5% and 
you will be private. The same privacy arguments were trotted out by listed 
companies when the Exchange proposed requiring named disclosure of directors' 
pay, but in the end the public interest prevailed and next year we will see 
these disclosures in annual reports.</p>
<h3>Conclusion</h3>
<p>There is no way that HKEx can extend its jurisdiction to shareholders at 
large. They can only deal with directors and listed companies, and that doesn't 
take us far enough. The SFC is currently in the process of conducting a promised 
review of the disclosure provisions in the SFO, so it has an ideal opportunity 
to fix this problem by removing the qualified lender exemption. Legislation is 
expected sometime in 2005, when lawmakers will also deal with the amendments to 
provide statutory backing to certain listing rules. If the lender's exemption is 
removed, then there will be no need for HKEx to make any changes to the Listing 
Rules because the law takes precedence.</p>
<p>The alternative approach would be to require the borrower to disclose the 
pledge rather than the lender, but we think that would be an inferior choice. 
The law as it stands imposes the obligation on the person holding the security 
interest (or any other type of interest), so that is the way it should stand. 
There will be better compliance with a lender-disclosure obligation because (a) 
this will be a regular occurrence that their compliance departments can deal 
with professionally and (b) the lenders are all regulated entities who would 
have pressure to comply in order to keep their licenses. In contrast, investors 
are often not regulated by anyone, may be unaware of their obligations, and are 
also often overseas (including mainland China) where they are beyond reach of 
the HK courts.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=127">Disclosure of interests - securities</a></li>
				
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