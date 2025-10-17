
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

<script type="text/javascript">document.title="Rusal and the retail investor";</script>

	<div class="summary">Reports say the SFC wants to prohibit the retail offering of Rusal and/or require the company to adopt a massive board lot for trading in its shares. Both measures would in fact increase the risk for retail investors, as we explain. The SFC should stick to the principles of a disclosure-based market and focus on legislative reform to increase the deterrent to prospectus fraud.</div>

<h2 class="center">Rusal and the retail investor<br>
<span class="headlinedate">20 December 2009</span></h2>
<p class="revisedate"><a href="#update">updated</a> 21-Dec-09</p>
<p>Media reports in the last few days have indicated that the SFC has been 
toying with various ways to &quot;protect retail investors&quot; from the proposed Hong 
Kong listing of Russian aluminium and alumina producer
<a href="../dbpub/orgdata.asp?p=55733">United Company RUSAL</a> (<strong>Rusal</strong>)</p>
<p>The reports say that the SFC is considering two measures:</p>
<ol>
	<li>Not allowing Rusal to have a public offer tranche in its listing, 
	permitting only an institutional placing.</li>
	<li>Requiring that the board lot (the minimum transaction size for automated 
	trading on the Stock Exchange) be set at a very high level to deter 
	smaller retail investors from buying the stock.</li>
</ol>
<p>Both measures would in fact increase the risk for retail investors, and the 
second measure is downright dangerous. Not only that, but the SFC appears to 
be suffering from institutional amnesia - as we explain below, the idea of large board 
lots has been considered before, in 1998, and ruled out as a way to exclude 
small investors from the GEM board.</p>
<h3>Public offers</h3>
<p>In our view, whether to conduct a retail public offering should be a matter 
of choice for all listing applicants. Public offerings involve significant 
additional expense, including appointing a receiving bank, advertising in 
newspapers, bulk printing of prospectuses and application forms, and publishing 
allotments results. Such expense may not be worthwhile for some companies, 
particularly smaller ones, so the obligation to have a public offer can be a 
deterrent to choosing HK as a listing venue. Other companies, such as large 
banks, may consider that the public offering is a way to build goodwill with 
potential customers.</p>
<p>Public offerings are optional on the GEM board, but until now, virtually all 
main board listings involving the sale of new or existing shares have been
<u>required</u> to have a public offering tranche, with the 
exception of
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_21.pdf">
Chapter 21</a> investment companies (see Rule 21.14). Public offerings are the 
rule, and if an issuer does not want to do one, then it has to convince the 
Exchange that there is unlikely to be significant public demand. Indeed,
<a target="_blank" href="http://www.hkex.com.hk/rule/listrules/Chapter_7.pdf">
Rule 7.10</a> says:</p>
<blockquote>&quot;The Exchange may not permit a new applicant to be listed by 
way of a placing if there is likely to be significant public demand for the 
securities&quot;</blockquote>
<p>We are not aware of any such waiver from the public offer requirement ever 
having been granted.</p>
<p>But now, the SFC appears to be saying that Rusal, rather than being required 
to have a public offer, should be prohibited from having one. This is bizarre. 
The general public can buy the shares in the secondary market, so excluding them 
from the primary offering does nothing to protect them. <strong>In fact, as a 
matter of company law, excluding retail investors from the IPO reduces 
protection, because under the Companies Ordinance, investors can only rely on a 
prospectus (in terms of right to sue) if they are subscribers in the initial 
offering</strong>.</p>
<p>Companies and their directors are liable for fraudulent, reckless or 
negligent misrepresentations under
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/BBB7A14E4094B33448256BBA0012EEDF?OpenDocument">
Section 108</a> of the Securities and Futures Ordinance (<strong>SFO</strong>). 
However, subsection 108(4) says that Section 108 does <span class="style3">not</span> 
apply to any case to which
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc/6AF7F02814BC84A848256F5F000C517D?OpenDocument">
Section 40</a> of the HK Companies Ordinance (<strong>CO</strong>) applies, i.e. 
to prospectuses. Under that section, purchasers of shares in the secondary 
market cannot sue against the prospectus. In a 2005
<a target="_blank" href="http://www.sfc.hk/sfcConsultation/EN/sfcConsultMainServlet?name=prospectusregime">
consultation paper</a>, the SFC proposed allowing secondary buyers to sue, but
<a target="_blank" href="http://www.sfc.hk/sfc/doc/EN/speeches/public/consult/06/conclusions_prospectus_060922.pdf">
abandoned</a> that in 2006.</p>
<h3>Giant board lots</h3>
<p>What a short memory the SFC has. In May-98, the Stock Exchange published a
<a target="_blank" href="http://www.hkgem.com/research/listingmatters/e_consultation.pdf">
consultation paper</a> &quot;On a proposed new market for emerging companies&quot;. The 
result formed the basis of the Growth Enterprises Market, or GEM board, which 
was launched in Nov-99 after the SFC approved the Listing Rules.</p>
<p>SEHK wrote in the Executive Summary on page 3 of the consultation paper:</p>
<blockquote>&quot;In light of the significant risks to investors, the Second 
Market should not be a mass market open to all investor groups but a specialised 
market targeting only sophisticated investors (i.e. professional and 
knowledgeable retail investors). It is proposed to set a high minimum 
transaction size to deter the participation of other retail investors and to 
raise investors' awareness of the need to conduct a thorough appraisal prior to 
investing in these companies.&quot;</blockquote>
<p>and page 8 says:</p>
<blockquote>&quot;The Exchange is of the view that the minimum transaction size 
for Second Market companies should be set at a level not lower than HK$250,000.&quot;</blockquote>
<p>They also proposed some lower limits for the market to consider. The minimum 
transaction size was to be effected by setting a large minimum board lot. Your 
editor served as a member of SEHK's &quot;New Market Development Group&quot; in the run-up 
to that consultation. In the committee and in our
<a href="2ndBoardSubmission.asp">submission</a> in 1998, we opposed 
the concept of a large board lot, for the following reasons:</p>
<ul>
	<li>If an investor wants to own the stock, they might stretch themselves to 
	buy a single board lot, taking excessive risk. They would be forced to make 
	an &quot;all or nothing&quot; bet. They might even use a margin loan in order to 
	afford the 1-lot purchase. Regulators should encourage risk reduction 
	through diversification, not deter it.</li>
	<li>It would reduce the ability to use dollar-cost averaging and accumulate 
	a holding over time.</li>
	<li>Small investors could just club together with, or borrow from, friends 
	and family to share the risk, dragging in people who do not understand the 
	investment.</li>
	<li>Not all small investors are unsophisticated - some are employees in 
	financial services, and some are equipped with an MBA or a degree in 
	accounting or finance. The rich do not have a monopoly on sophistication.</li>
	<li>Not all large investors are sophisticated. There are plenty of rich 
	business owners and wealthy widows who have very little investment 
	expertise. The poor do not have a monopoly on ignorance. </li>
	<li>There are plenty of other risky investments on the exchange, including 
	highly-leveraged loss-making companies and derivative warrants. We don't set 
	prohibitive minimum transaction sizes for those. Indeed, some of them have 
	the smallest board lot values as a result of collapses in their share 
	prices.</li>
	<li>Large board lots tend to reduce liquidity, particularly in smaller 
	companies.</li>
	<li>There is no evidence that a large transaction size deters other forms of 
	speculation - look at the property sector, where people often bet almost all 
	their savings on the deposit for a single asset and then borrow twice as 
	much in a mortgage.</li>
	<li>Large board lots would cause problems with rights issues and scrip 
	dividends, because many more investors than normal would get fractions of 
	board lots which are more difficult to sell.</li>
</ul>
<p>As a result of the consultation and responses like ours, SEHK abandoned the 
proposal of large board lots and launched GEM with normal-sized board lots. They 
aim for a minimum board lot on all new listings of HK$2,000 in value at the 
issue price (see page D-18 of
<a target="_blank" href="http://www.hkex.com.hk/listing/epp/pv_guidance_e.pdf">
this document</a>).</p>
<p>If HKEx and the SFC set a large board lot value for Rusal, then it would need 
to be substantially larger than existing board lots. The
<a href="../dbpub/mcap.asp?exch=all&amp;hide=&amp;sort=ltvdn">Webb-site database 
shows</a> that the largest board lot of ordinary shares, as of Friday 
(20-Dec-09) was Sun Hung Kai Properties Ltd (0016) at $113,700, a stock which 
the SFC presumably perceives as within the reach of retail investors, otherwise 
they would have required a reduction in board lot by now.</p>
<h3>The bigger issue</h3>
<p>The SFC, and the Government which often prods it from behind the scenes, 
seems to be torn between running a disclosure-based market, which they usually 
claim to be, and a merit-based market, where the Government or its regulatory 
agency decides which companies are &quot;good enough&quot; for the public to invest in.</p>
<p>They should stick to the principles of a disclosure-based market. If there is 
something about the Rusal prospectus which lacks truth or credibility, then they 
should require further disclosure or verification, and not approve the listing 
unless and until they are satisfied. For example, we understand 
why the regulators might have required further evidence that the working capital 
sufficiency statement (which every listing prospectus must contain) is a 
reasonable one. But if the prospectus meets the disclosure requirements, then 
the SFC has no business trying to shield any investor from buying the stock. </p>
<p>Instead, what they <u>should</u> be doing is returning 
to the outstanding legislative issues of prospectus liability and auditor 
liability, and supporting the
<a target="_blank" href="http://www.hkreform.gov.hk/en/publications/classactions.htm">
proposed introduction of a class action system</a>, so that investors can have 
greater confidence through greater deterrence of false and misleading 
prospectuses. We addressed several of these issues at the bottom of our Asian 
Citrus <a href="asiancitrus.asp#liability">article</a> last month, 
so we won't repeat them here.</p>
<p>In an encouraging step, SFC CEO Martin Wheatley recently told Webb-site.com:</p>
<blockquote>
	<p>&quot;I personally support having the option of class action within 
	our legal system. We are going to look at the current proposals in more detail 
	before we consider making a formal submission to the Law Reform Commission.</p>
	<p>Regarding prospectus liability, I believe it is a good time 
	for us to revisit some of the provisions that we left out last time. We are 
	reviewing various areas of the Companies Ordinance and will likely put forth our 
	proposals in stages.&quot;</p>
</blockquote>
<h3 id="update">Update 21-Dec-09</h3>
<p>The FT 
<a target="_blank" href="http://www.ft.com/cms/s/0/23df1834-ed97-11de-ba12-00144feab49a.html">reports</a> 
(subscription required) this morning that the minimum subscription will be HK$1m 
(US$130,000) and the board lot will be 200,000 shares (no word on the indicative 
price). This is ridiculous. If this company does not meet HK's (not very 
onerous) disclosure and governance requirements then the SFC should block the 
Listing. If it does meet HK standards, then everyone should be able to buy it. 
They cannot have it both ways, approving a listing which does not meet HK 
listing standards and then trying to prevent the public from buying it. That is 
just what the Government wanted last year - to create a &quot;professional board&quot; for 
unprofessional companies that won't adhere to our disclosure/governance 
requirements and get a free ride on our reputation (which isn't that great to 
start with). It was one of the reasons your editor, David Webb, resigned as an 
independent director of HKEx on 15-May-08 - see paragraph 6 of his
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20080515/LTN20080515396.pdf">
resignation letter</a>.</p>
<p>On 4-Mar-09, HKEx
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2009/0903046news.htm">
announced</a> that the Listing Committee had decided a month earlier to 
&quot;suspend&quot; (read: cancel) the &quot;Professional Board&quot; project. HKEx said:</p>
<blockquote>&quot;On the whole, overseas exchange experience does not provide 
compelling examples of successful equity market segments that exclude retail 
investors. In addition, some market practitioners expressed concerns about the 
practicality of the proposed exclusion of retail investors and others felt that 
the priority should be given to further enhancement of the Main Board rather 
than the launch of another new board.&quot;</blockquote>
<p><em>&copy; Webb-site.com, 2009</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
				<li><a href="/dbpub/articles.asp?p=55733">UNITED COMPANY RUSAL, IPJSC</a></li>
				
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