
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

<script type="text/javascript">document.title="Second Opinion";</script>

	<div class="summary">Time for a second visit to the Webb-site.com surgery for Town Health, which we critcised last year. Now, with the shares down another 78%, they have made a placing with persons who the SFC is not satisfied are independent of the controlling shareholder, while the SEHK has approved the issue. This highlights the ongoing conflict between the SEHK, one of the World's only for-profit regulators, and the SFC, a conflict which is holding up the reform of the market.</div>

<h2 class="center">Second Opinion<br>
<span class="headlinedate">20 June 2001</span></h2>
<p>It's time for a second look at local medical chain <a href="http://www.townhealth.com/" target="_blank"> Town Health
International Holdings Ltd</a> (<b>Town Health, </b>8138) which entered our surgery&nbsp;
back in November 2000, when we recommended some pretty stiff medicine. </p>

<p>Four weeks after its IPO, the company
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20001117/00000MC20001117004246H.pdf">announced</a>
a plan to spend almost half its IPO proceeds on an acquisition of a health
products distributor from a related party. </p>

<p>We <a href="townhealth.asp">criticised</a> the Company for
failing to disclose in its prospectus the identity of one of the company's
Initial Management Shareholders, Johnny Lau Wing Hung (<b>Mr Lau</b>), who is
the Chairman of Suwa International Holdings Ltd (<b>Suwa</b>). We pointed out
that Town Health's Vice Chairman, Derek Sum Kwong Yip (<b>Mr Sum</b>), is also
an Executive Director of Suwa. </p>

<p>Mr Lau and Mr Sum owned 85% and 15% respectively of Jacobson
Medical Corporation (<b>Jacobson</b>), which at the IPO held 34.9m shares of
Town Health, or 8.72% of the company. We also noted that the original
announcement of the deal stated that Jacobson Medical (Hong Kong) Ltd (<b>Jacobson
HK</b>), in which Mr Sum had a 10% interest and was Managing Director, was one
of the top 5 suppliers to Town Health, which contradicted a prospectus statement
that none of the directors had any interest in the top 5 suppliers. </p>

<h3>Town Health's response</h3>

<p>The day after our article, Town Health put out a &quot;<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20001122/00000MC20001122025014C.pdf">clarification</a>&quot;.
In a hilarious twist of logic, they said that </p>

<blockquote>

<p>&quot;the identity of Mr Lau... was disclosed in the prospectus
on an anonymous basis.&quot; </p>

</blockquote>

<p>Gee, the lawyers must have worked long and hard on that one. The
company also stated that (contrary to the first announcement) Jacobson HK is <u>not
</u>one of the five largest suppliers of the group. Without actually naming the
supplier they were referring to, they said that Mr Lau owns 51% of it and the
other 49% is owned by an &quot;independent third party&quot;, although Mr Sum is
a director of the supplier. They did not mention whether that ownership was the
same at the time of the IPO. </p>

<p>Anyway, the Stock Exchange muttered its usual stuff about <i>&quot;reserves
the right to take action against the Company, the Directors and any relevant
parties for possible breach of the GEM Listing Rules&quot;</i> - and nothing
more was said. </p>

<p>You'll be pleased to hear that 18 days later, Town Health
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20001209/00000MC20001209120218H.pdf">announced</a>
that the deal was scrapped. </p>

<h3>Next Deal</h3>

<p>On 9-Feb-01 Town Health
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010212/00000MC20010212090421I.pdf">announced</a>
the purchase of&nbsp; a 46.43% stake in Luxembourg Medicine Co Ltd (<b>Luxembourg</b>)
from a BVI company owned by <i>&quot;an individual&quot;</i> who is an <i>&quot;independent
third party&quot;</i>. In a later
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010302/00000MC20010302092133O.pdf">circular</a>, the individual was named as <i>&quot;Ms.
W.M. Fung&quot;</i>. The vendor retained 45.02% while the remaining 8.55% was
owned by 6 other &quot;independent third parties&quot;.&nbsp; </p>

<p>Luxembourg's principal business is the manufacture and sale of
cough syrup under the brand name &quot;Madam Pearl's&quot;. According to an <a href="http://www.fda.gov/ora/fiars/ora_import_ia6610.html" target="_blank">import
alert</a> by the US FDA, the product contains Codeine, an ingredient specially
regulated because of its abuse potential. The product is a <a href="http://www.info.gov.hk/pharmser/Reg_ir/PRS_MM.TXT" target="_blank">registered
pharmaceutical</a> in Hong Kong. </p>

<p>The price on the deal was <b>HK$39m</b> in cash, just more than
Town Health's net IPO proceeds of $38m, although the company insists that the
deal was funded from <i>&quot;internal resources other than the proceeds of [the
IPO]&quot;</i>. This avoids any implication that there has been a change of
intended use of the IPO proceeds. </p>

<p>Luxembourg had audited net assets at 31-Dec-99 of only HK$0.42m,
which had risen to $8.01m (unaudited) at 30-Nov-00 (presumably based on 11
months' earnings), meaning that Town Health's share was $3.72m. </p>

<p>The turnover and earnings of Luxembourg had been falling, with
net profits down from $21.3m in 1998 to $13.6m in 1999 and an unaudited $8.6m in
the 11 months to 30-Nov-00. Despite this slump, Town Health described the
business as <i>&quot;promising&quot;</i> and said the consideration was
reportedly agreed <i>&quot;having regard to the future growth prospects&quot;</i>. </p>

<h3>Another deal</h3>

<p>On 28-Mar-01 Town Health
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010329/00000MC20010328235042O.pdf">announced</a>
the purchase of a 24% stake in century-old <a href="http://www.hkpe.com.hk/einfo/top10/win_WY.htm" target="_blank">Wai
Yuen Tong Medicine Co Ltd</a> (<b>WYTM</b>) from HK-listed Wang On Group Ltd (<b>Wang
On</b>). </p>

<p>There's an interesting history to this deal. On 22-Dec-00 Wang
On <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20001227/LTN20001227007.doc" target="_blank">announced</a>
that it had agreed to buy a 99.79% stake in WYTM from a BVI company called
Bio-Project Ltd (<b>BPL</b>), whose owner was not identified. </p>

<p>WYTM is principally engaged in the business of manufacturing,
processing and retailing Chinese medicine which includes products sold under its
own brand name &quot;Wai Yuen Tong&quot;. Net assets at 31-Dec-99 were HK$35.9m
and net earnings were $9.6m in 1998 and $10.3m in 1999. </p>

<p>In fact, Wang On had paid the entire <b>$127m</b> purchase
price, or 41.8% of its own net assets, as a &quot;loan&quot; in instalments on
3-Nov-00 and 29-Nov-00, but shareholders did not hear about it until 22-Dec-00
and had not yet approved the
deal. They eventually did so on 27-Feb-01. Wang On had breached the Listing Rules by failing to disclose
the loan. As
usual the Stock Exchange <i>&quot;reserved its right to take further action
against the Company and/or its director&quot; </i>and nothing more was said. </p>

<p>Now back to Town Health. In its own announcement, it disclosed
the owner of BPL was &quot;Mr Chan Ken&quot;. As a result of the deal, Town
Health owns 24% of WYTM purchased from Wang On, which retains 75.79%, while 3
individuals own the remaining 0.21%. The purchase price is <b>$30.06m</b> in
cash, of which $25.06m came from &quot;internal resources&quot; and the other
$5m from the IPO proceeds. Town Health this claimed this was in line with the
prospectus plan to utilise $5m to <i>&quot;partially fund the establishment
and/or acquisition of not less than three traditional Chinese medicine
consultation centers&quot;. </i>We think it is a bit of a stretch to relate that
to an investment in a medicine maker and retailer. </p>

<p>Earnings of WYTM were $9.45m in 1998 and $9.14m in 1999, rising
to $11.56m (unaudited) in the 11 months to 30-Nov-00. </p>

<h3>Jacobson Unloads</h3>

<p>Now remember Jacobson, the shareholder which held 8.32% of Town
Health after the IPO? They were subject to the 6-month lock-up on their holding
under the GEM rules (as waived from the original rule of 2 years). The day that
lock up expired, Jacobson began to unload its shares, selling 2.644m shares on
18-20 Apr-01 as the price dropped from $1.20 to $0.64, then 2.83m shares on
23-Apr-01, and 1m shares on 24-25-Apr-01. As Jacobson's stake is below the
antiquated 10% disclosure threshold, we only know this because the company was
forced to announce possible reasons for the market volatility. </p>

<h3>Placing</h3>

<p>When we issued our wealth warning on this stock on 19-Nov-00,
the price was <b>$2.25</b>. Having outlayed $69m of cash on the two
acquisitions, of which $64m was from &quot;internal resources&quot;, those
resouces must have been getting low. </p>

<p>On 3-May-01 Town Health decided it was time to raise
more cash from the market, having seen the price slide 78% from our warning to $0.50. They
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010507/00000MC20010507004556S.pdf">announced</a>
a placing of 50m existing shares from the controlling shareholder at $0.45,
matched by a subscription of 50m new shares at the same price (less expenses). </p>

<p>The placing by Great China Brokerage Ltd went to a total of 20
placees. A total of 24.5m of these placing shares (49% of the issue) went to
employees or directors of the placing agent and their spouses, and unusually, a
partial breakdown of the placing list was disclosed in the announcement. </p>

<p>Next, it was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010508/00000MC20010508230914E.pdf">announced
</a>on 8-May-01 that Jacobson had sold another 13.09m shares, or 3.27% of Town
Health. </p>

<h3>SFC says No</h3>

<p>Now as a result of the placing of 50m existing shares, Origin
Ltd, the controlling shareholder of Town Health, saw its stake drop from 49.12%
to 36.62%, just above the 35% that it had undertaken to maintain for 12 months
after the IPO. It was intended to increase this back to 43.66% by the
subscription of the same number of new shares. However, as that is more than a
5% increase, it requires the consent of the SFC under the Takeover Code. This
consent is normally given, subject to: </p>

<blockquote>

<p>&quot;confirmation from the financial adviser or placement agent
of the controlling shareholder of the identity of the placee or placees and
whether they are independent&quot;. </p>

</blockquote>

<p>In other words, to qualify for the waiver, the placing has to at
least appear to be with independent placees. Now on 16-May-01 Town Health
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010516/00000MC20010516221239U.pdf">announced
</a>that the SFC was not yet satisfied, and it was extending the deadline for
the subscription by 3 weeks, to 7-Jun-01, with the consent of the Stock
Exchange, which normally requires these deals to be done within 14 days after
the placing. A second extension of 2 more weeks was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010607/00000MC20010607183504U.pdf">announced
</a>on 7-Jun-01. </p>

<p>Finally, on 14-Jun-01, the SFC told the controlling shareholder <b>that
it was not satisfied that the placees of the Placing are independent </b>of the
controlling shareholder. </p>

<p>To us, this statement carries the implication that the SFC
believes there may be some connection or understanding between one or more
placees and the controlling shareholder and it has not been satisfied to the
contrary. The SFC is prohibited from commenting on the case. </p>

<p>Accordingly, on 15-Jun-01 Town Health
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010617/00000MC20010616122848F.pdf">announced</a>
that it would scale back the subscription to 34m shares so that Origin's stake
only increased by 4.96% to 41.58%, within the 5% limit of the annual
&quot;creeper&quot; allowance under the Takeover Code. That means that a bid waiver
is no longer required and they don't need to care about what the SFC thinks. </p>

<h3>Stock Exchange says Yes</h3>

<p>Despite the SFC's ruling, the Stock Exchange has not said that
the placing and subscription in any way amounts to a connected transaction.
Instead, they have treated it as a normal issue under the general mandate, and
the GEM Listing Committee granted approval of the subscription which was
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20010618/00000MC20010618220717Q.pdf">completed
</a>on 18-Jun-01. </p>

<h3>Split Regulation</h3>

<p>So let's see: the SFC smells a problem, and says that it is not
satisfied that the placees are independent, but the Stock Exchange in effect
says that it is satisfied, by granting approval of the listing of the new shares
without treating the deal as a connected transaction. The SFC only rarely goes
so far as to block a placing, and is likely to have acted with good reason. </p>

<p>This highlights the ongoing rift between the two bodies. <i>Webb-site.com</i>
pointed out the problem in <a href="uturn.asp#Listing">an article </a>back in
Jul-99 during the merger process which gave rise to Hong Kong Exchanges &amp;
Clearing Ltd, the parent of the SEHK. </p>

<p>The Stock Exchange is now one of the World's only
for-profit regulators, and should not be in control of the listing process.
There is a direct conflict of interest between the short-term maximisation of
profits (achievable by minimising regulatory expenditure and relaxing rules to
increase listings) and the long-term quality of market regulation. In London, this conflict of interest was recognised and the <a href="http://www.fsa.gov.uk/ukla/" target="_blank">Listing
Authority</a> was transferred from the London Stock Exchange to the Financial
Services Authority when the exchange was turned into a for-profit company. Hong
Kong has yet to learn that lesson and move the Listing Division to the SFC as we
advocate. </p>

<p>Almost a year ago, on 30-Jun-00 the SEHK and SFC closed a <a href="gemyourview.asp" target="_blank">consultation</a>
period on whether the GEM Listing Rule Waivers should remain in place. Since
then, no news has been announced on the results of this consultation, despite
several statements by officials that it was coming soon. All you have to go on
is the <a href="gemresponses.asp" target="_blank">responses </a>of readers of <i>Webb-site.com</i>. </p>

<p>Sources indicate that there is continuing dispute between the
powerful GEM Listing Committee of the SEHK, which wants the waivers to stay, and
the SFC, which wants a stricter approach. The SFC has the power to approve or
reject changes to the Listing Rules under <a href="http://www.legislation.gov.hk/blis.nsf/d2769881999f47b3482564840019d2f9/a9f1f790464a8b3cc825648300291641" target="_blank">Section
35</a> of the Stock Exchanges Unification Ordinance, but cannot force changes,
which must be proposed by the SEHK under <a href="http://www.legislation.gov.hk/blis.nsf/d2769881999f47b3482564840019d2f9/05900f34637ff6cec825648300291630" target="_blank">Section
34</a> of that Ordinance. <b>The SFC can, however, revoke its consent to the
existing blanket waivers of the listing rules by the SEHK, which have the same
effect as amending them. We believe it should do so until agreement is reached.
This has gone on long enough.</b> </p>

<p><b>It seems clear that so long as we have two different regulators
supervising listed companies, one of them for-profit, then market regulation
will be inefficient, inconsistent, fractious and slow to reform.</b> </p>
<p><em>&copy; Webb-site.com, 2001</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11691">Town Health International Medical Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2475">WANG ON GROUP LIMITED</a></li>
				
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