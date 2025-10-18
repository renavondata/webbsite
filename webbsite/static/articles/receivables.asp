
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

<script type="text/javascript">document.title="Blackout on Receivables";</script>

	<div class="summary">If you saw the lights dim recently, it was because the Stock Exchange scrapped a requirement for listed companies to disclose large accounts receivable, which could have warned investors about impending disaster. Dressed up as a "minor and housekeeping" rule amendment without consultation, the change is illustrative of the urgent need to increase investor representation on the Listing Committee, to produce pro-investor policy reform. And that's where HK needs your help.</div>

<h2 class="center">Blackout on Receivables<br>
<span class="headlinedate">24 March 2006</span></h2>
<p>On 17-Feb-06, the Stock Exchange of Hong Kong Ltd (<b>SEHK</b>)
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2006/060217news.htm">
announced</a> what it called <i>&quot;minor and housekeeping amendments&quot;</i> to the 
Listing Rules. Why such an innocuous title? Because it did not go through any 
public consultation process before making the amendments, so it could not admit 
that one of the amendments is a serious step backwards for disclosure in Hong 
Kong, effective 1-Mar-06.</p>
<p>The Listing Committee, which as we have said before, is dominated by issuers 
and their advisers, has seen fit to roll back the disclosure on large &quot;accounts 
receivable&quot; (the money a customer owes to a listed company), by exempting such 
accounts receivable from disclosure as &quot;advances to entities&quot; unless they did 
not arise in the ordinary and usual course of business or were not on normal 
commercial terms.</p>
<p>The rules previously required disclosure of credit extended to a single 
customer if it exceeded 8% of market capitalisation or total assets of the 
listed company. So if 8% of shareholders' wealth was bet on a single customer 
remaining solvent, then shareholders were told about it, and they could reach 
their own judgement, based on the credit worthiness of the customer. 
Furthermore, each 3% increment in exposure (to 11%, 14% and so on) had to be 
disclosed. These rules had been in effect since 31-Mar-04.</p>
<p>Prior to 31-Mar-04, the disclosure threshold under Practice Note 19 was 25% 
of net assets (not total assets), with 10% increments triggering further 
disclosure, although when the listed banks whinged about having to disclose 
large loans, the exchange backed off and issued a &quot;<a target="_blank" href="http://www.hkex.com.hk/listing/gemsharelistdoc/20040517.pdf">no 
action</a>&quot; letter on 17-May-04, so they were never held to the tighter 8% 
standard. In fact, the only disclosure under the old standard by a bank that we 
know of is the belated
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040511/LTN20040511066.pdf">
announcement</a> on 11-May-04 by BOC Hong Kong (Holdings) Ltd (2388), the local 
arm of Bank of China, which disclosed that it had lent over 25% of its net 
assets (4.9% of its loan portfolio) to a group of HK-listed companies, which 
wasn't named, but from the description it was obvious that it was Cheung Kong 
and its various associates, including Hutchison Whampoa.</p>
<h3>A big step backwards</h3>
<p>The abolition of disclosure on accounts receivable is a great shame, and it 
is inconsistent with the goals of a disclosure-based market. The disclosure 
allowed investors to have price-sensitive information that they might not 
otherwise receive until it was too late. Do you remember why
<a target="_blank" href="../dbpub/articles.asp?p=834">Peregrine Investment Holdings Ltd</a> 
collapsed? It was because of a very large bridging loan, made in the ordinary 
course of business, on normal commercial terms, to an Indonesian taxi company. 
That's the kind of information which, if disclosed to investors, would indicate 
that their company may be taking large amounts of concentrated credit risk, and 
would be likely to affect the share price.</p>
<p>Other examples of accounts receivable leading to difficulties include the 
recently delisted
<a target="_blank" href="../dbpub/orgdata.asp?p=14661">
Wanasports Holdings Ltd</a> (8020), a retail franchisor, which collapsed after 
supplying large amounts of inventory to franchisees for which they were not 
paid. The accounts receivable were disclosed in
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20030703/GLN20030703019.pdf">
this announcement</a>.</p>
<p>In another case, the rule was breached by <a target="_blank" href="../dbpub/articles.asp?p=13767">
Thiz Technology Group Ltd</a> (8119) which belatedly
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/gem/20050419/GLN20050419012.pdf">
admitted</a> on 18-Apr-05 to having given credit to a single customer amounting 
to 84% of Thiz's market value. That was after we pointed out the probable breach 
in our <a target="_blank" href="toxicIPOs.asp#FAF">article</a> of 21-Mar-05.</p>
<p>Now why did the Listing Committee create the new exemption for accounts 
receivable? Put simply, because listed companies don't like having to disclose 
their weaknesses, and listed companies and their advisers dominate the 
committee.</p>
<p>There was also a commercial concern that if one customer could read in the 
press how much credit had been extended to another customer, then the first 
customer would want the same credit too. So what? If anything, the disclosure 
obligation incentivised companies to keep their credit exposure to each customer 
below the 8% threshold, which is a good thing - it stops them from moving into 
the finance business when they have no expertise in credit analysis. If there 
was any scope for amending the rules, then what the committee should have done 
(subject to consultation) is to allow the credit to be disclosed on a no-names 
basis <u>provided</u> investors were told the independently-assessed credit 
rating of the customer, so that they could take that information into account in 
assessing the risk of loss, and provided any change to the credit rating was 
subsequently disclosed. And if the customer had no credit rating, then it would 
have to be named.</p>
<h3>Fewer tests</h3>
<p>In another amendment, the Listing Committee reduced the number of disclosure 
triggers applied to advances to entities other than accounts receivable. In the 
past, when comparing the advance (or loan) with the listed company, the loan was 
divided by market capitalisation (known as the &quot;consideration ratio&quot;) as well as 
total assets (or prior to 31-Mar-04, net assets). The market capitalisation test 
now no longer applies, so this effectively raises the disclosure threshold for 
companies whose market capitalisation is less than their total assets, which in 
many cases it is. Of course, raising the disclosure threshold reduces the number 
of disclosures.</p>
<p>Now we agree that there was a problem with the market capitalisation test for 
advances to entities, because in theory it required continuous comparison of 
advances with a market capitalisation which moves with the share price. So it 
was difficult to administer. The solution, though, should have been to make the 
test only at month-ends (based on month-end accounts and month-end market 
capitalisation), striking a balance between cost of administration and the need 
for disclosure. Instead, the test has been scrapped altogether.</p>
<h3>Not housekeeping</h3>
<p>It is remarkable that it can take so long to get pro-investor reforms through 
the Listing Committee, involving endless consultation (the last round took over 
2 years, and the proposals were diluted along the way), whereas when a 
pro-issuer reform is wanted, it is dressed up as a <i>&quot;minor and housekeeping&quot;</i> 
amendment and passed without public consultation.</p>
<p>This of course is remarkable, but not surprising given the structure of the 
Listing Committee. It's one of the reasons that Hong Kong is now the only 
remaining significant market in Asia that does not require main board listed 
companies to report quarterly, and one which gives the longest period (4 months) 
to produce annual results when the international standard is 60 days or less. To 
amend these rules, you need Listing Committee approval. In a
<a target="_blank" href="http://www.info.gov.hk/gia/general/200511/17/P200511170212.htm">
speech</a> on 17-Nov-05, Secretary for Financial Services and the Treasury, 
Frederick Ma, said:</p>
<blockquote>
	<p>&quot;Our regulatory framework is in every aspect on a par with international 
	standards.&quot;</p>
</blockquote>
<p>Judge for yourself.</p>
<h3>You can make a difference</h3>
<p>Your editor, an elected independent non-executive director of HKEx, was 
recently
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2006/0602152news.htm">
appointed</a> by the board of HKEx to the Listing Nominating Committee, a 
committee of 6 people, 3 from the SFC and 3 from HKEx, which appoints members of 
the Listing Committee. Wearing this hat, we strongly urge experienced investors, 
including professional asset managers, who are willing to play a key role in 
moving Hong Kong's market forward, to volunteer to serve on the Listing 
Committee. Your market needs you.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=834">PEREGRINE INVESTMENTS HOLDINGS LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13780">SEHK Listing Committee</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13767">THIZ TECHNOLOGY GROUP LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=14661">WANASPORTS HOLDINGS LIMITED</a></li>
				
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