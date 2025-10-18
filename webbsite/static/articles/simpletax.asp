
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

<script type="text/javascript">document.title="A simpler, fairer tax system";</script>

	<div class="summary">There are calls for a rental deduction for HK salaries tax, to compensate for the mortgage interest deduction. Both miss the point. Governments should not use tax breaks to distort consumer choice. Give people unconditional higher personal allowances instead, and introduce a flat rate of tax above that. Also, abolish the tiered rate of profits tax and the R&D deduction, 2 gimmicks introduced by Carrie Lam.</div>

<h2 class="center">A simpler, fairer tax system<br>
<span class="headlinedate">30 January 2019</span></h2>
<p>Once again there are calls from politicians and accountants to allow 
individuals to deduct home rental expenses from their earned income before 
salaries tax. The latest 
was
<a href="https://www.hkicpa.org.hk/en/News/News-releases/2019" target="_blank">
from the HKICPA</a> on Monday (28-Jan-2019), proposing a maximum HK$100k annual 
deduction. This amount was chosen because it mirrors the existing maximum 
HK$100k annual deduction for
<a href="https://www.gov.hk/en/residents/taxes/salaries/allowances/deductions/homeloan.htm" target="_blank">
home loan interest</a> (limited to 20 years). At an interest rate of say 2.5% on 
a mortgage loan, that covers a HK$4m loan, or 5% on a $2m loan if rates rise.</p>
<p>However, both of these deductions miss the point. Rather than having 
behaviour-modifying deductions that can only be used if a certain behaviour is 
adopted (borrowing to buy a home, or renting), and rather than incurring all of 
the administrative overhead that involves, it would be simpler to scrap the 
interest deduction and increase personal allowances (the amount of permitted 
non-taxable earnings), leaving it entirely up to employees how they spend their 
earnings. Whether they take out a mortgage loan, rent a flat, or continue living 
with their Mum and spend the money on holidays, or save it, should be no concern 
to 
Government. We note that in the UK, mortgage interest deduction was
<a href="https://en.wikipedia.org/wiki/Mortgage_interest_relief_at_source" target="_blank">
abolished in 2000</a> because it was seen to have played a role in driving up 
home prices by increasing demand.</p>
<h3>The existing rental deduction - the housing loophole</h3>
<p>In fact, unmentioned by the HKICPA, there is already a way to exempt the bulk of your rent, without 
limit, from salaries tax. You simply use the housing loophole, explained in our 
article <a href="tax1.asp">Tax Benefits</a> (10-Mar-2004). Under the 
archaic
<a href="http://www.hklii.hk/eng/hk/legis/ord/112/s9.html" target="_blank">
Section 9(2)</a> of the Inland Revenue Ordinance, if an employer pays 
or reimburses your rent or provides you with housing as part of your 
remuneration, then the rent is deemed to be worth only 10% of your cash 
earnings. For example, if your employer pays a monthly salary of $60k and a rent 
reimbursement of $40k, then you are deemed to earn $66k, not $100k, so hey 
presto, you effectively get a $34k per month rental deduction from your taxable 
income, or $408k per year, far more than the HKICPA proposes.</p>
<p>Of course, the housing loophole does require the co-operation of your employer, but any respectable employer (particularly for 
higher-earners) would do so since it provides value to the employee without 
costing the employer anything except a bit of paperwork to check the lease and 
fill in the relevant section of the Employer's Tax Return. The loophole is a bit 
of colonial madness and should be abolished, because it is unfair to 
those who cannot benefit from such an arrangement, for example because they own 
their own home or are living in someone else's. The Housing Loophole taxes 
people on <em>how</em> they are paid rather than <em>how much</em> they are 
paid.</p>
<p>At the same time as abolishing the interest deduction, personal allowances 
could be raised by $100k so that nobody is worse off than now. Given the vast 
surpluses that the Government hoards (over $1 trillion since 1997), a revenue cut is 
needed, just to comply with the
<a href="https://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Basic Law obligation</a> (Article 107) to "strive to achieve a fiscal balance", 
or balance the budget. The personal 
allowance is basically an estimate of the cost of a reasonable standard of 
living that a person and their dependents should be able to enjoy as expenses, 
before paying tax on the "personal profit" in excess of the expenses. That is 
why there are
<a href="https://www.gov.hk/en/residents/taxes/salaries/allowances/allowances/7years.htm" target="_blank">
additional allowances</a> for supporting children, dependent siblings and 
elderly parents.</p>
<h3>A flat tax</h3>
<p>As we've said before (<a href="salariestax.asp">Reforming 
Salaries Tax</a>, 24-Feb-2011), the Government should also abolish the tiered 
rates of tax, and adopt a flat rate, while ensuring that nobody pays more as a 
consequence. Currently there are
<a href="https://www.gov.hk/en/residents/taxes/taxfiling/taxrates/salariesrates.htm" target="_blank">
bands</a> of 2%, 6%, 10% and 14% on $50k each of chargeable income, with 17% on the excess, but 
bizarrely, subject to an overall cap of 15% on net total income (before 
allowances), so above some point, the marginal 
tax rate drops from 17% to 15%.</p>
<p>The first 2 bands, 2% ($1k on $50k) and 6% ($3k on $50k), totalling just $4k, are not worth 
collecting, given the efforts the Government goes to with its cash hand-outs of 
$4k each in the opposite direction. So they could easily raise the personal 
allowance by $100k and abolish those bands, or if they really want to collect 
$4k, then raise the allowance by $60k and tax the next $40k at 10%.</p>
<p>A simple, flat 10% rate on chargeable income (after personal 
allowances), leaving more cash in consumers' pockets, would do wonders to 
stimulate the economy and return part of the hoarded surpluses to society. 
There's nothing magical about 10% though. If it was determined that a flat tax 
of 10% isn't enough, then we currently collect an average 12% on the next $100k, 
so another way to do it would be a flat rate of 12% on all chargeable income and 
abolish the 2 lower bands.</p>
<h3>Profits tax</h3>
<p>The rates of salaries tax and profits tax must be kept in line to avoid tax 
arbitrage. Othewise, if the profits tax rate is higher than the salaries tax rate, 
then business owners will pay themselves a director's bonus and pay salaries tax 
on that rather than let the 
money be taxed as a corporate profit. Conversely, if the profits tax rate is lower, then they will let the company pay the profits tax and receive a divdend 
instead.</p>
<p>So when we flatten out salaries tax rates at 10% (or whatever is deemed 
right), the profits tax rate should be the same.</p>
<p>Instead, Carrie Lam's government has introduced a gimmicky half-rate of 
profits tax on the first HK$2m, and business owners are now planning their 
affairs so that the first $2m of profits is taxed that way and paid as a divdend 
rather than paid to them as a director's bonus which would incur tax at the 
standard rate of 15%. That gives them an extra $135k of after-tax income (6.75% 
on $2m), equivalent to an extra $900k of personal allowance!</p>
<p>And when we say "business owner", that includes a person who owns a company 
which does nothing but own an apartment and rent it out.</p>
<p>Carrie Lam's other big gimmick is a 300% super-deduction for "research and 
development" (200% above the first $2m) which is just a huge headache for a 
newly-hired army of assessors in the 
Inland Revenue Department to enforce, because there will be endless arguments as 
companies seek to reclassify their expenditure as R&amp;D, as we explained in our
<a href="profitstax.asp">article</a> of 24-Oct-2017. That should be 
abolished too.</p>
<p>The bottom line: keep it simple, make it fair, set a lower, flat rate of tax and stop hoarding public 
money.</p>
<p><em>&copy; Webb-site.com, 2019</em></p>
<hr>

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