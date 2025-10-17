
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

<script type="text/javascript">document.title="HPH Trust is no loss to HK";</script>

	<div class="summary">Singapore has invested over US$5bn in Hutchison's ports, so it is not surprising that HPH is listing there. We look at the other incentives, and the governance concerns for the Business Trust structure. We also ask why China Resources Enterprise (291) has not disclosed the outcome of its profit-sharing after CRH flipped its port stakes to HPH.</div>

<h2 class="center">HPH Trust is no loss to HK<br>
<span class="headlinedate">21 January 2011</span></h2>
<p>There's been much hand-wringing amongst legislators and media in HK this week 
about &quot;losing out&quot; to Singapore as a choice of listing for yet another spin-off 
of <a href="../dbpub/orgdata.asp?p=366">Hutchison Whampoa Ltd</a> (<strong>HWL</strong>, 
0013), this time the South China ports business of its 80% subsidiary,
<a href="../dbpub/orgdata.asp?p=45376">Hutchison Port Holdings Ltd</a> (<strong>HPH</strong>, 
BVI). 
We don't think HK is losing out at all, and it would be a loss if HK were to 
lower its standards to attract such business, as we will explain.</p>
<p>The
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110118/LTN20110118019.pdf" target="_blank">
proposed spin-off</a> involves creating a Business Trust (<strong>BT</strong>) 
under the
<a href="http://statutes.agc.gov.sg/non_version/cgi-bin/cgi_legdisp.pl?actno=2004-ACT-30-N" target="_blank">
Singapore Business Trust Act of 2004</a> (<strong>BTA</strong>), called 
Hutchison Port Holdings Trust (<strong>HPH Trust</strong>). The world hasn't 
exactly been rushing to create BTs - there are only
<a href="http://www.mas.gov.sg/legislation_guidelines/business_trust/sub_legislation/List_of_Registered_Business_Trust.html" target="_blank">
10 currently</a>, over 6 years since the enactment in 2004. The first, 
Pacific Shipping Trust, was listed on 26-May-2006.</p>
<p>The Trustee-Manager (<strong>TM</strong>) of HPH Trust will be Hutchison Port 
Holdings Management Pte Ltd (<strong>HPH Management</strong>), which will be 
100% owned by HWL, not by HPH. That cuts the 20% minority shareholder of HPH,
<a href="../dbpub/orgdata.asp?p=20881">PSA International Pte Ltd</a> (<strong>PSA</strong>) 
out of the management fees. </p>
<p>PSA is wholly-owned by <a href="../dbpub/orgdata.asp?p=1559">Temasek Holdings 
(Pte) Ltd</a>, in turn owned by the Singapore Government, and has been a buyer 
of HWL's assets since at least 2005:</p>
<ul>
	<li>On 10-Jun-2005, PSA
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20050704/LTN20050704090.pdf" target="_blank">
	bought</a> 50% of Gobalwide Resources Ltd (<strong>Gobalwide</strong>, BVI) 
	from HWL for US$925m (HK$7,215m). Gobalwide in turn owned about a 40% 
	indirect interest in <a href="../dbpub/orgdata.asp?p=2619">Hongkong 
	International Terminals Ltd</a> (<strong>HIT</strong>), which operates 
	container terminals 4, 6, and 7 at Kwai Chung and terminal 9 at Tsing Yi 
	(now conjoined as Kwai Tsing), HK. So that deal gave PSA a 20% interest in 
	HIT, while HWL was reduced to 66.5%. HIT in turn owns 50% of
	<a href="../dbpub/orgdata.asp?p=2797">COSCO-HIT Terminals (Hong Kong) Ltd</a> 
	(<strong>COSCO-HIT</strong>), which operates terminal 8. The other 50% is 
	owned by <a href="../dbpub/orgdata.asp?p=818">COSCO Pacific Ltd</a> (1199).</li>
	<li>On 21-Apr-2006, PSA
	<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20060517/LTN20060517108.pdf" target="_blank">
	bought</a> a 20% interest in HPH from HWL for US$4,388m (HK$34bn). There are 
	actually two vehicles involved in the global ports business; HPH and 
	Hutchison Ports Investment SARL (<strong>HPI</strong>), incorporated in 
	Luxembourg, but the ownership is the same. The deal was structured via two 
	special-purpose vehicles, one in the BVI and one in Luxembourg, owning 40% 
	of HPH and HPI respectively, and each owned 50% by PSA and 50% by HWL. As a 
	result, HWL owned 80% of HPH which in turn owned 66.5% of HIT.</li>
</ul>
<p>So after more than US$5bn of Singapore government investment in the HPH business, 
there is a natural affinity towards listing there.</p>
<p>HWL plans to initially retain only 25% of HPH Trust. If this were a 
HK-listed company, then it would be feasible for others to launch a takeover or 
to insist on board changes, particularly if they become dissatisfied with the 
management. It takes 50% approval of shares voted to remove a director or 
appoint a new one. But how do you remove the TM of a BT? Here's the catch.
<a href="http://statutes.agc.gov.sg/non_version/cgi-bin/cgi_getdata.pl?actno=2004-ACT-30-N&amp;segid=1090478757-000298#1090478757-000672" target="_blank">
Section 20</a> of the BTA says:</p>
<blockquote>
	&quot;The trustee-manager of a registered business trust may be 
	removed as the trustee-manager by the unitholders of the registered business 
	trust only:
	<ol style="list-style-type:lower-latin">
		<li>if a resolution to remove the trustee-manager is 
		approved by unitholders of the registered business trust holding in the 
		aggregate not less than three-fourths of the voting rights of all the 
		unitholders of the registered business trust who, being entitled to do so, vote 
		in person or where proxies are allowed, by proxy present at a meeting of the 
		unitholders of the registered business trust; and</li>
		<li>in accordance with 
		such procedures as the Authority may prescribe.&quot;</li>
	</ol>
</blockquote>
<p>So unitholders of HPH Trust would need 75% approval to remove HPH Management as TM. 
If HPH retains 25% plus one unit, then HPH Trust will be bid-proof. Even if HPH 
is prohibited from voting, it would be an uphill struggle to get the required 
majority. Short of that, unitholders will have very little say (except on 
connected transactions) because they will not be able to elect directors of HPH 
Management, unlike a listed company. In short, the only way to change the 
directors of a TM is to own the TM.</p>
<p>BTs are governed partly by
<a href="http://www.mas.gov.sg/resource/legislation_guidelines/business_trust/sub_legislation/Business_Trusts_Regulations_2005.pdf" target="_blank">
Regulations</a> made under the BTA. These require one third of the directors of 
the TM to be &quot;independent&quot; from management and from every substantial 
shareholder of the TM. However, they are not electable by 
unitholders, so in practice they serve at the pleasure of whoever owns the TM. 
Just like INEDs in a listed company with a majority shareholder - the INEDs 
serve at the pleasure of the majority shareholder, and until that changes, 
they are only as independent as the controller wants them to be.</p>
<p>Upon the sale of HPH Trust, HWL's interest in HPH will be reduced to 25%, and 
its interest in HIT and other subsidiaries will be even lower, while still retaining 100% of its operations and receiving fee 
income for doing so. Nice work if you can get it. But why should HK create a 
regime which makes it easier for tycoons to exercise control over assets with 
such a low level of economic interest? We don't need to, because they can 
already do it through multi-level corporate pyramids. For example,
<a href="../dbpub/orgdata.asp?p=388">Hongkong Electric Holdings Ltd</a> (<strong>HKE</strong>, 
0006) is at the 4th level of the Cheung Kong pyramid, 38.87% owned by Cheung 
Kong Infrastructure Ltd (1038), which is 84.58% owned by HWL, which is 49.97% 
owned by Cheung Kong (Holdings) Ltd (<strong>CKH</strong>, 0001), which is 
42.12% owned by Li Ka Shing. So CKH controls HKE with only a 16.4% economic 
interest, and Mr Li only has a 6.9% interest in HKE.</p>
<p>It is true that a Singapore Business Trust (<strong>SBT</strong>) can pay 
distributions out of cash flow even if they are not making a profit, but that is 
really not relevant to HPH's decision, because regular listed companies which 
have racked up losses can 
always reduce their share premium or share capital to pay out cash, with a 
relatively simple process, and besides, HPH is highly profitable. So that's not 
a good reason for choosing an SBT.</p>
<p>One incentive might be that Singapore
<a href="http://www.nortonrose.com/knowledge/publications/2010/pub29416.aspx?page=100630094604&amp;lang=en-gb" target="_blank">
offers a tax break</a> for trustee-managers of SBTs which are involved in 
offshore infrastructure. That presumably includes ports, and means that HPH 
Management, if it qualifies, would only pay 10% income tax for the first 10 
years. Well, that's Singapore for you, always playing around with tax incentives 
to direct its centrally-planned economy. It is something that HK has avoided, 
and long may that last. We don't &quot;do&quot; tax incentives - although we do have a 
Government which cannot resist the temptation to designate industries as 
&quot;pillars&quot; and dish out land allocations for them.</p>
<p>There's no Singapore stamp duty payable on the transfer of BT units or REITS though, unlike HK 
stocks and REITS.</p>
<p>Singapore does
<a href="http://www.iras.gov.sg/irasHome/page04.aspx?id=146" target="_blank">tax 
its residents on some dividends</a> from domestic companies (although this may 
have reduced to nothing after changes to a &quot;one-tier corporate tax system&quot; in 
2002), but not foreign 
dividends. It does not tax distributions from unit trusts, including BTs. But HK 
doesn't have that problem - there is no taxation of dividends here, nor should 
there be: dividends are paid out of profits <u>after</u> 
tax, so taxing dividends would amount to double taxation. So we have no need to create a BT system to avoid a HK dividend tax which doesn't 
exist.</p>
<p>All in all, we can see no good reason for HK to emulate Singapore Business 
Trusts. There's no tax reason for doing so, and there are governance 
reasons why we shouldn't. We should not race to the bottom just to win business 
from tycoons who are not willing to work with existing corporate governance 
standards, nor should we offer tax incentives for trustee-managers (or any other 
business sector).</p>
<h3>Payout for CRE?</h3>
<p>Before announcing the spin-off, HWL &quot;(or its subsidiaries)&quot; increased its 
interest in part of the business. It wasn't clear which of HWL and its 80% 
subsidiary HPH was making 
these acquisitions. On 31-Dec-2010, HWL (or HPH)
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20110103/LTN20110103023.pdf" target="_blank">
agreed</a> to buy from China Resources (Holdings) Co Ltd (<strong>CRH</strong>) 
10% of <a href="../dbpub/orgdata.asp?p=3996">HIT Investments Ltd</a> (<strong>HITIL</strong>, 
BVI), 10% of <a href="../dbpub/orgdata.asp?p=63724">Hutchison Ports Yantian 
Investments Ltd</a> (<strong>HPYIL</strong>, BVI), 12% of the A-shares in
<a href="../dbpub/orgdata.asp?p=3992">Omaha Investments Ltd</a> (<strong>Omaha</strong>, 
HK), stakes in two other minor subsidiaries, and the remaining 45.45% of a 
<a href="http://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=en&amp;geocode=&amp;q=9+chong+yip+street&amp;aq=&amp;sll=22.396428,114.109497&amp;sspn=1.392823,1.101379&amp;ie=UTF8&amp;hq=&amp;hnear=9+Chong+Yip+St,+Hong+Kong&amp;ll=22.313659,114.220417&amp;spn=0.001228,0.002151&amp;t=h&amp;z=19&amp;layer=c&amp;cbll=22.313656,114.220423&amp;panoid=9H9BkOHS_l3KEE8CLhlz8Q&amp;cbp=12,249.01,,0,-35.29" target="_blank">property at 9 Chong Yip Street</a>. This increased HWL's stakes (including via HPH) 
to 99% of HITIL (which owns 100% of HIT), 99% of HPYIL, 100% of Omaha, and 100% 
of the Chong Yip Street property. The total price was HK$5,700m. The 
announcement didn't say what Omaha does, although the HWL annual report says 
&quot;property owning&quot;.</p>
<p>The sale by CRH to HWL (or HPH) came 14 months after CRH had
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/20091111/LTN20091111172.pdf" target="_blank">
bought</a> the same or similar assets along with a textile business from its 
listed subsidiary, <a href="../dbpub/orgdata.asp?p=1108">China Resources 
Enterprise, Ltd</a> (<strong>CRE</strong>, 0291) in an asset swap. In that deal, 
the 10% interests in HTIL and HPYIL were valued at a total of $3,319m. 
Interestingly, the terms of that sale included that if CRH subsequently sold the 
port interests or any part of them for more than $3,300m, then it would pay 50% 
of the excess amount to CRE. It now appears that CRH has done just that, selling 
the assets for $5,700m.</p>
<p>It is unclear whether the stake 
in Omaha and the Chong Yip Street property were part of the CRE-CRH deal, but if 
they were, 
then the excess was $2,400m <strong>and CRE could be entitled to a $1,200m 
payout</strong>. The attributable NAV of the 12% of Omaha at 31-Dec-09 was 
$214m, and the book value of the Chong Yip Street property at 31-Dec-2010 was 
$390m, so 45.45% of that was $177m. So even if those two assets were not part of 
the CRE-CRH deal, there is still a gain by CRH of about $2,009m, which should 
yield about $1bn for CRE under the agreement.</p>
<p>So far, CRE has failed to make any announcement about this, even 
though it is substantial relative to the $3,783m of net profit for 2009. Given 
that this entitlement to a profit-share arose from a connected transaction with 
its parent, CRE should announce whether or not there is a payout due from the 
on-sale by CRH, and if so then how much.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=1108">China Resources Beer (Holdings) Company Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=818">COSCO SHIPPING Ports Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2797">COSCO-HIT TERMINALS (HONG KONG) LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3996">HIT Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=2619">HONGKONG INTERNATIONAL TERMINALS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=45376">HUTCHISON PORT HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=63724">Hutchison Port Yantian Investments Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=366">Hutchison Whampoa Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3992">OMAHA INVESTMENTS LIMITED</a></li>
				
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