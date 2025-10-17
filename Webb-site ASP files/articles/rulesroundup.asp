
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

<script type="text/javascript">document.title="Listing Rules Review Part 5: Rules Roundup";</script>

	<div class="summary">We're almost out of time on the Listing Rules consultation, which closes next Monday, so this final part of our review covers some of the remaining issues from the 176 page document. We look at notifiable transactions, directors' pay and share dealings, connected transactions, battles for control of the board, and the availability of basic corporate documents.</div>

<h2 class="center">Listing Rules Review Part 5: Rules Roundup<br>
<span class="headlinedate">17 April 2002</span></h2>
<table class="txtable center">
	<tr>
		<th class="center" colspan="2">In this article</th>
	</tr>
	<tr>
		<td>
		    <a href="#Notifiable">Notifiable transactions</a><br>
			<a href="#Connected">Connected transactions</a><br>
			<a href="#Dealings">Securities dealings</a><br>
			<a href="#lock-up">Lock-up periods</a>
		</td>
		<td>
			<a href="#Pay">Directors' pay</a><br>
			<a href="#Removal">Removal of directors</a><br>
			<a href="#Documents">Corporate documents</a><br>
			<a href="#Final">Final words</a>
		</td>
	</tr>
</table>
<p>It's only once in a blue moon that the market gets consulted on
amending the Listing Rules in such a major fashion, so it's a shame that there isn't an organisation
like <a href="../HAMS/" target="_blank"> HAMS</a> to provide a complete and thorough analysis and represent investor
interests in the process. </p>

<p>Nevertheless, we'll have a go at picking out some of the
remaining highlights from the 176-page <a href="http://www.hkex.com.hk/library/listpaper/Corporate%20governance%20issues.pdf" target="_blank">consultation
paper</a> that we haven't previously
covered, and giving our views. </p>

<h3 id="Notifiable">Notifiable transactions</h3>

<p>The SEHK has reviewed the thresholds and conditions for classification of acquisitions or disposals
by listed companies into &quot;Discloseable&quot; transactions (those that must be announced),
&quot;Major&quot; transactions (those that require shareholders' approval)&nbsp;
and &quot;Very Substantial&quot; (those that might be treated as a new listing), and the tests used to determine these classifications are
also being revised.</p>
<h4>The Assets Test</h4>
<p>In the past, the Exchange has compared net assets being bought
or sold with net assets of the listed company, to determine the percentage. This
has led to anomalies where companies have negative net assets (as in the case of
PCCW) because then every deal becomes a Major Transaction. The SEHK proposes to
move to a &quot;Total Assets&quot; test which looks at the top half of the
balance sheet to compare changes in the core business, without regard to how it
is financed.</p>
<p>In principle, this is the right way to go. Investors are
primarily concerned about the materiality of a transaction relative to the
existing business of the company, excluding the effects of the capital structure
(cash and debt in the balance sheet). We support the proposal to move to a
&quot;Total Assets&quot; test, but on the following conditions:</p>
<ul>
  <li>
    &quot;Total Assets&quot; should exclude cash, bank deposits
    and short-term investments held as current assets. This is because it would
    otherwise be easy to inflate the total assets denominator just before the year-end by
    borrowing large amounts of money and putting it back in the bank savings
    account, or into the bond or stock markets. That would then allow the
    company to make larger transactions in the following year without
    shareholders' knowledge or approval.</li>
  <li>
    &quot;Total assets&quot; should exclude intangible assets.
    This is because intangible assets are inherently less certain and realisable
    than fixed assets such as real estate. For example, we have seen companies
    in the past attach intangible asset value to their own listing (which
    obviously cannot itself be sold), or to their brand-names. Directors might
    be tempted to attach excessive value to intangible assets in order to reduce
    disclosure and approval requirements for company transactions.</li>
</ul>
<h4>The Consideration Test</h4>
<p>Here, the SEHK proposes a similar amendment, to compare the
consideration paid or received in a transaction with Total Assets of the listed
company. That is wrong, because it compares apples and oranges -&nbsp; that is,
the price of geared assets are compared with the value of ungeared assets. It
ignores any debt or other liabilities which are acquired or removed as part of the
transaction.</p>
<p>Therefore, the denominator should be the Total Assets of the
listed company (again, excluding intangibles, cash, deposits and short-term
investments) and the numerator should be the consideration plus any net debt
being acquired or realised - let's call it the &quot;Adjusted
Consideration&quot;.</p>
<p>For example, if you are buying a company for a price of $1,000
and that company has $500 of net debt, then the Adjusted Consideration for the
&quot;ungeared&quot; company is $1,500. Conversely, if the target company has
$200 of net cash, then the Adjusted Consideration for the ungeared company is
only $800.</p>
<h4>New transaction classification thresholds</h4>
<p>In a move which tacitly admits that shareholders have been kept
in the dark, and without a say, on too many important matters, the Exchange
proposes to lower the classification thresholds for Discloseable and Major
Transactions.</p>
<p>We strongly support these proposals, which are to reduce the
definition of &quot;Discloseable&quot; from 15% to 5%, and &quot;Major&quot; from
50% to 25%. What this means in practice, is that before a company can go and buy
or sell 25% of your assets, it must seek shareholders' approval, and
whenever it does something that varies total assets by 5%, then it must tell the
public. These thresholds are in line with international practice and we urge the
SEHK to proceed with them.</p>

<p>The Very Substantial Acquisition (<b>VSA</b>) threshold, at
which the company may (with certain exceptions) be treated as an applicant for
new listing, remains at 100% (i.e. a doubling of the total assets) and this is acceptable.</p>

<h4>Very Substantial Disposals</h4>

<p>The SEHK proposes a new classification of &quot;Very Substantial
Disposal&quot; or <b>VSD</b>. While the paper appears silent on the consequences
of a VSD classification, we presume that, in line with a VSA, it means that with
certain exceptions, the company would be treated as a new applicant for listing.
In that case, the rules should require that a VSD and a VSA must be made conditional on such
listing being
granted, otherwise it would be a handy way to force a delisting of the company
without the normal procedure being followed.</p>

<p>We support the concept of a VSD, because it would at least
provide another route to prevent major asset-stripping proposals (such as the
proposed <a href="notomboto.asp" target="_blank">Boto Buy-out</a>) where the
remaining business may not qualify for listing due to inadequate track record.</p>

<p>However, the proposed threshold at which this applies is wrong.
The SEHK starts on the right lines by saying:</p>

<blockquote>
  <p>&quot;In a [VSA], the existing business of the issuer will
  constitute less than half of the enlarged business after the acquisition.
  Therefore, logically, a [VSD] should apply where over half of the business has
  been sold...&quot;</p>

</blockquote>
<p>Right so far - if a VSA is a doubling, then a VSD is a halving.
But then they say:</p>

<blockquote>
  <p>&quot;For practical reasons, we propose a threshold of 75% for
  [VSD]s&quot;</p>

</blockquote>
<p>Hello? The last time we checked with our maths professor, a half
was 50%, not 75%. The SEHK does not specify any <i>&quot;practical reasons&quot;</i>
and we believe that the VSD threshold should be <b>50%</b>.</p>

<h4>Loans should be treated as notifiable transactions</h4>

<p>There is another loophole that needs closing. At present, a
company can make loans of any size it likes to an independent third party, or to
an associated company, without shareholders' approval. Disclosure is only
required if a loan exceeds 25% of net assets, but approval is never required.
This is wide open to abuse - a very substantial amount of money can be
&quot;lent&quot; to a third party, never to be seen again when they default.
Alternatively, if a loan is secured against property or other assets, the only
way to get the money back may eventually be to foreclose on the assets,
resulting in a &quot;Major Transaction&quot; in the acquisition of property
which cannot be refused.</p>

<p>In a recent example, <a href="../dbpub/articles.asp?p=4780" target="_blank">
Interchina Holdings Ltd</a>, a company we have written about before, <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020322/LTN20020322022.doc" target="_blank">announced</a>
that it had agreed to &quot;participate and invest&quot; in the Urban
Development Scheme of Changsha New Sports City in Hunan Province, PRC. In actual
fact, this deal was a loan of up to RMB480m (HK$453m) to a third party, secured
on property, and the commitment amounts to <b>79.5%</b> of the unaudited net
assets at 30-Sep-01. Surely, such a major disposal of the company's money should
be treated as a Major Transaction. But the SEHK responded to our complaint as
follows:</p>

<blockquote>
  <p>&quot;The co-operation agreement as disclosed in the announcement is not a
  notifiable transaction under Chapter 14 of the Listing Rules as it does not
  involve any acquisition of assets.&quot;</p>
</blockquote>

<p>We submit that loans by any listed company (except for normal
loans by licensed banks) should be subject to the same classification rules as
any other notifiable transaction - i.e. discloseable at 5% of Total Assets, and
subject to shareholder approval at 25% of Total Assets.</p>

<p>Ironically, if Interchina had been purchasing bonds which were
secured against the same property, then that might have&nbsp; been treated as a
Major Acquisition of assets (the bonds) rather than a loan, even though the end
result, namely a loan against property, is the same.</p>

<h4>GEM should be the same</h4>

<p>SEHK also concludes that all the classification Rules for GEM
should be the same as the main board, and we agree.&nbsp;</p>

<h3 id="Connected">Connected Transactions</h3>

<h4>Associates</h4>

<p>The consultation paper falls short on this. There is a discussion of
the various people who escape the scope of the
connected transaction rules by not being an &quot;associate&quot; of a director,
chief executive or substantial shareholder (let's call them a &quot;Core
Person&quot;). But then the SEHK concludes with a proposal to do nothing while
listing several alternatives. We think the definition should include:</p>

<ul>
  <li>Any settlor or beneficiary of a trust of which a Core Person
    or his family is a beneficiary or discretionary object, and any companies or
    other entity controlled by any such trust;</li>
  <li>In relation to a substantial corporate shareholder, any
    person or concert party who controls 30% or more of a corporate
    substantial shareholder, whether directly or through a chain of such
    shareholdings</li>
</ul>
<p>To take an example, currently the trust of Li Ka-Shing (<b>Mr Li</b>)
controls
36% of Cheung Kong (Holdings) (<b>CKH</b>), which as shown in this <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020412/0001/f101.pdf" target="_blank">group
chart</a>, controls 49.9% of Hutchison Whampoa (<b>HWL</b>), which controls
84.6% of Cheung Kong Infrastructure (<b>CKI</b>), which controls 38.9% of
Hongkong Electric (<b>HKE</b>). That makes CKI a connected person of HKE as a
&quot;substantial shareholder&quot;, and also HWL is a connected person of HKE
because it is the holding company of CKI (or in other words, because CKI is its
subsidiary). However, CKH and Mr Li (who is not a director of HKE) are not
connected persons of HKE.</p>
<p>The amendment would recognise the reality that everyone in that
chain is a connected person of HKE, and that Mr Li through CKH controls
Hongkong Electric (as he is deemed to under the Takeover Code). This is
important, because it means that transactions between HKE and CKH or Mr Li would
be subject to disclosure or approval by HKE minority shareholders.</p>
<p>To take another example, for several years, Peter Woo
Kwong-ching (<b>Mr Woo</b>), until he resumed Chairmanship on 1-Apr-02, was not a director of
Wheelock &amp; Co Ltd, and as such, the trust of which he and his family are
beneficiaries (the settlor of which was his late father-in-law, the shipping
tycoon Y.K. Pao) was deemed to be a substantial shareholder, but Mr Woo and his
family were not &quot;connected persons&quot; of Wheelock and so were free to
deal with the group outside the connected transaction rules. Under our proposal,
any such transactions would have been covered by the rules.</p>

<h4>Associated companies in connected transactions</h4>

<p>The SEHK has also picked up on something we wrote about last
year, namely that off-balance sheet vehicles, such as 50:50 joint ventures
between <a href="outofsight.asp" target="_blank">Cheung Kong and Hutchison
Whampoa</a>,
are outside the scope of the current connected transaction rules, so the joint
ventures can engage in almost any transaction they like, even though they are ultimately
controlled by the same person.</p>

<p>The SEHK proposes that If the listed group and connected persons together have control
(meaning over 50% or the ability to control the board) of an associated company, then such
associated companies shall fall &quot;<i>within the regulatory net for the purpose of connected
transactions&quot;</i> and of course, since we brought this up in the first place,
we support them.</p>

<p>But we go further than this. The <b> rules regarding Discloseable
and
Major Transactions should also apply to such off-balance sheet vehicles</b>,
proportionate to the listed company's percentage interest in such vehicles. This
is firstly because that makes it consistent with the proposed treatment for
connected transactions, and more importantly because such deals can be just as
significant to the balance sheet of the listed company as if it was a
subsidiary, due to the funding provided by the listed company. Don't just take
our word for it, ask Enron - it was deals by off-balance sheet partnerships that
helped crash the company.</p>

<p>At present, there are obligations to disclose certain advances
and guarantees to associated companies under Practice Note 19 (where these
exceed 25% of net assets), but these deals do not get assessed by the rules for
notifiable transactions. So one easy way to get money off balance sheet is
first, to set up a 50:50 joint venture with a controlling shareholder, with just
$2 of share capital (1 share each) and later, to shovel piles of cash into it as
&quot;advances to an associated company&quot;, with the connected party putting
in its share of the loan. The associated company can then go off and do Major
transactions without shareholders' approval, and this should be stopped.</p>

<h4>De minimis thresholds</h4>

<p>The SEHK proposes to adjust the <i>de minimis </i>or&nbsp; minimum threshold for disclosure
of a connected transaction to the &quot;<i>higher of HK$1m or 0.01% of Total
Assets</i>&quot;. Currently the limit is the higher of $1m and 0.03% of net
assets. They also propose adjusting the minimum threshold for shareholders'
approval to the higher of $10m and 1% of Total Assets (currently 3% of net
assets).</p>

<p>We agree that the test should be based on Total Assets, but
again, Total Assets should exclude intangibles, cash, deposits and short-term investments. We
disagree with the limit itself. The exemption is designed to remove the need for
disclosure or approval if the costs of compliance would be prohibitive, but the cost
of disclosure by way of preparing, approving and filing an electronic
announcement (which is all that will soon be needed) is a lot less than $1m -
perhaps closer to $10,000.</p>

<p>Accordingly, we think disclosure should be triggered at the
greater of <b>$100,000 or 0.01%</b> of Total Assets. For companies with Total
Assets under $1,000m, that means the disclosure threshold is $100,000. Under the
SEHK proposal, the $1m limit would apply until Total Assets reached $10,000m -
which is probably only satisfied by fewer than 50 companies.</p>

<p>In the case of shareholders' approval, there are additional
costs of producing a printed circular, getting an opinion letter from a
financial adviser, and holding the shareholders' meeting. But this should not
normally exceed $200,000. Accordingly, we think the limit should be the greater
of <b>$2m or 1%</b> of Total Assets.</p>

<p>Bear in mind that, for small companies, $10m is a lot of money -
it could easily amount to 10% of total assets. Under the SEHK's proposal, a
company would need total assets of $1,000m before the 1% figure would be higher
than $10m, and this opens the door to widespread abuse.</p>

<p>Not only that, but we could have the bizarre circumstance of a
company&nbsp; having a $9.9m deal with a connected party which was a
Discloseable transaction (if Total Assets were less than $198m) or even a Major
Transaction (if Total Assets were less than $39m) without the deal requiring
independent shareholders' approval.</p>

<h3 id="lock-up">Post-IPO lock-up periods</h3>
<p>The SEHK attempts to close a loophole in the Listing Rules
regarding the lock-up by controlling shareholders. Currently the lock-up period
begins only from the first day of dealings in the stock, which opens a window
for sale in the typically 10-day period between a prospectus and the
commencement of dealings. The SEHK suggests moving the start of the lock-up
period to the date of the prospectus. Wrong! That still leaves a period between
the &quot;Latest Practicable Date&quot; prior to the printing of the
prospectus&nbsp; and the date of the prospectus itself. This can typically be
1-2 weeks, depending on bank holidays. So the lock-up should apply from the
&quot;Latest Practicable Date&quot; onwards, to close that loophole completely.</p>
<h3 id="Dealings">Securities Dealings</h3>
<p>The current black-out period for dealings by directors in the
shares of their companies is 1 month prior to the board meeting for the final or
interim results, and the SEHK proposes no changes to that, but to introduce a
2-week black-out period prior to quarterly results. By comparison, London rules
require a 2-month black-out before the interim or annual results.</p>
<p>We have <a href="../pages/loopholes.asp#DelayInsider" target="_blank">explained</a>
in the past that the basis of the black-out period is wrong. It provides a
direct incentive for the directors to delay publishing results until the last
possible moment allowed under the Listing Rules, so that they can deal on the
inside information up to 1 month before those results are published. Under current rules,
annual results must be out by 4 months after the year-end, which gives them 3
months to play with inside information after the year end.</p>
<p>Even if the reporting deadlines are shortened to 3 months, as
proposed, that
still allows 2 months of post-year-end insider dealing. There are almost never
any prosecutions under the insider dealing laws for this, because it is
impossible to prove when the directors knew that the company had taken a dive or
found a gold mine.</p>
<p>Any company which doesn't have a good idea how much it has made
or lost by the end of a financial period really should not be listed. Monthly
management accounts would tell the board what they had made for the first 2, 5 or
11 months of the quarter, half-year or year,, and the final month can be extrapolated or estimated from orders in
hand.</p>
<p>So instead of an incentive to delay the results, we call for an
incentive to announce them earlier, by setting the black-out period <b>from the
end of the financial period until the results are announced</b>. That means that
directors who want more dealing time should get their results out faster.</p>

<h3 id="Pay">Directors' Pay</h3>

<p>There are insider problems with directors' pay both in
diversified markets such as the UK and US, where companies normally have no controlling
shareholders, and in controlled markets such as Hong Kong. Shareholders have no
direct say over how much directors pay themselves with company money, but when
the director in question is also a controlling shareholder, things are even
worse, because minorities cannot pressure for the removal of over-paid and/or
incompetent directors.</p>

<p>Any other contract with a director is a &quot;connected
transaction&quot; potentially requiring shareholders' approval, but directors'
employment contracts are not currently treated that way. So paradoxically, if a
controlling shareholder attempts to sell an empty cardboard box to his company
for $20m, then it is a connected transaction subject to independent
shareholders' approval, and would be voted down, but if he simply awards himself
a $20m bonus as a director (via the board he controls), then nothing stops him.</p>

<p>In a free market, very few investors object to the principle of
paying what it takes to hire and retain the right management. That is not the
issue. Look inside the annual report, and you know before you invest, what the
board was paid last year. But you have no idea how much they might take this
year. So there is always the risk that the board will double or even quadruple
their pay without explanation, as happened with <a href="sunpay.asp" target="_blank">Sunday
Communications</a> in 2000.</p>

<p>What shareholders need is clear and advance knowledge, and the
right to approve or reject, any profit-sharing or bonus schemes, or other items
that might cause a significant increase in a director's remuneration in the
future. We suggest
&quot;significant&quot; should mean 20%. Put simply, <b>anyone who thinks they
deserve 20% or more increase next year for doing the same job as last year,
should explain why, in what circumstances, and get approval of shareholders other than himself.</b></p>

<p>The listed companies will doubtless claim that this restricts
their ability to hire and retain good directors, but that is nonsense -
especially when the directors are also the controlling shareholders - they are
hardly going to work elsewhere. In practice, most investors would support any
scheme which incentivises good performance and doesn't look excessive by the
previous standards of the company.</p>

<p>Many IPOs these days do include service agreements in which the
directors' (controlling shareholders') bonuses are capped at a fixed percentage
of profits, and sometimes subject to a minimum profit target. That's good, but
the problem is, these agreements can easily be replaced after the IPO, or when
they expire, without any shareholders' approval.</p>

<p>One of the greatest fears of investors facing a discounted
privatisation offer for their shares is, &quot;if we reject this offer, will the
management screw us in future?&quot;. One of the many ways in which a
controlling shareholder can legally penalise minorities is to cut the dividend
and take out the profits as directors' bonuses instead.</p>

<p>The SEHK does not support our view, instead trotting out the
idea that directors can be trusted to set their own pay, approve their own
bonuses, and tell us after the fact. If we want a high quality market, then we
have to get past the current regime in which the controlling shareholder sits
down at the end of the year, looks in the mirror and says &quot;how much of this
profit shall I keep for myself&quot;? Only once in history (nearly a decade ago,
in the Sincere case) have the regulators intervened to persuade the board to put
back excessive bonuses.</p>

<p>The SEHK does propose disclosure of individual directors' pay,
and we support this. If you are a director and don't like the lack of privacy,
then don't take your company public. By definition, a public company has to be
accountable to public investors, and that includes disclosure of all directors'
dealings with the company, including pay.</p>

<h3 id="Removal">Removal of directors</h3>

<p>Another matter, which is not discussed in the consultation paper
but urgently needs addressing, is the procedure for shareholders to appoint or remove a
director.</p>

<p>Under the requirements of the Listing Rules, the articles of
association of a company must allow for the removal of a director by &quot;special
resolution&quot;, unless otherwise provided by law. That means a 75% majority of votes
is needed to remove a director. This is wholly inconsistent with the fact that a
director can be elected with an &quot;ordinary resolution&quot;, requiring only a 50%
majority of votes.</p>

<p>The ridiculous consequence of this is that even if someone
acquires 51% ownership of a company, he cannot remove the directors. Instead he
has to &quot;flood the board&quot; by convening a general meeting in which he
nominates as many directors as there are already, plus one for a majority. Even
then, the old directors might stay put.</p>

<p>The rules should require that all companies (including existing
ones) change their articles so that any director can be removed from office by
ordinary resolution of shareholders.</p>

<h4>Maximum number of directors</h4>

<p>Another little known fact is that many companies have a maximum
number of directors, which has been set in shareholders' general meeting,
sometimes before the company even went public. That number is often not
published. So if you are a shareholder nominating new directors, you don't know
how may will fit into the boardroom. The rules should require that the maximum
number of directors be set out in every annual directors' report and announced
to the SEHK if it changes.</p>

<h4>Delays in Requisition of Meetings</h4>

<p>The Listing Rules do not set a maximum period in which a board
must respond to a requisition from shareholders for a general meeting. Nor do
they set a maximum notice period. This allows entrenched management to drag
things out for months and abuse the company in the process.</p>

<p>So the rules should require them to publish a notice of general
meeting within 21 days of a requisition, and that the notice period for the
meeting should not exceed 28 days. The SEHK should require companies to adopt
these changes in their articles, and that all directors should abstain on the
resolution to amend the articles, to stop them voting it down.</p>

<p>The rules should also require that delivery of a requisition to
the Hong Kong principal place of business be deemed sufficient. Some companies
have rejected requisitions on the grounds that they should have been sent to a
brass nameplate in Bermuda or the Cayman Islands.</p>

<h4>Examples</h4>

<p>There are regular cases to illustrate this problem. Take King
Pacific International Holdings Ltd, which has been in boardroom battles for many
months. In Feb-02, according to his announcement, an outside shareholder, who
held the necessary 10% of the company, tried to requisition a general meeting.
21 days later, the incumbent board had not convened a meeting, so the shareholder
tried to convene one himself, publishing a notice of SGM to increase the maximum
number of directors to 41 and appoint 21 new directors. The meeting was to be
held on 15-Apr-02.</p>

<p>The incumbent board responded on 12-Apr-02 by <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020415/LTN20020415054.DOC" target="_blank">appointing</a>
no less than 34 new directors - presumably because they thought the maximum
already allowed this.</p>

<p>Meanwhile, on 15-Apr-02 the outside shareholder held an SGM to
appoint the 21 people nominated in the notice he had previously published. So at
the last count, there were about 62 directors. At the rate we are going, there
will soon be more directors than shareholders in this company.</p>

<p>In another case, an offeror has <a href="http://www.hkexnews.hk/listedco/listconews/sehk/20020409/LTN20020409079.doc" target="_blank">acquired</a>
58.45% majority ownership of Symphony Holdings Ltd, but the incumbent board has
not stepped aside, so the offeror on 8-Mar-02 has requisitioned a general
meeting to increase the number of directors and flood the board. However, the
incumbent board on 25-Mar-02 then published a notice of General Meeting which
does not take place until 28-Jun-02 - allowing for three long months of possible
foot-dragging and frustrating actions such as diluting the offeror with new
share issues after the offer period is over.&nbsp;</p>

<p>We need to get beyond this &quot;rent a crowd&quot; board battle
system, and the SEHK can facilitate this with our recommended changes to the
Listing Rules.</p>

<h3 id="Documents">Corporate documents</h3>

<p>The memorandum and articles of association (<b>M&amp;A</b>), which are the
constitution of a company, are almost impossible to find. A summary is included
in the prospectus of an IPO, but that is the last that you'll ever see. You have
to be a registered shareholder (which most people are not) in order to be
entitled to a copy of the M&amp;A. Even then, you have to pay for a hard copy,
or go down to the companies registry and print it off a microfiche.</p>

<p>Now that we have a fully electronic filing system on the SEHK
web site, there is no reason to restrict the availability of these documents.
The M&amp;A of every company should be scanned into PDF format and made available for
download from the SEHK web site.</p>

<p>Furthermore, we have the age-old &quot;documents available for
inspection&quot; system in which important information is often buried in the
&quot;material contracts&quot;, or directors' service agreements. The only way
to view these documents is to come to Hong Kong and visit the relevant place
during the typical 14 days allowed for the exercise. In the past, we have gained
important information, such as correctly <a href="starless.asp" target="_blank">predicting
the demise</a> of the Star TV-PCCW joint venture, by looking through these
documents. We couldn't even take copies, so we had to bring a Dictaphone and a
note-pad.</p>

<p>These documents should again be scanned and filed with the
SEHK web site, and available for any investor, without discrimination as to
whether they can make it to Hong Kong in time to view them. We are trying to be
an international market, after all.</p>

<h3 id="Final">Final words</h3>

<p>Well that's all we have time for folks, but don't take our
silence to mean agreement with those areas of the consultation document that we
have not had time to cover in detail.</p>

<p>If we had to make one overall remark about this consultation
paper, it is
that it demonstrates Hong Kong's continuing reluctance to take the big steps
needed to establish a high quality market, and to install the checks and
balances that are necessary when there is a predominance of controlling
shareholders. Under the SEHK's proposals, unless our amendments are accepted, Hong Kong will continue to have:</p>

<ul>
  <li>non-independent &quot;independent directors&quot; who are
    chosen and elected by controlling shareholders and are unaccountable to, and have no mandate from, independent shareholders;</li>
  <li>massive non-pre-emptive share issues, which
    repeatedly dilute
    ownership and voting rights;</li>
  <li>a rigged show-of-hands voting
    system on anything other than connected transactions, frustrating the
    fundamental principle of 1 vote per share;</li>
  <li>insider dealing long after financial results are known to
    the management, but before they are&nbsp; published; and</li>
  <li>controlling shareholders who can decide their own bonuses as
    directors, before paying out dividends to minorities.</li>
</ul>
<p>More than anything, this consultation paper fails to achieve its
stated goal: Hong Kong still has a long way to go to reach international best
practice.</p>
<p><em>&copy; Webb-site.com, 2002</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1366">KING PACIFIC INTERNATIONAL HOLDINGS LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=125">Directors' remuneration</a></li>
				
				<li><a href="/dbpub/subject.asp?c=126">Directors' sharedealings</a></li>
				
				<li><a href="/dbpub/subject.asp?c=134">Electronic filing</a></li>
				
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