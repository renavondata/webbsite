
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

<script type="text/javascript">document.title="Hobson's Choice on Privatisations";</script>

	<div class="summary"><i>Webb-site.com</i> highlights a growing trend for controlling shareholders to threaten minority shareholders with the following choice: take our undervalued offer, or risk having your shares delisted anyway, and losing the regulatory protection and liquidity of the stock market. We call for a change in the Listing Rules that make this possible, and we also deal with the obsolete requirement for a 25% free float rather than just a minimum dollar value.</div>

<h2 class="center">Hobson's Choice on Privatisations<br>
<span class="headlinedate">14 January 2001</span></h2>
<p>Exploiting a deficiency in the Hong Kong Listing Rules, several
controlling shareholders recently have been offering public minority shareholders a
<a href="http://www.dictionary.com/cgi-bin/dict.pl?term=Hobson%27s%20Choice" target="_blank">Hobson's
choice</a> between a rock and a hard place - either accept our privatisation offer at
a deep discount to fair value, or continue to hold unlisted shares without any
marketplace or any right to require a purchase. </p>

<h3>Company Law</h3>

<p>The background to this type of takeover offer, where a person
(the <b>Offeror</b>) seeks to
take a public company private, lies in company law. There are 3 relevant jurisdictions
for Hong Kong listings, namely Hong Kong, Bermuda and the Cayman Islands.
Most HK-listed companies are incorporated in one of the latter two British colonies
rather than this former colony. </p>

<p>Under the company law of the 3 jurisdictions, an Offeror can
make a compulsory purchase (at the offer price) of outstanding shares if he
manages to acquire 90% of the public shares in the course of an offer. For
example, if he owns 40% already, then he must acquire a further 54% (90% of the
public's 60%) before he can compulsorily buy the rest. Alternatively,
under Bermudan and Cayman laws (but not Hong Kong), if the offeror ends up with
95% of the Company then he can buy out the other 5%. </p>

<p>The same law applies in reverse; in certain cases, if a public
shareholder misses an offer but one person has acquired 95%, then he can force
that person to acquire his shares at a fair price determined by the courts. In
practice, this circumstance is rare. </p>

<p>As a result of the compulsory purchase laws, privatisations which are done by way of
a voluntary &quot;offer&quot; often contain a condition that the offeror must receive
acceptances of at least 90% of the public shares. </p>

<h3>The Listing Rules</h3>

<p>Although most voluntary privatisation offers contain the 90%
acceptance condition, they also normally reserve the right
to waive the 90% acceptance condition. Under its <a href="http://www.hkex.com.hk/rulereg/listrules/CH6.doc" target="_blank"> Listing
Rule 6.12</a>, the Stock Exchange of Hong Kong (<b>SEHK</b>) allows an issuer to withdraw its listing if it
achieves approval of: </p>

<blockquote>

<p>&quot;a majority in number representing three-fourths [75%] in
value of the [public] shareholders present and voting either in person or by
proxy at the meeting&quot; </p>

</blockquote>

<p>This lower threshold means that the threshold for approval of a
privatisation is in effect reduced from 90% to 75% of the public shares. Once
delisting has been obtained, the Offeror can waive his 90% acceptance condition. </p>

<p>In addition to the risk of delisting, if the public shareholding
is reduced to less than 25%, then the Stock Exchange may suspend trading in the
shares anyway. We deal with that problem later in this article. </p>

<p>Recently issuers have used the delisting/suspension threat to add pressure to
minority shareholders to accept offers which are often at deep discounts to the
underlying asset value of the companies concerned. </p>

<h3>Winsor Industrial</h3>

<p>Take for example last month's undervalued offer for the shares of Winsor
Industrial Corporation Ltd, at a huge <b>53%</b> discount to net asset value.
Independent financial adviser Anglo Chinese Corporate Finance Ltd (<b>Anglo
Chinese</b>) advised that the offer was &quot;fair and reasonable&quot;. The offer document contains a letter from the board
which says: </p>

<blockquote>

<p>&quot;Shareholders should note that if they elect not to accept
the Offer and the Offeror elects to waive the 90% acceptance level condition and
the Independent Shareholders of Winsor subsequently resolve to withdraw the
listing of the Shares from the Stock Exchange, [then] <b> Shareholders who have
elected not to accept the Offer would be left holding shares in an unlisted
company, in which circumstances the market for Shares may be illiquid.</b>&quot; </p>

</blockquote>

<p>The letter from the &quot;independent board committee&quot; is
even more blunt, adding to the above a warning: </p>

<blockquote>

<p><b>&quot;In addition, under this circumstance, Winsor will cease to
be subject to the Listing Rules and [Shareholders who do not accept the offer]
will become investors in a less regulated company with less transparency, more
limited financial reporting requirements and with fewer opportunities to vote on
significant acquisitions or realisations of significant assets.....&quot;</b> </p>

</blockquote>

<h3>Wah Kwong Shipping</h3>

<p>Almost the same wording was used by the minority adviser in the <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20000607/LTN20000607026.doc" target="_blank">offer</a>
for Wah Kwong Shipping Holdings Ltd in 2000, this time at a discount of <b>51%</b>
to net asset value. On this occasion Anglo Chinese advised Wah Kwong Shipping. In that case, the Offeror set a lower acceptance condition,
requiring that it reach a total shareholding of only 50% (the minimum allowed
under the Takeover Code). However, other substantial shareholders related to
directors, who together held some 33%, had undertaken to accept the Offer
(although they were barred from voting on the delisting), so the offeror, which
controlled 42.3% of Wah Kwong, was sure of passing the acceptance condition.
This left the delisting approval as the only real condition of the
privatisation, which duly completed. </p>

<h3>Ng Fung Hong</h3>

<p>Another privatisation offer containing the delisting condition
was Ng Fung Hong Holdings Ltd, where the delisting was <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001228/LTN20001228023.doc" target="_blank">approved</a>
on 27-Dec-00 although acceptances had only been received for 3.3% of the
company, and 33% was still outstanding. The offeror, China Resources (which was
advised by, guess who: Anglo Chinese), then
waived the 90% acceptance condition on the public offer. Needless to say,
acceptances of the offer quickly <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20010111/LTN20010111025.doc" target="_blank">flooded
in</a> after the delisting left them with the certainty of no market in which to
trade.&nbsp; </p>

<h3>The reason for the 90% acceptance condition</h3>

<p>Many listed companies and their advisers have in the past argued
that a 90% public approval condition for privatisations is too high a hurdle to
meet. They are talking their own
book. The lower the hurdle, the cheaper the offer will be. </p>

<p>Experience has shown <i>Webb-site.com </i>that on past occasions, there
are cases where the &quot;public&quot; shareholding includes parties very close to the offeror, who are
secretly attempting to influence the outcome of
the privatisation. There are plenty of ways to evade or
avoid this using relatives, trusts, nominees or offshore companies with
untraceable shareholders. </p>

<p>For example, suppose a controlling shareholder has a disclosed
75% of a company (the maximum allowed) but he or his associates have secretly
acquired another 12.5% of the company. That leaves
12.5% in public hands. Of the public, many do not realise that a vote is taking
place, or fail to get their votes back in time for the meeting. Hong Kong's
multi-layered custody system makes communications with public shareholders
difficult. Let's suppose a
relatively high turn-out, with half of the public shares voting, or 6.25% of the
company. </p>

<p>Then if just a quarter of the public votes (1.5625%) are in
favour of a delisting, and three quarters (4.6875%) want to remain public, the
company will be delisted. The controller will secretly cast 12.5% in favour, making the vote
14.0625% in favour, and 4.6875% against. Motion carried 75:25, listing removed. </p>

<p>That is the reason for the 90% condition. It ensures that unless
all but 2.5% of the company has accepted, they cannot be compulsorily acquired. </p>

<h3>Schemes of Arrangement</h3>

<p>The same logic applies to privatisations done by way of a &quot;Scheme of Arrangement&quot;
rather than a general offer. In this legal procedure, a &quot;Scheme&quot; or
takeover plan is put to
shareholders for a vote. If the Scheme is approved, then it is binding on
everyone, and if it is not approved, then no shares are acquired. The Hong Kong
<a target="_blank" href="http://eapp01.sfc.hk/apps/cc/RegulatoryHandbook.nsf/lkupMainAllDoc/H343/$FILE/Takeovers%20Code%2027.02.04%20(Eng).pdf">Takeover Code</a> (Rule 2.10) requires that the Scheme is either: </p>

<ul>
  <li>
    <p style="margin-bottom: 2">approved by a majority in number [of public
    shareholders] representing 90% in value of those
    shares that are voted.... or </li>
  <li>
    <p style="margin-bottom: 2">if not so approved by the requisite majority, not disapproved by
    [public] shareholders... holding
    more than 2.5% of the total number of shares in issue.</li>
</ul>

<p>The second part of the condition was put in a few years ago to
prevent a tiny minority from spoiling a deal in the event of a low voter
turn-out. Readers should note that without the 90% condition, <i>Webb-site.com</i>
might not have achieved an increase in Wheelock's offer for <a href="../dbpub/articles.asp?p=348" target="_blank">Lane
Crawford</a> back in 1999 by gathering together enough votes to block an
undervalued offer. </p>

<h3>Conclusion</h3>
<p>The current Listing Rule 6.12 is quite clearly in conflict with
the Takeover Code, as it allows a route for controlling shareholders to threaten
minority shareholders with becoming shareholders in an unlisted, unregulated
company. Faced with that, they are more likely to accept a miserly offer. This
in turn means that minority interests in companies will trade at a substantial
discount to fair value because of the risk of being forced to sell out at a
discount. As we have pointed out before, this increases the cost of capital for
all companies, good and bad, which makes Hong Kong's companies less competitive
in the global market. </p>

<p>Apart from privatisations which result in 100% ownership by one
party, there is no conceivable circumstance in which it is in the interests of
public shareholders to have a listing cancelled, as it strips them of regulatory
protection and a visible marketplace for their stock. </p>

<p>Therefore Listing Rule 6.12 should be scrapped, and instead
controlling shareholders who wish to privatise a company should be required
either: </p>

<ul>
  <li>to include in the offer a 90%
    acceptance condition which gives them the legal right of compulsory
    purchase, and undertake to use that right; or</li>
  <li>if they set a lower acceptance
    condition, they must undertake, if they do not achieve 90% acceptances from
    the public, to sell down their stake to raise the public holding back to the
    level needed to maintain a listing without suspension.</li>
</ul>
<h3>Obsolete Free Float Percentage</h3>

<p>The question of whether the SEHK minimum free float of 25% is
appropriate (<a href="http://www.hkex.com.hk/rulereg/listrules/CH8.doc" target="_blank">Listing Rule
8.08</a>) should also be addressed. Other markets have
long recognised that the ability to manipulate a company's stock price depends
not so much on the percentage of the shares that are held by the public, but on
the dollar size of the &quot;free float&quot; held by the public, and the number
of public shareholders. They therefore allow companies to remain listed even
when the public percentage is very small, so long as there is a viable market
size. </p>

<p>Public shareholders have no more rights when they have 25% than
when they have 10% of a company, so this is not a question of votes. </p>

<p>In Hong Kong, the SEHK will accept listing applications on the
main board with only a <b>HK$50m</b> (US$6.4m) free float, but requires all
companies with market value of less than HK$4,000m to have a free float of at
least 25%. This gives rise to the ridiculous situation where a company with a
market value of $3,900m but a free float of $900m (23%) may be suspended from
listing, while one with a free float of only $50m is free to trade.&nbsp; </p>

<p>The SEHK should therefore scrap the 25% requirement and allow
listings to be maintained so long as the market value of the free float does not
fall below HK$50m, or whatever minimum dollar value is set. </p>

<p>The risk of market manipulation when a free float (however large
in value) is held by a small number of shareholders remains, but the way to deal
with that is by prosecution of the offending shareholders, not by penalising the
innocent with a suspension of trading in their stock. </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=2552">China Resources Ng Fung Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=1871">WAH KWONG SHIPPING HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=507">WINSOR INDUSTRIAL CORPORATION, LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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