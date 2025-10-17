
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

<script type="text/javascript">document.title="Principles of Responsible Regulation";</script>

	<div class="summary">Webb-site calls on the SFC, Government and HKEx to get serious about facilitating investor stewardship. Principles of Responsible Ownership are only useful if regulators address the deficiencies in Hong Kong's governance framework for listed companies. We call on readers to make a submission and support our proposed Principles of Responsible Regulation.</div>

<h2 class="center">Principles of Responsible Regulation<br>
<span class="headlinedate">26 May 2015</span></h2>
<p>On 2-Mar-2015, the SFC
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/news-and-announcements/news/doc?refNo=15PR19" target="_blank">
announced</a> a
<a href="http://www.sfc.hk/edistributionWeb/gateway/EN/consultation/openFile?refNo=15CP2" target="_blank">
consultation paper</a> on proposed Principles of Responsible Ownership (<strong>PRO</strong>), 
or a stewardship code for investors in HK. This is the submission of Webb-site.com 
to that consultation.</p>
<p>There is an irony to this consultation. At the same time, the SFC and Stock 
Exchange are considering moving to a full-blown consultation on reducing 
investors' ability to engage in governance, by allowing companies to list 
second-class shares with lower or no voting rights, or what the regulators 
euphemistically call &quot;<a href="wvr.asp">weighted voting rights</a>&quot;. 
The objective of that would be to attract companies that would not otherwise 
have a controlling shareholder to list in HK while giving management voting 
control over the company. The possibility of listing second-class low-voting or 
non-voting shares is contradictory to the PRO's goal of greater investor 
stewardship over listed companies. It would allow insecure management to 
entrench themselves against shareowners' interests.</p>
<p>As noted in the paper, companies listed in Hong Kong are &quot;disproportionally 
dominated by family and state-controlled ownership&quot;. Of the 50 stocks in the
<a href="http://www.hsi.com.hk/HSI-Net/static/revamp/contents/en/dl_centre/factsheets/FS_HSIe.pdf" target="_blank">
Hang Seng Index</a>, at most 5 could be said to have no controller:</p>
<ul>
	<li><a href="../dbpub/articles.asp?p=382">HSBC Holdings plc</a> 
	(0005), a UK-incorporated company which is dual-primary-listed in the UK and 
	HK</li>
	<li><a href="../dbpub/articles.asp?p=61400">AIA Group Ltd</a> (1299), a 
	HK-incorporated insurance firm</li>
	<li><a href="../dbpub/articles.asp?p=24834">Link Real Estate Investment 
	Trust</a> (0823) which has no controlling unit-holder, but is not a company</li>
	<li>Arguably the H-shares of <a href="../dbpub/articles.asp?p=21330">Ping An 
	Insurance (Group) Co. of China Ltd</a> (2318), which has no controlling 
	shareholder, although the H-shares are only 40.7% of its issued shares</li>
	<li>At a stretch, <a href="../dbpub/articles.asp?p=377">The Bank of East 
	Asia, Ltd</a> (0023) but it has 3 substantial shareholders who in aggregate
	<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2015/0327/LTN20150327292.pdf" target="_blank">
	hold</a> about 47.6%.</li>
</ul>
<p>So it is fair to say that at least 45 of the 50 stocks, or 90% of the 
Hang Seng Index, have controlling shareholders. This pattern repeats over the 
rest of the market.</p>
<p>In case you are wondering, we don't regard
<a href="../dbpub/articles.asp?p=9643">Hong Kong Exchanges and Clearing Ltd</a> 
(<strong>HKEx</strong>, 0388) as having no controller. The HK Government 
controls HKEx by statute. Shareholders can only elect 6 of the 13 directors, the 
CEO (an unelected director) must be approved by the SFC and the Chairman must be 
approved by the Chief Executive of HK and has always been a member of the HK 
Executive Council.</p>
<p>Incidentally, in paragraph 49 of the paper, you say &quot;we took into 
consideration the <u>more ostensible dispersed</u> 
shareholder base of the companies listed on the Stock Exchange of Hong Kong&quot;. 
Surely you mean <u>less</u> dispersed, as paragraph 25 
notes that in the UK and Australia &quot;a significant portion of listed companies 
have a dispersed shareholder base with no single shareholder holding a 
significant stake&quot;.</p>
<h3>Real INEDs</h3>
<p>As a result of the prevalence of controlling shareholders, investors large 
and small are usually minority shareholders, and if they are to have any real 
influence in the ordinary decision-making of companies, then they should have 
proper representation in the form of truly independent directors in the board 
room. But they don't.</p>
<p>Under HK listing rules, a so-called &quot;Independent Non-Executive Director&quot; is 
only as independent as the controlling shareholder wants him (or occasionally 
her) to be, because the controller gets to vote on the elections in general 
meetings. The result is often a sham system of illusory checks and balances 
where rubber stamps fill the required 3 seats on the board (or 1/3, whichever is 
greater) and form the committees that are supposed to monitor the executive 
management of the company. See our article <em>
<a href="3wisemonkeys.asp">The Three Wise Monkeys of HK Boards</a></em>, 
15-Feb-2011. The same INEDs, having been elected by the controlling shareholder, 
are supposed to opine on whether connected transactions between the company and 
its controller, or privatisation proposals, are fair and reasonable.</p>
<p>In the 1990s the UK had the luxury of not worrying about the influence of 
controlling shareholders in INED elections, as there weren't many controlled 
companies, although with an influx of overseas companies with controllers this 
has become a problem which it attempted to address in 2014 by amending the UK 
main board (Premium) Listing Rules to require (<a href="https://fshandbook.info/FS/html/FCA/LR/9/2#DES1568" target="_blank">LR 
9.2.2E</a>) that INEDs must not just be elected by a majority of all shares 
voted but also approved by a majority of <em>independent</em> shares voted. 
That's a start, although it does of course mean that controlling shareholders 
still approve the INEDs. Some companies, like the
<a href="jardown.asp">Jardine group</a>, reacted by downgrading 
themselves from &quot;Premium&quot; to &quot;Standard&quot; (or bog-standard) Listing, avoiding the 
new rule. The UK Listing Authority also made a half-baked proposal worse by 
allowing companies, if they are shameless enough, to come back 90-120 days after 
an INED has been rejected by independent shareholders and ram him into office on 
an all-shareholder vote (<a href="https://fshandbook.info/FS/html/FCA/LR/9/2#DES1568" target="_blank">LR 
9.2.2F</a>).</p>
<p>If the SFC believes in facilitating investor stewardship then it should push 
the Stock Exchange to amend the Listing Rules, or exercise the SFC's statutory 
power under
<a href="http://www.hklii.hk/eng/hk/legis/ord/571/s23.html" target="_blank">
Section 23(5)</a> of the SFO to make Listing Rules, to require that INEDs, so 
long as they are a minority of the board, be elected by independent shareholders 
alone, with controlling shareholders abstaining. Only then could most INEDs have 
both a mandate and an obligation to think and act to protect the interests of 
minority shareholders. In such a system, INEDs should also be required to issue 
their own report, within the annual report, stating whether or not they are 
satisfied with the governance of the company, and if not, why not.</p>
<h3>Quarterly financial statements</h3>
<p>Proposed Principle 2 requires that investors should &quot;monitor&quot; their investee 
companies, but one can only monitor information if it is disclosed. This 
monitoring would be easier if companies disclosed information faster, more 
frequently and in more depth. For over a decade, all around Asia, including 
Mainland China, quarterly financial reporting has been the norm, but in Hong 
Kong, main board companies only produce one full set of financial statements 
each year, up to 4 months after the year-end, and one &quot;condensed&quot; set of 
half-year financial statements. This has to change. Investors deserve full 
quarterly financial statements with one set audited per year.</p>
<h3>Transactions with named counterparties</h3>
<p>Listed companies often announce acquisitions from purportedly &quot;independent 
third party&quot; vendors which are companies incorporated in anonymity havens such 
as the British Virgin Islands, and regulators do not require the listed company 
to disclose the identities of the humans who control the vendors. Investors are 
less able to &quot;monitor&quot; these transactions if they cannot investigate the 
independence of the vendors, or if a bare name is given with insufficient 
information to identify the human involved.</p>
<p>Similarly, grants of large chunks of options and placements of shares 
and unlisted warrants are made without naming the counterparties, unless there 
are fewer than 6 placees. This is so, even if 5 people get 1 share each and one 
person gets 1 million shares. The regulators should require greater 
transparency: if the listed company is not offering securities to existing 
shareholders in a rights issue, then it should name the persons who receive them 
instead. Allotment lists should be published and subjected to investor scrutiny.</p>
<h3>Pre-emption rights</h3>
<p>HK has made no progress on <a href="../dbpub/subject.asp?c=173">pre-emption 
rights</a> for over a decade since 2004. How can an investor be expected to 
effectively exercise ownership rights when the regulators allow companies to 
dilute those rights with placements of shares and voting rights to selected 
parties? The current maximum 20% general mandate to issue shares for cash at up 
to a 20% discount should be reduced to 5% per year (not per mandate), with a 
maximum discount of 5%. Anything more than that should be offered to existing 
shareholders.</p>
<h3>Retail investors</h3>
<p>Despite our repeated calls <a href="devoted2failure.asp">since at 
least 2002</a>, and the recommendations of the OECD cited in the paper, the SFC 
has also not seen fit to facilitate greater retail investor involvement in 
governance. Most retail investors hold their shares through stockbrokers or 
through the stockbroking arms of banks. These intermediaries are all regulated 
in HK, but the SFC does not require them to seek voting instructions from 
customers for whom they hold the stock. By holding stock for clients, the 
intermediaries enjoy marking up scrip fees and dividend collection fees, and 
eventually receiving commission when the stock is sold, but to save costs, most 
of them include in their terms and conditions (<strong>T&amp;C</strong>) a clause 
which states that they are not obliged to inform investors of shareholder voting 
opportunities. HSBC, for example,
<a href="https://www.hsbc.com.hk/1/PA_esf-ca-app-content/content/hongkongpws/pdf/securities_account_terms.pdf" target="_blank">
says in its T&amp;C</a>:</p>
<blockquote>
<p>"5.1 The Bank is authorised, at its discretion, to take 
such steps as it may consider expedient to enable it to provide the Services and 
to exercise its powers under these Terms and Conditions, including the right:...<br>
<br>(g) not to notify the Customer of any Corporate Action information pursuant 
to Clause 4.1(c) including any proxy voting forms without notice to the 
Customer;"</p>
</blockquote>
<p>Many firms now offer an online dealing system, but to our knowledge, no firm 
offers an online voting system for shares in client accounts. The result is that 
the approximately 40% of the free float still held by retail investors hardly 
ever votes, and bad proposals can get passed even when controlling shareholders 
are required to abstain, for example in the renewal of a general issue mandate, 
or approval of a connected transaction.</p>
<p>The OECD in its
<a href="http://www.oecd.org/daf/ca/49801431.pdf" target="_blank">2011 Asian 
Roundtable paper</a>, in which the SFC participated, states on page 14:</p>
<blockquote>"Legislators and regulators should promote effective 
shareholder engagement by reducing obstacles for shareholders to vote in 
shareholder meetings. In particular, rules on proxy and mail voting should be 
liberalised, and the integrity of the voting process should be strengthened. 
Greater use of technology for both the dissemination of meeting materials and to 
facilitate voting should be encouraged."</blockquote>
<p>So if the SFC is serious about facilitating stewardship then it (and the HKMA 
in tandem) should require all regulated intermediaries in HK to seek voting 
instructions from clients for each shareholder meeting. If this were required, 
then intermediaries would find the most efficient way of doing it, possibly by 
outsourcing online voting platforms to one or more competing service providers. 
Alternatively, to meet the obligation, they could open a
<a href="https://ssa.ccass.com/login/ssa_start.asp" target="_blank">Stock 
Segregated Account</a> (<strong>SSA</strong>) for each client with CCASS and 
provide the voting opportunities that way. CCASS can issue
<a href="http://www.hkex.com.hk/eng/prod/clr/sec_clrsett/segacct/sms_email.htm">
SMS and email alerts</a> of Voting Notifications to SSA holders and accept 
voting instructions from the clients directly, while the intermediary keeps hold 
of the stock.</p>
<h3>The proposed Principles</h3>
<p>We have no objection in principle to the 7 proposed Principles of the PRO, it 
is just that they are all rather ineffective to governance in HK-listed 
companies so long as the bigger issues discussed above remain unaddressed. The 
proposal is more of a deflection and distraction than a meaningful step forward.</p>
<p>It is common sense, for example, that investors who seek to perform 
through portfolio selection (or even through enhancing the performance of an 
index which they passively track) should &quot;monitor their investee companies&quot;.</p>
<p>We agree with the proposition that those institutions which are 
licensed or regulated by the SFC, HKMA, MPFA or Commissioner of Insurance to 
issue products such as mutual funds, ORSO funds and MPF funds to the general 
public, should be required to disclose whether they comply with the PRO and if 
not, why not (the &quot;comply or explain&quot; approach). However, for other asset 
managers which are dealing only with professional investors and institutions, it 
is probably better to allow market forces to work. Many institutional investors 
already have their own standards when selecting asset managers which would be 
more specific and go further than the proposed Principles.</p>
<p>We believe paragraph 38 of the paper is in error. It states that in the 
United States, there is no specific provision requiring shareholder engagement 
but notes that the SEC has proposed that institutional managers should report 
annually on how they vote proxies relating to executive compensation matters. 
This omits to mention that since 2003, US mutual funds, which then held 18% of 
all publicly-traded US equity, have been required to file annually
<a href="http://www.sec.gov/about/forms/formn-px.pdf" target="_blank">Form N-PX</a> 
disclosing how they voted on each and every resolution in shareholder meetings 
for which they held shares. This is something that the SFC should require 
HK-regulated managers of publicly-marketed funds to do (including authorised 
mutual funds, MPF and ORSO funds). See the
<a href="https://www.sec.gov/rules/final/33-8188.htm" target="_blank">SEC Final 
Rule</a> for more details.</p>
<p>The discipline of having to disclose their votes would help address the 
conflicts of interests that many of HK's largest asset managers have between 
their commercial and investment banking business for corporates on the one hand, 
and their duties to fund-holders on the other.</p>
<h3>Collective activism</h3>
<p>On Principle 5, &quot;be willing to act collectively with other investors where 
appropriate&quot;, this &quot;collective activism&quot; principle is frustrated by two things: 
first, if the act involves a battle to oust bad management from a board and 
replace them, then shareholders may be accused, if they act together, of &quot;acting 
in concert&quot; to acquire control of a company, thereby triggering an obligation 
under the Takeover Code to make a general offer. Currently Note 4 to
<a href="http://en-rules.sfc.hk/en/display/display.html?rbid=3527&amp;element_id=1711" target="_blank">
Rule 26.1</a> of the Takeover Code states:</p>
<blockquote><p><em>"Shareholders voting together</em></p>
<p>The Executive will not normally regard the action of shareholders voting together on 
[a] particular resolution as action which of itself should lead to an offer 
obligation, but that circumstance may be taken into account as one indication 
that the shareholders are acting in concert."</p>
</blockquote>
<p>A clearer safe harbour should be established in the Takeovers Code so that 
mutually independent investors (who have no other connection between them) can 
come together to promote change in a listed company, even with nominations and 
elections to the board.</p>
<p>Second, if the &quot;collective activism&quot; involves litigation, then Hong Kong 
still has a number of barriers, including the lack of a
<a href="../dbpub/subject.asp?c=111">class action system</a> (which Australia has 
enjoyed since 1992), the prohibition on contingent legal fees, and the common 
law prohibition of <a href="../dbpub/subject.asp?c=109">champerty and maintenance</a>, 
something that was abolished in the UK in 1967, which makes it nearly impossible 
for litigation finance companies to provide a service.</p>
<p>So, if the SFC wishes Principle 5 to have any real effect then the Government 
which appoints it needs to address these issues. A Government elected (or 
nominated) by tycoons will of course be slow to act on this; the Government on 
28-May-2012 received a very mild
<a href="http://www.info.gov.hk/gia/general/201205/28/P201205240458.htm" target="_blank">
proposal</a> from the Law Reform Commission to introduce class actions for goods 
and services (but not investments). The Government sat on it for 6 months (the 
maximum allowed by law), and then the new Chief Executive kicked it into the 
long grass by
<a href="http://www.info.gov.hk/gia/general/201211/27/P201211260572.htm" target="_blank">
appointing</a> another committee to study the LRC's proposal. It has not seen 
the light of day since then.</p>
<p>Meanwhile, we wait for the Competition Ordinance to be put into effect, 
and wonder how consumers will ever receive compensation if there is no class 
action system to bring follow-on actions upon findings of anti-competitive behaviour.</p>
<p>Finally, in the detailed Principle 2 on page 20, we are amused that you think 
that &quot;engagement mechanisms&quot; for investors include &quot;selling their shares&quot;. If 
selling shares is a method of engagement, than is buying shares a method of 
disengagement? Selling shares is only a method of damage limitation, and it is 
of little comfort to someone whose home has been torched by an arsonist to tell 
them that they can still sell what is left of it.</p>
<h3>Proposed Principles of Responsible Regulation</h3>
<p>So to refocus on the key issues above, we call on the SFC, Government and 
HKEx to adopt the following <strong>Principles of Responsible Regulation</strong>, or <strong>
PRR</strong>:</p>
<ol>
	<li>Independent directors should be elected by independent shareholders; any 
	shareholder or the board can nominate candidates, but controlling 
	shareholders must abstain from voting.</li>
	<li>Investors' rights to information should be addressed by requiring 3 
	quarterly sets of full but unaudited financial statements within 45 days of 
	the quarter-end and 1 annual audited set within 90 days of the year-end; and 
	by requiring full disclosure of the identities of counterparties to 
	notifiable transactions, option grants and placements of shares or 
	convertible securities.</li>
	<li>Investors' ownership rights should be protected from dilution by 
	reducing the general mandate's maximum size to 5% per year at a maximum 
	discount of 5%;</li>
	<li>Voting should be facilitated by requiring all regulated intermediaries 
	who hold shares for clients to seek their voting instructions for each 
	shareholder meeting.</li>
	<li>Investors' access to justice and legal remedies should be facilitated by 
	the introduction of class action rights and the legalisation of champerty 
	and maintenance and contingent legal fees.</li>
	<li>A safe harbour in the Takeover Code should be created for mutually 
	independent shareholders to act together to change a board when such 
	intervention is needed.</li>
</ol>
<p>There you go. Only six. That shouldn't be too difficult if you really believe 
in facilitating the PRO rather than just joining a me-too club of places with a 
stewardship code. We look forward to receiving your response to our proposals.</p>
<hr>
<h3>Submit your views</h3>
<p>What do you think? Please send your views by 2-Jun-2015 to
<a href="mailto:ResponsibleOwnership@sfc.hk">ResponsibleOwnership@sfc.hk</a>, 
stating whether you support the Principles of Responsible Ownership and call on 
the SFC, Government and HKEx to adopt the <strong>Principles of Responsible Regulation</strong> 
proposed by Webb-site.com.</p>
<p><em>&copy; Webb-site.com, 2015</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=503">SECURITIES AND FUTURES COMMISSION</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
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