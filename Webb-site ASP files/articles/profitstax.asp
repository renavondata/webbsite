
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

<script type="text/javascript">document.title="The CE's damaging tax proposals: a better approach";</script>

	<div class="summary">The Government proposes distortive gimmicks and loopholes rather than addressing structural issues. Public expenditure has grown faster than GDP, breaching the Basic Law. Revenues have grown even faster, draining capital from the economy. Time to return it. A flat rate of 10% for Profits Tax and Salaries Tax is entirely affordable. What is R&D anyway? New armies of tax consultants and assessors do not make our economy more productive.</div>

<h2 class="center">The CE's damaging tax proposals: a better approach<br>
<span class="headlinedate">24 October 2017</span></h2>
<div class="summary">Note:a Chinese translation of this article has been produced by Harbour Times 
	<a href="https://harbourtimes.com/2017/11/01/%e6%94%b9%e9%9d%a9%e7%a8%85%e5%88%b6%e5%ae%9c%e5%be%9e%e7%b0%a1/" target="_blank">at this link</a>.</div>

<p>In her
<a href="https://www.policyaddress.gov.hk/2017/eng/index.html" target="_blank">
Policy Address</a> on 11-Oct-2017, HK's nearly-new Chief Executive launched two 
badly-conceived initiatives on Profits Tax, both of which will require 
amendments to the Inland Revenue Ordinance by the Legislative Council, so there 
is still an opportunity to stop them and do something much, much better. 
Legislators should be asking the Government not to create distortive gimmicks 
and loopholes but to close existing ones and reduce tax rates across the board, 
stimulating the economy by returning hoarded surpluses. The CE's proposals are:</p>
<ul>
	<li>That the first HK$2m of taxable profit be taxed at 8.25%, being half the 
	current 16.5% rate (the <strong>Tiered Rate proposal</strong>). Each "group 
	of enterprises" (to be defined) may only nominate one enterprise to benefit 
	from the break.</li>
	<li>That filers be entitled to a 300% deduction on "research and 
	development" expenditure up to HK$2m, and 200% thereafter, rather than the 
	usual 100% that applies to all expenses incurred in the generation of profit 
	(the <strong>R&amp;D proposal</strong>).</li>
</ul>
<p>We'll deal with these proposals separately.</p>
<h3>The Tiered Rate proposal</h3>
<p>For many years in its budgets, the Government has been
<a href="https://www.gov.hk/en/residents/taxes/taxfiling/taxrates/profitsrates.htm" target="_blank">
fiddling</a> with Profits Tax by waiving 75% of tax up to HK$20k, effectively cutting the tax rate to 4.125% on the first $161,616 
of profit. The $20k waiver has been available to each subsidiary of any group. 
It is a clumsy way of returning a small part of our structural surplus, when a 
fairer way is to cut the flat rate of tax when too much revenue is coming in. 
Now, the Government wants to give some permanence to this and scale it up to an 
effective waiver of 50% of profits tax, subject to a cap of $165,000.</p>
<p>This incentivises anyone who owns and runs a company not to run it better but to structure their affairs so that rather than paying themselves a higher 
bonus (which is subject to Salaries Tax in bands up to 17%), they will now leave 
HK$2m of profit before tax in the company, pay 8.25% on that, and then pay out the taxed 
profit as a dividend. Quite rightly, dividends are not subject to tax, as they 
represent the distribution of taxed profit and no GDP is generated by paying out 
a dividend. So the Tiered Rate proposal will distort the economy by producing an 
arbitrage gap between the rates of Salaries Tax and Profits Tax.</p>
<p>There's another problem. A large number of real esate properties in HK, 
including many high-end apartments, shops, office or godown units, are held by 
individuals via single-purpose companies. Your editor owns his flat that way. By 
introducing a large waiver (purportedly aimed at "Small and Medium 
Enterprises"), the Government is simply creating a tax break for property 
owners. A single-asset company which rents out a flat for up to HK$180k per month will 
have no problem keeping its taxable profit below HK$2m (after expenses, 
depreciation and refurbishment allowances), or at even higher rent if it has used a bank 
loan to finance the purchase.</p>
<p>The Government hasn't yet defined a "group of 
enterprises" and whether that would include multiple companies owned by one 
human rather than a holding company, but even if they extend the meaning of 
"group" to all companies majority-owned by a human, a married couple can still 
hold one company each. Another way around the problem would be for two people to 
each hold 50% of each company, so that the tax-paying companies are not part of 
any "group", as they are not subsidiaries.</p>
<p>Finally, if this is intended to incentivise start-ups or SMEs, then the 
Government has completely failed to understand what drives them. If you quit 
your relatively comfortable job to embark on a new business, possibly moving to 
HK to do so, you aim to make a much larger profit than HK$2m. What will attract 
you fiscally is lower overall tax rates, not a break on the first HK$2m.</p>
<h3>The R&amp;D proposal</h3>
<p>Some policy wonks in HK have wrung their hands at the
<a href="https://www.censtatd.gov.hk/hkstat/sub/sp120.jsp?tableID=207&amp;ID=0&amp;productType=8" target="_blank">
low reported level</a> of R&amp;D by the business sector here, claiming that this 
means HK is "lagging behind". The truth is far more sanguine. Businesses will 
engage in as much investment in their products and services as makes economic 
sense to them, no more and no less. If they can make an incremental profit from 
the investment (after cost of capital), then they will do it, and they will be happy 
to pay the flat rate of tax on the additional profit - it is a "nice problem to 
have".</p>
<p>But one reason that HK doesn't report higher levels of R&amp;D is that, until 
now, there has been no reason to classify expenditure that way. When a 
company develops a new feature in its toasters, or a web site operator develops 
a new feature on its site, the costs involved (including labour and a share of 
overheads) are not separately identified. They are booked as normal 
expenses and deducted from revenue to calculate profit. There is no need to call 
it "R&amp;D" when the Census and Statistics Department sends you a survey on 
expenditure, so you don't waste time and money segregating the expenses. 
Territories which introduce special tax treatment for R&amp;D will see an 
instant increase in reported levels, not because business are necessarily 
spending more on it, but because they are reclassifying existing expenditure to 
qualify for the tax break.</p>
<p>However, this comes at a real cost, because an army of tax consultants 
employed by the taxpayers and an army of additional staff employed by the Inland Revenue Department will have to argue about what counts as R&amp;D and what does not. This is not 
simple taxation. It is not just a question of checking receipts, but arguing 
about what they are for. Just look at the
<a href="https://www.gov.uk/guidance/corporation-tax-research-and-development-rd-relief" target="_blank">UK 
criteria</a> for example:</p>
<div class="letterbox">
	To get R&amp;D relief you need to explain how a project:
<ul>
	<li>
		looked for an advance in science and technology
	</li>
	<li>
		had to overcome uncertainty
	</li>
	<li>
		tried to overcome this uncertainty
	</li>
	<li>
		couldn’t be easily worked out by a professional in the field
	</li>
</ul>
	<p>Your project may research or develop a new process, product or service or 
	improve on an existing one.</p>
</div>
<p>And that's just the summary. The HK Government hasn't said how it will define 
R&amp;D, because it is really impossible to do so. If interpreted widely, vast 
chunks of expenditure will qualify, but if interpreted narrowly, it will just 
tie up large numbers of people arguing about the deduction. One thing is for 
sure: the proposal would increase the number of people in HK who do nothing but argue 
about the amount of tax that others have to pay. The big accounting firms are 
rubbing their hands with glee, but is that really how to make an 
economy more productive?</p>
<h3>Simply cut tax rates</h3>
<p>The Chief Executive has clearly admitted that HK is running a structural 
budget surplus. As she noted in her speech:</p>
<blockquote>"With years of practical experience in public finance, I fully 
appreciate the requirements stipulated in the Basic Law of keeping expenditure 
within the limits of revenues and avoiding fiscal deficits as far as possible. 
But the fact is the HKSAR Government last went into deficit in 2003-04."</blockquote>
<p>It's bad enough that we're draining the economy by running a surplus, but shen then spent the rest of her address 
talking about how to increase expenditure to match revenues, rather than 
reducing revenues to match expenditure. In citing the Basic Law, she ignored the 
third budgetary 
requirement in
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Article 107</a>, to "<strong>keep the budget commensurate with the growth rate 
of its gross domestic product</strong>". In fact, HK has been breaching the 
Basic Law by growing its budgeted expenditure faster than GDP. We entered the 
post-colonial era spending 17% of GDP in 1997-98, and the Government has 
budgeted HK$532bn or 20.4% of GDP in 2017-18, with a projection to reach 21.7% 
in 2021-22. A dedade of indiscriminate handouts and profligate infrastructure 
spending has caused this.</p>
<p>This chart is from the 2017-18 Government budget 
<a href="http://www.budget.gov.hk/2017/eng/pdf/e_appendices_b.pdf" target="_blank">
appendix B</a>:</p>
<img class="center" alt="Public expenditure v GDP" src="../images/publicExp-gdp2017.png">
<p>Meanwhile, the amount of revenue sucked out of the economy is now closer to 
24% of GDP, with the 4% difference being about $100bn in surplus. Salaries tax 
($62bn) and profits tax ($139bn) are budgeted to raise $201bn in 2017-18, so 
even without cutting expenditure, we could slash tax rates on both salaries and 
profits to a flat 10% and still break even, not allowing for the stimulative 
effect on economic activity, including profits-shifting to HK from higher-tax 
jurisdictions in the region.</p>
<p>But even if this measure results in occasional deficits when other revenues 
are slow, we should be aiming to do that and return some of the hoarded 
surpluses to the economy via lower taxation. We simply don't need that much 
cushion for armageddon. The Government has become so desperate to justify its 
hoarding that it has established a "Future Fund" within the reserves, the 
purposes of which are undetermined. The latest
<a href="http://www.hkma.gov.hk/media/eng/doc/key-information/press-release/2017/20170929e4a1.pdf" target="_blank">
abridged balance sheet</a> of the Exchange Fund at 31-Aug-2017 shows that fiscal 
reserves now stand at $986bn, plus $687bn of surplus in the Exchange Fund, for a 
total of $1673bn. The corresponding figures at 31-Dec-1997 totalled $623bn. So 
over the last 20 years (including the 1998 crisis and the 2003 SARs deficit) we 
have salted away over HK$1 trillion in today's dollars.</p>
<p>We could also elminate the lower Salaries Tax bands (currently 2%, 7% and 
12%) by expanding personal allowances. Currently the lower bands raise minimal 
revenue, and a 10% flat rate would obviously eliminate the 12% and 17% rates. To 
make the system both simpler and fairer, we should also eliminate the housing 
benefit loophole where rent reimbursed to employees (or quarters provided) is 
deemed to be worth only 10% of other cash income, and abolish the mortgage 
interest deduction which distorts the choice between renting and buying homes. 
All of this we have <a href="salariestax.asp">proposed before</a>.</p>
<p>For two decades, the Government has hoarded surpluses that it does not need 
for the foreseeable future. Now is the time to return the wealth to the economy, 
not with gimmicks and R&amp;D deductions, but with straightforward tax cuts and 
simplifications. That's all the innovation we need from Government.</p>

<p><em>&copy; Webb-site.com, 2017</em></p>
<hr>

		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=40475">Lam Cheng, Carrie Yuet Ngor</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
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