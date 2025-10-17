
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

<script type="text/javascript">document.title="Government criticises Stamp Duty proposal";</script>

	<div class="summary">In a case of policy schizophrenia, the Government said a special stamp duty would be unfair, cause additional hardship to those in financial difficulties, and amount to double taxation. Then they proposed it anyway, based on a bunch of selective, deceptive and alarmist statistics, which we dissect. Legislators should kill this proposal or at least insert a sunset clause so that it expires with Donald Tsang's office. Exceptional times do not call for irrational measures.</div>

<h2 class="center">Government criticises Stamp Duty proposal<br>
<span class="headlinedate">26 November 2010</span></h2>
<p>Yes, you read that right. Just five months ago, the Government told the 
Legislative Council why the Special Stamp Duty (<strong>SSD</strong>) which it 
proposed last Friday would be unfair, would cause additional hardship to those 
in financial difficulties, and would amount to double taxation. Nothing in the 
fundamentals of law and economics has changed since June when LegCo was
<a href="http://www.legco.gov.hk/yr09-10/english/bc/bc07/general/bc07.htm" target="_blank">
debating</a> an amendment to the 
<a href="http://www.legislation.gov.hk/blis_ind.nsf/WebView?OpenAgent&amp;vwpg=CurAllEngDoc*117*102*117.1#117.1" target="_blank">Stamp Duty Ordinance</a> to install the new 4.25% 
rate on transactions over $20m.</p>
<p>During the debate, legislators had asked whether an additional stamp 
duty could be introduced on short-term resales by &quot;confirmors&quot;. A confirmor 
is someone who has agreed to buy a property and subsequently sells 
it to a second buyer before completing the purchase, the second transaction 
being known as a &quot;sub-sale&quot;. Both transactions are already subject to stamp duty 
at the standard rates.</p>
<p>&nbsp;The Government's Secretary 
for Transport and Housing responded to LegCo in a
<a href="http://www.legco.gov.hk/yr09-10/english/bc/bc07/papers/bc070608cb1-2172-2-e.pdf" target="_blank">
letter dated 7-Jun-2010</a> (p5) as follows:</p>
<blockquote>&quot;The proposal is unfair to those who have genuine needs to 
sell their properties within the specified period of time, and will cause 
additional hardship to those in financial difficulties. In fact, not all 
property transactions generate profits. Those gaining profits from property 
speculation are already subject to profits tax. The additional stamp duty will 
be considered as a kind of double taxation.&quot;</blockquote>
<p>We agree entirely with those points. The letter also detailed how the Inland 
Revenue Department is already assessing profits tax on those individuals and 
companies which it believes are running a business of property trading, rather 
than investing in capital assets for capital gains.</p>
<p>So that should have been the end of it, but 5 months later, the Government 
seems to have ignored its own criticisms of the legislators' proposal, and is 
going ahead with it.
<a href="http://en.wikipedia.org/wiki/Strange_Case_of_Dr_Jekyll_and_Mr_Hyde" target="_blank">
Dr Jekyll, meet Mr Hyde</a>.</p>
<h3>Background</h3>
<p>Last Friday, 19-Nov-2010, the HK Government 
<a href="http://www.info.gov.hk/gia/general/201011/19/P201011190294.htm" target="_blank">announced</a> a proposal, subject to 
legislation, to impose a &quot;Special Stamp Duty&quot; on properties acquired 
after that date sold within 2 years, as follows:</p>
<ul>
	<li>15% if the property is resold within 6 months</li>
	<li>10% if the property is resold after 6 months but within 1 year;</li>
	<li>5% if the property is resold after 1 year but within 2 years.</li>
</ul>
<p>This is on top of regular stamp duty, which remains as follows:</p>
<table class="numtable center fcl">
	<tr>
		<th>From HK$</th>
		<th>Stamp duty</th>
		<th>Effective rate</th>
	</tr>
	<tr>
		<td>$0</td>
		<td>100</td>
		<td>NA</td>
	</tr>
	<tr>
		<td>2,000,000</td>
		<td>$100+10% of excess</td>
		<td>0.005%-1.50%</td>
	</tr>
	<tr>
		<td>2,531,760</td>
		<td>1.5%</td>
		<td>1.5%</td>
	</tr>
	<tr>
		<td>3,000,000</td>
		<td>$45k+10% of excess</td>
		<td>1.5%-2.25%</td>
	</tr>
	<tr>
		<td>3,290,320</td>
		<td>2.25%</td>
		<td>2.25%</td>
	</tr>
	<tr>
		<td>4,000,000</td>
		<td>$90k+10% of excess</td>
		<td>2.25%-3.00%</td>
	</tr>
	<tr>
		<td>$4,428,570</td>
		<td>3.00%</td>
		<td>3.00%</td>
	</tr>
	<tr>
		<td>$6,000,000</td>
		<td>$180k+10% of excess</td>
		<td>3.00%-3.75%</td>
	</tr>
	<tr>
		<td>$6,720,000</td>
		<td>3.75%</td>
		<td>3.75%</td>
	</tr>
	<tr>
		<td>$20,000,000</td>
		<td>$750k+10% of excess</td>
		<td>3.75%-4.25%</td>
	</tr>
	<tr>
		<td>$21,739,120</td>
		<td>4.25%</td>
		<td>4.25%</td>
	</tr>
</table>
<h3><br>Who would pay?</h3>
<p>As with existing stamp duty, the obligation to pay SSD would fall &quot;jointly and 
severally&quot; on the buyer and seller. The land registry won't register the 
transaction unless someone has paid the stamp duty. However, in practice, prices 
are struck excluding stamp duty, which is then paid by the buyer, for the simple 
reason that it is cheaper than paying &quot;stamp on the stamp&quot;. For example, if a 
home trades for $10m plus 3.75% stamp, the buyer pays a total of $10,375,000, 
which is cheaper than setting the price at $10,389,610 and having the seller pay 
$389,610 in stamp (at 3.75%) to get the same net proceeds of $10m.</p>
<p>So one complication of SSD is that a buyer has no immediate way to tell which 
homes are what we will call &quot;short-term sales&quot; (within 2 years), and which ones 
are long-term sales, not subject to the SSD. The date of the last transaction 
can be checked at the Land Registry, but that takes time, so buyers would have 
to be very careful not to sign provisional sale and purchase agreements without 
knowing how much to deduct from the price to allow for the SSD. For example, if 
our $10m home is being resold within 6 months, then the buyer will only be 
willing to pay $10.375m in total, so he will need to set the price at $8.737m, 
so that when he pays the total 18.75% stamp duty, the total will come to 
$10.375m. The seller is worse off by $1.263m, or 12.63%, than if he had owned the 
home for 2 years. </p>
<p>And that really underlines that this move will have no effect on home prices. 
A home is only worth a certain amount to a buyer, including transaction costs, 
and there will be plenty of similar homes on the market which have been held for more than 2 
years. So any excess stamp duty comes out of the seller's pocket and into the 
Government's over-flowing coffers.</p>
<h3>Proposal may contravene the Basic Law</h3>
<p>As we detailed in our article of 2-Mar-2010, &quot;<a href="stampout.asp">HK's 
stamp duty addiction</a>&quot;, stamp duty is a frictional tax, not based on GDP or 
profits, but simply on the movement of assets. It throws sand in the wheels of 
the economy, reduces turnover, and distorts the choice between renting and 
buying. Levying stamp duty at rates of up to 19.25%, as proposed, is not 
just frictional but is, to any reasonable person, confiscatory. The Government 
is basically saying to any purchaser of a home: if you sell it within 2 years, 
then part of it is ours. It is against the spirit of 
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html#section_1" target="_blank">Article 105 of the Basic 
Law</a>, which says:</p>
<blockquote>&quot;The [HKSAR] shall, in accordance with law, protect the right 
of individuals and legal persons to the <strong>acquisition</strong>, use, <strong>disposal</strong> 
and inheritance of property...&quot;</blockquote>
<p>Surely it is implicit in any constitutional right that the exercise of that 
right should not carry a penalty. Your right to disposal is being restricted if there is a penalty for 
disposing of a property within the first 2 years of ownership. It cannot be 
argued that this is a legitimate form of taxation when it bears no relation to 
profit or loss, and when those who are trading for profit are already subject to 
profits tax. It is a punitive, irrational move against those who have put their 
money at risk by buying property. The sole purpose is to deter people from 
exercising their rights of disposal within 2 years, and to penalise them if they 
do.</p>
<p>Think about it: what if the SSD was 100%? That 
would force someone who needs to sell to cut his price to about 50% of the price 
of similar properties (held for more than 2 years), to absorb the SSD. How about 
400%? Then he would have to cut his price to 20% of similar properties, and give 
the other 80% to the Government. So what makes it OK to take away 15% of your property 
on disposal?</p>
<h3>Deceptive statistics</h3>
<p>You might think, from the way the Government is screaming about speculators, that a large 
portion of properties are resold within 2 years. That's simply untrue.&nbsp; The 
Government's announcement stated that the number of resales within 24 months 
increased by 32% in the first 9 months of 2010, but did not give absolute 
figures. This is misleading and deceptive by omission of the raw numbers and by 
failure to compare them with the total number of transactions. But there is an 
evidence trail out there which exposes the deception. According to 
another
<a href="http://www.legco.gov.hk/yr09-10/english/bc/bc07/papers/bc070526cb1-2022-2-e.pdf" target="_blank">
letter to LegCo dated 25-May-2010</a> (p5), again from the Secretary for 
Transport and Housing:</p>
<blockquote>&quot;Take 2009 as an example, over 90% of the property 
transactions valued more than $20 million did not involve resale within two 
years of purchase.&quot;</blockquote>
<p>So the number of resales within 2 years above $20m was less than 10% of all 
transactions above $20m in all of 2009. The resale figures for transactions 
below $6.72m might be a bit higher, due to lower stamp duty rates below that 
price, but not by much. Another factor affects the Government's claim: the 
Government referred to the <em>number</em> of transactions, not the <em>
proportion</em> of transactions. In the first 9 months of 2010,
<a href="http://www.landreg.gov.hk/en/monthly/stat0910.htm" target="_blank">
there were</a> 103,709 residential sale and purchase agreements, 18.6% higher 
than the 87,471 in the
<a href="http://www.landreg.gov.hk/en/monthly/stat0909.htm" target="_blank">same 
period of 2009</a>, which included the global financial crisis. So if the <em>
number</em> of those which were short-term sales has increased by 32%, then the
<em>proportion</em> has only increased by about 11.3% (being 1.32/1.186-1). In 
other words, most of the increase was because the market was busier generally.</p>
<p>So that ballyhooed 32% figure probably just means that the proportion 
of resales above $20m has gone up from about 10% of transactions to about 11.1% 
of transactions, and that 89% of properties sold over $20m were owned by the same persons 
2 years earlier, possibly including developers. Again, the figures for 
lower-value transactions, might be higher because of lower stamp rates, but not 
by much. Lets say 15% of all transactions at most are resales within 2 years.</p>
<p>That same Government 
<a href="http://www.legco.gov.hk/yr09-10/english/bc/bc07/papers/bc070526cb1-2022-2-e.pdf" target="_blank">letter to LegCo</a> 
also contained a table (p2) of confirmor cases as a percentage of all 
transactions in each of the years from 2007 to 2009. In 2009, this ranged from 
3.79% for transactions below $3m to 1.92% for transactions above $20m. Given the 
friction of stamp duty, it is not 
surprising that the percentage of resales is lower for properties with higher rates of stamp duty. In order to 
avoid a loss, the market value must increase enough to cover the transaction 
costs - so a property acquired for $10m plus stamp must resell for $10.375m plus legal fees, 
agency commissions and fees associated with any mortgage.</p>
<p>It is also unsurprising that after a run-up in prices, the volume of 
resales within 2 years increases. That doesn't mean that every one of those 
sellers was a &quot;speculator&quot;, whatever that now-pejorative term means. It may 
simply mean that a home-owner now thinks we are in a property bubble and has an 
excessive amount of his net worth tied up in his home. He wants to get out and 
rent, or down-size, until the bubble bursts. Nobody should penalise him for 
that. Or it may mean that a first-time buyer has built up enough equity to put 
down a deposit on a larger flat for her growing family.</p>
<p>The Government's announcement also included an even more alarmist figure: the 
number of resales within 12 months in the first 9 months of 2010 &quot;surged by an 
even more rapid 114%&quot;. Obviously sales within 12 months are a subset of sales 
within 24 months, so they can't have been more than 10% of transactions above 
$20m in 2009, and probably much less. Similarly for cheaper homes, the 
proportion won't be much higher. Now, keep in mind that the figure 
for resales within 12 months in 2009 would be distorted by the low volume in the 
last few months of 2008 and the first few months of 2009, due to the global 
financial crisis, so it is not surprising that the <em>number</em> of resales in 
2010 is much higher.</p>
<p>Similarly, the number of resales between 1 year and 2 years actually fell by 
18% in the first 9 months of 2010. Of course. Same reason - not many flats 
changed hands during the financial crisis (Lehman collapsed in Sep-2008) so not 
many of those are now being resold. By comparison, volume in 2007 (and 
consequently 1-2-year resales in 2009) was higher. But the Financial Secretary 
leaps to the illogical conclusion that this indicates a &quot;shift in speculative 
activities to a shorter horizon&quot;. It doesn't - it just indicates that the market 
was quiet during the financial crisis.</p>
<p>There's one final statistic in the Government's announcement: 84% of the 
short-term resales within 12 months in the first half of 2010 (why not take the 
9 months - does this not suit the Government's argument?) were transactions 
below $3m. Yes, but again, how many is that, exactly? What proportion of total 
sales under $3m is it? Probably less than 10%. </p>
<p>What we can tell you is that in the whole market there were 65,629 sales in 
the first half of 2010, of which 41,669 sales were below $3m, so 64% of all 
homes purchased were below $3m. Given that stamp duty is a token $100 up to $2m 
and a relatively low 1.5% at $3m, it is not surprising that turnover is higher 
among such homes. They are simply more investable, and there are more of them in 
the housing stock. Plus, it is only natural that most people try to trade up 
from smaller homes rather than down from larger ones as their income increases, 
or they get married or start a family. Smaller, starter homes have a naturally 
shorter holding period.</p>
<h3>So who would it affect?</h3>
<p>What the Government is proposing is the economic equivalent of
<a href="http://en.wikipedia.org/wiki/Bottom_trawling" target="_blank">bottom 
trawling</a> in fishing. In its indiscriminate fishing net, apart from catching short-term investors, or what the Government now calls 
&quot;speculators&quot;, the SSD would also catch homeowners who either wish to 
sell or are forced to sell, for 
whatever reason, for example:</p>
<ul>
	<li>An owner who loses her job, and cannot pay the mortgage, may need to 
	sell within 2 years of purchase</li>
	<li>A buyer who loses his job, and cannot get a mortgage to complete a home 
	purchase, may need to sub-sell the property</li>
	<li>An owner who sees the market falling may wish to sell before the home 
	drops into negative equity. If he has recently bought it, the Government 
	will take away 15% of it, wiping out more of his equity. If he put down a 
	deposit of 30% (the standard under mortgage rules) then the SSD will take 
	half of that away from him. If he bought a
	<a href="http://www.hkmc.com.hk/eng/pcrm/ourbusiness/mip.html" target="_blank">
	guarantee from the mortgage corporatio</a>n and only put down a 10% deposit 
	(the minimum), then a 15% SSD hit will be 150% of his equity.</li>
	<li>Given the bubble, some people might buy a small starter home to get onto 
	the ladder, and plan to trade up to a larger home when the bubble bursts. 
	Now, they can't sell the starter home without punitive taxes, so they won't 
	be able to trade up.</li>
</ul>
<p>The IRD web site has an
<a href="http://www.ird.gov.hk/eng/faq/ssd.htm" target="_blank">FAQ list</a>&nbsp; 
which includes exemptions (Q11) for bankruptcy or involuntary winding-up, but 
not for foreclosure, nor does it cover voluntary sales by people in financial 
difficulties who are trying to <em>avoid</em> bankruptcy.</p>
<div class="rightpicbox" style="max-width:243px">
	<img alt="Tracy Emin's My Bed" src="../images/tracey-emin-my-bed.jpg"><p>Owner-occupied?</p>
</div>
<p>So when the bubble bursts, when the economy declines, and when people start losing 
their jobs, large numbers of recent homebuyers are either going to be charged 
punitive rates of stamp duty, making their losses much greater, or will be 
trapped in their homes, forced to wait at least 2 years and watch their losses 
mount. Politically, the Government would then be in a tight spot - having pushed 
the proposal into law, it would need to pass legislation to undo it again, with 
all the loss of face that entails.</p>
<p>The proposed law is not retro-active, so it will only affect purchases made 
after 19-Nov-2010. That means that existing short-term owners will remain free 
to sell without punishment for doing so.</p>
<p>Of course, some legislators might think that the proposal could be modified to apply only 
to non-owner-occupied homes - but then that introduces a whole new bureaucratic 
problem of verifying whether or not the owner (or his close relative) is living in the property. At 
the least, a couple who buy two homes jointly could each designate one of them 
as their residence and fling a bit of dirty underwear on a bed to prove a point. 
Call it a trial separation. And maybe get a couple of flats for your adult 
children to live in too, and one for each set of grandparents. So trying to 
penalise investors at the same time as exempting owner-occupiers is fraught with 
difficulties, which is why the government hasn't suggested it.</p>
<h3>Giving speculation a bad name</h3>
<p>The Government seems to have adopted the word &quot;speculator&quot; as a pejorative 
term. This rather overlooks the fact that HK's success is built on the 
foundations of a free market, and anyone running a business is speculating on 
the value of his products or services. He buys raw materials, not certain of 
what his products will be worth, or he rents premises, not knowing whether he 
will generate enough revenue to pay the rent. He books a pop star for a concert, 
not knowing whether he will sell enough tickets. Not only is there nothing wrong 
with speculation, but nobody could run a business without it, and our economy 
would not function without it. It is just a fancy term for risk-taking, but the 
Government has apparently decided that &quot;anyone minded to make quick profits&quot; is 
evil. So tell that to the fishmonger who flips his fish for a quick profit.</p>
<p>As the Government noted in June, those who trade properties as a business 
will be subject to
<a href="http://www.ird.gov.hk/eng/tax/bus_pft.htm" target="_blank">profits tax</a> 
like any other business. There is no justification to charge them more than any 
other business, the standard rate of 16.5%, or 15% if they are unincorporated.</p>
<p>Financial Secretary John Tsang even claimed &quot;unscrupulous speculators may 
take advantage of the heated market sentiments to lure people into buying beyond 
their means&quot;. How, exactly? It takes a willing buyer to buy a flat, and if they 
are borrowing from a bank, it takes a willing bank, with all the supervision of 
the HKMA, to lend the money. Rising markets attract speculators, but nobody has 
to be a speculator if they don't want to. Given their relatively small 
percentage of market volume, speculators are not causing the bubble, they are 
just a symptom of it.</p>
<h3>Reducing liquidity, losing jobs in the sector</h3>
<p>The SSD will not affect prices, but it will have a negative impact on 
liquidity. Imagine what the effect would be if we told investors in the stock 
market that if they sell within 2 years, then we will hit them with up to 15% 
stamp duty. A lot of stockbrokers would be looking for a job. The derivative 
warrant market would vanish. And with reduced liquidity in the property market, 
there will be less work for estate agents, conveyancing lawyers, and the related 
jobs in advertising that are linked to the volume of the secondary property 
market. Less work, fewer jobs.</p>
<h3>Increased incentive for legal avoidance</h3>
<p>The higher the tax on something, the greater the incentive to legally avoid 
it. Stamp duty really is a tax on the middle classes. Below $2m, you pay only 
$100. Above $100m, and properties are almost invariably owned by companies, 
incorporated in HK or overseas. If the owner is incorporated in HK and changes 
hands, then the stamp duty is 0.2%. If the owner is incorporated overseas in a 
place which does not have stamp duty (many places don't), or is itself owned by 
an offshore company, then you can just sell the offshore company and pay no 
stamp duty at all. The vendor might also be an offshore company, so that the HK 
person doesn't even take part in the transaction.</p>
<p>We explained this in more detail, with examples, in our
<a href="stampout.asp#Avoidance">previous article</a> on stamp duty. 
We also explained several other reasons why people would incorporate their 
properties in our article on the <a href="conduitroad.asp#Corporate">
Conduit Road controversy</a>.</p>
<p>If SSD goes ahead, then expect more flats to be held by offshore companies. 
It makes sense to do this whether you are an investor or an owner-occupier, so 
that the home can be resold within 2 years without penalty. It also puts traders 
outside the scope of profits tax, since any gains made from selling the offshore 
company would be sourced offshore - in that sense it's no different to a HK 
person selling shares on the New York Stock Exchange.</p>
<p>If the Government tells you that sales of companies which own property are 
currently rare, then they are bluffing, because they have no way of knowing how 
often it happens. What happens offshore, stays offshore. The only reason a buyer 
might prefer to buy the property rather than the company which owns it is to 
avoid hidden liabilities - but if the vendor is willing to give a guarantee, and 
a discount to avoid a much larger stamp duty, then the buyer might choose to buy 
the company. Also, companies can be maintained by reputable law firms using 
nominee directors, reducing the risk of any undisclosed liabilities, because the 
company will have a clean history. Rather like storing your vintage wine in a 
reputable wine vault.</p>
<h3>The honest advice</h3>
<p>What the Government should be saying to the public is this: </p>
<blockquote>&quot;We think we are in a bubble. It's not something we can 
control, but we are increasing land supply to meet demand. That will take time 
to flow through. We are worried that 
you are going to get burnt. Don't buy property unless you are willing to take 
the risk. But we are not stopping you, and we are not going to make things worse 
if you lose money by slapping you with a &quot;told you so&quot; punitive stamp duty, nor 
are we going to tax you at a higher rate than any other business if you are 
trading for profit. Instead, we are going to recognise that stamp duty is an 
unfair imposition on economic activity, and abolish it. It's not like we need 
the money, and if we do in future, we'll tax profits and salaries based on their 
share of GDP.&quot;</blockquote>
<div class="rightpicbox" style="max-width:161px">
	<img alt="John Pringle" src="../images/JohnPringle.jpg"/>
	<p>&quot;Bubble, what bubble?&quot;</p>
</div>
<p>In fact, different branches of Government are stating different views on the 
market level. Financial Secretary John Tsang, in
<a href="http://www.info.gov.hk/gia/general/201011/19/P201011190280.htm" target="_blank">
his remarks</a>, said that SSD is to &quot;reduce the risk of asset bubbles forming&quot;, 
whereas the HK Monetary Authority, Norman Chan, said that newly-reduced 
loan-to-value limits were &quot;to dampen the damage that would be inflicted by the 
bursting of the asset bubble&quot;. Yes, he said <u>the</u> 
asset bubble, the definite article, not just one that might emerge. John and 
Norman can't even get their line-to-take straight.</p>
<p>Incidentally, Webb-site supports the
<a href="http://www.info.gov.hk/gia/general/201011/19/P201011190262.htm" target="_blank">
announced</a> higher equity requirements, the purpose of which is to protect 
the banking system and reduce the risk of it ever needing a taxpayer-funded 
bailout. Some things we do right in HK. We know that with a linked exchange 
rate, all the pressure from capital flows gets absorbed in asset prices, making 
them more volatile.</p>
<p>All that the HKMA is basically saying is that you can't 
borrow more money this year than you could last year against the same property, 
and because its value has gone up, the loan-to-value ratio must be lower. 
Unless, of course, you get a guarantee from the
<a href="http://www.hkmc.com.hk/" target="_blank">Mortgage Corporation</a>, Hong 
Kong's own little state-backed interventionist Fannie or Freddie, in which case 
you can borrow 90% up to $6.12m. The HKMC is getting nervous too - the loan 
limit was
<a href="http://www.info.gov.hk/gia/general/200910/23/P200910230281.htm" target="_blank">
reduced</a> to $12m on 23-Oct-2009, then
<a href="http://www.info.gov.hk/gia/general/201008/13/P201008130225.htm" target="_blank">
reduced</a> to $7.2m on 13-Aug-2010, and now
<a href="http://www.info.gov.hk/gia/general/201011/19/P201011190278.htm" target="_blank">
reduced</a> to $6.12m on 19-Nov-2010.</p>
<h3>No sunset clause</h3>
<p>The Government claims the SSD is needed as an &quot;extraordinary measure under 
exceptional circumstances&quot;. But if that is the case, then these exceptional 
circumstances should eventually disappear and so should SSD. However, if the SSD 
is intended to be temporary, then the Government isn't saying so. It is 
proposing to put this into a permanent law, the Stamp Duty Ordinance. 
Legislators, even the most populist and misguided ones who seem to think the SSD 
is a good idea, despite what they were told in June, should now be asking 
themselves why there is no expiry date on the SSD.</p>
<p>Including a sunset date of say 30-Jun-2012 (the end of Donald Tsang's 
administration) would at least allow the new Chief Executive not to be burdened 
by the mistakes of the old, and would allow the SSD to lapse into history unless 
it is extended. By then, the people of HK will have realised how stupid the idea 
was in the first place, as the Government admitted in its letter quoted at the 
beginning of this article.</p>
<p>Legislators shouldn't be supporting this proposal in the first place - 
exceptional times do not call for irrational measures, particularly ones which 
might breach the Basic Law and create so many unintended victims.</p>
<p><em>&copy; Webb-site.com, 2010</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13499">HONG KONG MORTGAGE CORPORATION LIMITED (THE)</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=16">Real estate</a></li>
				
				<li><a href="/dbpub/subject.asp?c=187">Special Stamp Duty</a></li>
				
				<li><a href="/dbpub/subject.asp?c=192">Tax & budget</a></li>
				
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