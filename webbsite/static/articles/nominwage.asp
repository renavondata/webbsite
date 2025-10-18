
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

<script type="text/javascript">document.title="Intervention in the Labour Market";</script>

	<div class="summary">We examine HK legislators' calls for a statutory minimum wage and maximum working hours, and the Government's move to put public bodies on this path resulting from a pact between Donald Tsang and the unions during his nomination campaign. He was making promises with your money. We also look at the proposed "1+1" labour importation scheme - a sop to politically-connected textile families, the job-for-life labour contracts of the civil service, statutory Severance and Long Service Payments, and the Protection of Wages on Insolvency Fund.</div>

<h2 class="center">Intervention in the Labour Market<br>
<span class="headlinedate">7 October 2005</span></h2>
<p>Recently, there have been calls from various legislators, including 
pro-Beijing Federation of Trade Unions representative Chan Yuen Han, 
pro-democracy Confederation of Trade Unions representative Lee Cheuk Yan, and 
Democratic Party legislator Andrew Cheng Kar Foo, for a statutory minimum 
working wage, minimum and maximum working hours and minimum 125% overtime 
payments. Whilst such simple proposals may be populist, well-intended and 
attractive to those on low-paying jobs, the proposals would not be in the long-term 
interests of anyone, because they would reduce economic efficiency and increase 
inflation and unemployment, particularly for the young and low-skilled.</p>
<p>The relationship between an employer and an employee is a private contract, 
reached between a willing employer and a willing employee in a free market for 
employment. We do not have slave labour in Hong Kong. Government interference in 
such contracts should be kept to the minimum necessary to protect the public 
interest, such as health and safety. It would not, for example, be in the public 
interest to risk bus drivers or airline pilots falling asleep at the controls, 
so it is reasonable to impose statutory maximum continuous working hours and 
minimum rest periods between shifts for safety reasons. The same could be said 
of doctors in whose hands we place our lives.</p>
<h3>The minimum wage</h3>
<p>However, if Governments take that interference too far, and impose minimum 
wages, then they are interfering in the operation of the free market, and 
preventing a willing employee and employer from agreeing on a lower wage that 
would be acceptable to both sides. What does this mean for jobs? In some cases, 
where technology allows it, the jobs migrate overseas, where wages are lower. 
For example, a call centre does not have to be placed in the country it 
services. Indeed, many HK firms already place their call centres in mainland 
China.</p>
<p>In other cases, a minimum wage would raise the cost of doing business and 
reduce the number of jobs in the sector. Restaurants, for example, have to 
employ waiters and cooks, and these jobs cannot be outsourced overseas, but if 
forced to raise wages, then restaurants have two choices in order to stay in 
business - either raise the price of meals, or employ fewer people, and probably both, because raising prices drives away some 
marginal business, and as a result restaurants serve fewer meals and employ 
fewer waiters. Likewise, the effect of raising minimum wages in the hotel sector 
would be to either cut jobs or raise room rates, and probably both, 
making HK less attractive as a tourist and conference destination. Other areas 
affected by higher labour costs could include public transport - ironically, 
many of the legislators who call for minimum wages also call for lower bus 
fares. How is that possible if we increase the cost of bus drivers? And are the 
poorer and hungry customers willing to pay more for a hamburger or lunch box so 
that the fast food joint can pay a minimum wage to its staff?</p>
<p>For low-skilled youths who are seeking their first jobs, or for low-skilled 
workers seeking to change careers, a minimum wage simply makes them unattractive 
- if an employer has a choice between someone with experience, and someone with 
no experience, and if both are willing to work for the minimum wage, then of 
course he will choose the experienced person and save money on training. But if 
he is free to negotiate, he may pay a lower wage to a trainee and then train him 
or her. With a minimum wage, the only way to resolve that conundrum would be for 
Government to throw taxpayers' money at it by paying employers to train people 
(or equivalently, giving tax breaks).</p>
<p>A minimum wage would also disincentivise low-skilled workers from pursuing 
further education, because at least initially, they wouldn't see any monetary 
reward for it. For example, if an employer would pay them $20 in a free market, 
but is forced to pay them a minimum of $30, then the worker will have to lift 
his economic value by at least $10 before receiving any further reward.</p>
<p>If a minimum wage is imposed, then fewer jobs will be available overall, and 
the financial burden on taxpayers of supporting the unemployed will increase. 
The logic of this argument is clear if you consider what would happen if the 
minimum wage was say, $100,000 per month - many jobs would disappear, we would 
have hyper-inflation of wages and prices, the currency peg would break, and the 
economy would shrink dramatically as people and business left for cheaper 
places.</p>
<h3>Domestic Helpers</h3>
<p>The only employees in Hong Kong who currently have a statutory minimum wage 
are Foreign Domestic Helpers. This provides a case study. It is clear that some 
helpers are willing to work for less than the minimum, and some employers cannot 
afford to pay the minimum. As a result, they either break the law by agreeing to 
a lower wage, or more likely, the would-be employer does not get a domestic 
helper and the would-be helper does not get a job. That in turn can prevent a HK 
parent from taking a job due to the need to look after their children; indeed, 
it may deter them from having children in the first place. The parent makes a 
simple calculation - can I afford to work for the salary available, and employ a 
helper? As you can see, there is a domino effect - the helper doesn't get a job, 
the parent may not get a job, and the parent's would-be employer may have to pay 
more to get someone to do the job. Meanwhile, due to the willingness of foreign 
helpers to come to Hong Kong for less than the minimum wage, overseas employment 
agencies can arbitrage this by charging exorbitant fees to the helper to arrange 
for the job. It is quite clear that the minimum wage for foreign domestic 
helpers impedes economic efficiency, not just in Hong Kong, but in the poorer 
countries of Asia where people are willing to take overseas jobs which offer 
higher wages than those available at home.</p>
<h3>It's your money</h3>
<p>In a bargain struck in Jun-05 with trade unionists, in return for their 
support of his nomination campaign, Chief Executive Donald Tsang reportedly 
agreed to introduce a minimum wage and standard working hours for employees at 
public bodies by the end of 2005. As a result, the Government will pay more than 
necessary for some of its employees (including those outsourced to private 
contractors) and the public will end up paying for it through direct and 
indirect taxation. The money does not come out of thin air. Mr Tsang was 
spending your money by making this promise. He also agreed to consider extending 
this to the private sector through legislation or by 
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?pp_cat=11&art_id=2869&sid=4876420&con_type=1">leaning on employers</a> 
over which the Government has influence, such 
as the power monopolies, who will ultimately recover the increased cost through 
their tariffs under the Scheme of Control.</p>
<p>The only true private-sector employers who are likely to agree, without 
regulatory pressure, to a proposed &quot;Code of Practice&quot; on minimum wages are those 
who already pay all their staff more than the minimum in the code.</p>
<p>If Mr Tsang wants to preserve HK's free-market reputation, and more 
importantly, our economic efficiency, then he should stop this nonsense and make it clear that the Government and public bodies will pay free-market rates 
for labour, getting maximum value for taxpayers' money, and that everyone else is free to do the same.</p>
<h3>The 1+1 Scheme</h3>
<p>It is ironic that at 
the same time as he is entertaining calls for a minimum wage, he is also 
entertaining calls for the 
<a target="_blank" href="http://www.thestandard.com.hk/news_detail.asp?pp_cat=11&art_id=2702&sid=4846641&con_type=1">&quot;1+1&quot; scheme</a> of allowing Hong Kong factories to 
import 1 mainland manufacturing worker for each local employee, to regenerate an 
economic sector that is no longer viable. So which do you want, Mr Tsang, cheap 
labour, or minimum wages?</p>
<p>The truth is that even if the 1+1 scheme gets off the ground, it will only be 
viable if it involves short-lived quota-dodging by textile firms. That game, 
finishing mainland garments in HK and sticking our labels on them, is almost 
over, because under the WTO agreement, the EU and US can only impose anti-surge quotas 
on mainland textiles for another two years. For other industries, 2 mainland 
workers will still be cheaper than 1 mainlander and 1 HK worker, so they will 
stay in China. The fact that this is even being considered is a testament to the 
textile background of certain HK politicians. And where are these workers all 
going to sleep - on the factory floor?</p>
<p>In principle, we have no objection to the import of labour, as long as new 
arrivals do not rely on the state for housing - one way is simply to commute from Shenzhen. But if we are going to allow it, let's allow it for all 
sectors and behave like a true free market. Let's drop labour protectionism and 
allow anyone who can cover their living costs to come here and work. The rental 
cost of housing and transport would naturally limit the inflow to higher 
earners, so those on lower-incomes who are already resident in state-subsidised 
housing would not feel any competition for work. At present, even the spouses of 
expatriate workers are not entitled to work here, which is a major deterrent to 
families 
moving here in the first place.</p>
<h3>The Civil Service</h3>
<p>Of course, the Government itself has some of the most inflexible employment 
contracts in the market, as most civil servants are virtually guaranteed 
lifetime employment at remuneration way above market rates, including untaxed 
benefits. An employee of the civil service has to be involved in a 
<a target="_blank" href="http://www.chinapost.com.tw/i_latestdetail.asp?id=23637">fiasco the 
size of the Harbourfest</a> to put his contract in jeopardy. Tsang could go further 
by reforming the civil service on free-market lines by putting everyone on 
standard employment contracts with the right of the employer to terminate them 
on 1-3 months' notice - but he won't, because civil servants would then claim 
that they were entitled to jobs for life under
<a target="_blank" href="http://www.info.gov.hk/basic_law/fulltext/content0204.htm#Section_6">
Article 100</a> of the Basic Law, resulting in another court battle. But he 
could at least ensure that no more job-for-life contracts are signed, and that 
all new recruits get standard notice clauses in their contracts, no different to 
the private sector. Otherwise, he is committing the taxpayer to employ people in 
the civil service who may not in future be needed.</p>
<h3>Working hours</h3>
<p>As regards minimum or maximum work hours and overtime payments, this should 
be a matter of private contract. Individual employees, or if they so choose, 
Unions who represent them, should be free to negotiate with employers for 
whatever contract terms they like. And employers should be free to choose whom 
they negotiate with (the union or the worker) and whom they employ. It is true 
that HK workers are some of the hardest-working in the world - but so what? The 
hours a person agrees to work should not be dictated by Government, save where 
it involves safety issues.</p>
<h3>Severance and Long Service Payments</h3>
<p>The Government already interferes too much in private contract by means of 
the
<a target="_blank" href="http://www.legislation.gov.hk/blis_ind.nsf/CurAllEngDoc?OpenView&Start=57.1.1&Count=207">
Employment Ordinance</a>. For example, it imposes minimum lump sums to be paid 
by employers when contracts are terminated, known as &quot;Severance Payments&quot; and 
&quot;Long Service Payments&quot;. If an employer terminates the employment after 2 years 
through reason of redundancy or lay-off, then a Severance Payment is required. 
If he terminates after 5 years for any other reason, or if an employee resigns 
after 5 years and is 65 or over or is medically permanently unfit for the job, then a Long Service Payment is required. Instead of all this, the 
Government should stand back and allow employers and employees to negotiate 
freely before the employment begins.</p>
<p>As a result of these impositions, some employers of low-skilled workers 
terminate their employment contracts after 4 years for no real reason other than 
to avoid incurring a liability for future Long Service Payments. They then hire 
other staff from the market. So the law actually undermines employment 
stability. In a free market, most employers would probably cease to agree to 
such terms, and employees may obtain slightly higher wages in return for taking 
the risk of job loss without severance payments, but perhaps negotiating minimum 
notice periods. However if employees were interested in insuring against 
job-loss, then insurers would undoubtedly sell insurance to cover it, as they do 
in
<a target="_blank" href="http://www.hsbc.com.au/personal/insurance/protection.html">
other markets</a>, thereby creating economic growth and jobs in the insurance 
sector. As things stand, such unemployment insurance products are rare in HK 
because they are &quot;crowded out&quot; by the Government-imposed Severance and Long 
Service Payments.</p>
<h3>The PWIF</h3>
<p>Of course, the obligation to pay severance payments isn't worth much if the 
employer is bankrupt, so another consequence of this law is that the Government 
established the
<a target="_blank" href="http://www.labour.gov.hk/eng/rbo/content2_4.htm">
Protection of Wages on Insolvency Fund</a> and its accompanying
<a target="_blank" href="http://www.labour.gov.hk/eng/erb/content4.htm">
bureaucracy</a> to cover unpaid wages and Severance Payments. This is financed 
by a tax on businesses - HK$600 on each annual business registration 
certificate, whether or not the business (which might just be a property or 
trademark-holding 
vehicle) has any employees itself. Like all such schemes, it is open to abuse, 
and some restaurant operators have acted on this by incorporating each 
restaurant separately, then shutting them down (often just before Chinese New 
Year &quot;13th month&quot; bonuses are due), claiming insolvency and leaving the 
employees to claim from the fund. Meanwhile, the shareholders and management 
establish a new operation elsewhere, or even in the same premises a few weeks 
later under a new lease. The Government then has to spend more public money 
investigating and prosecuting the abusers of the fund. Restaurants are not alone 
in this.</p>
<p>In line with the free market philosophy of HK, the fund should be abolished, 
and employees and employers should be allowed to reach whatever arrangements 
they choose in relation to the protection of wages. This could involve the 
employer or the employee buying insurance to guarantee the payment of wages in 
the event of insolvency, or the employee simply agreeing to accept the risk of 
non-payment, just as a supplier of any other services does when he provides 
those services to a customer. As a middle-ground, if the Government wished to 
retain any interventionist role, then it could require employers to purchase 
such wages insurance, just as it requires them to purchase
<a target="_blank" href="http://www.labour.gov.hk/eng/legislat/content1.htm">
Employees Compensation Insurance</a> to cover work-related injuries.</p>
<p><em>&copy; Webb-site.com, 2005</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=30059">HKSAR Protection of Wages on Insolvency Fund Board</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
				<li><a href="/dbpub/subject.asp?c=60">Labour</a></li>
				
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