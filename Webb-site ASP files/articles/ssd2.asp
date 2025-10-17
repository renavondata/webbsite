
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

<script type="text/javascript">document.title="SSD, the Basic Law, and a lesson from Singapore";</script>

	<div class="summary">The Government has responded to LegCo on our concerns that the proposed Special Stamp Duty is unconstitutional. We go further in this article, explaining why SSD would not be a legitimate tax protected by Basic Law Article 108. We'll also look at the lesson in political reality from Singapore's 1996-97 experiment, and we propose a fairer, focused alternative, in the form of a withholding system for profits tax.</div>

<h2 class="center">SSD, the Basic Law, and a lesson from Singapore<br>
<span class="headlinedate">30 January 2011</span></h2>
<p>The proposed Special Stamp Duty (<strong>SSD</strong>) is still 
<a href="http://www.legco.gov.hk/yr10-11/english/bc/bc02/general/bc02.htm" target="_blank">on the table</a> 
in the Legislative Council, and the Government is attempting to address 
legislators' concerns about the unintended victims of this dragnet approach to 
impose a punitive tax on anyone who sells their property within 2 years of 
purchase - concerns which the Government itself
<a href="http://www.legco.gov.hk/yr09-10/english/bc/bc07/papers/bc070608cb1-2172-2-e.pdf" target="_blank">
cited in Jun-2010</a> (p5) when it originally rejected the idea.</p>
<p>We submitted our <a href="stampmad.asp">earlier article</a> on 
this subject to LegCo, and on 4-Jan-2011 your editor
<a href="../codocs/speech110104.pdf">appeared in person</a> 
and fleshed out the reasons why we believe SSD would be unconstitutional, 
because it imposes a penalty on the exercise, within 2 years of purchase, of the 
right of disposal contained in article 105 of the Basic Law. The Government has 
now responded to Legislators on the Basic Law aspects of SSD with
<a href="http://www.legco.gov.hk/yr10-11/english/bc/bc02/papers/bc020121cb1-1125-1-e.pdf" target="_blank">
this document</a> filed in January 2011 (they don't put an exact date on it) at 
page 6. The Government cites the case of
<a href="http://legalref.judiciary.gov.hk/lrs/common/ju/ju_frame.jsp?DIS=55824&amp;currpage=T" target="_blank">
Weson Investment Ltd (<strong>Weson</strong>) v Commissioner of Inland Revenue</a> 
(<strong>CIR</strong>). </p>
<p>We'll go further in 
this article, explaining why <em>Weson v CIR</em> has little relevance, and why 
SSD is not a legitimate tax with a proper purpose. We'll also look at the lesson 
in political reality from Singapore's 1996-97 experiment, and we propose a 
fairer, focused alternative, in the form of a withholding system for profits 
tax. This article forms our second written submission to LegCo on SSD.</p>
<p>Rights in the Basic Law are not absolute or unlimited. For 
example, we have the right of free speech, but that is limited by laws against 
incitement of violence or terrorism. You cannot stand up and urge people to kill 
someone or burn down his home. There is a strong public interest reason for that 
limitation. But when we impose limitations on constitutional rights, including 
financial penalties for exercising them, then there must be some clear and 
present public interest reason for doing so, and the limitations must be no more 
than is necessary to achieve the public interest objective. This is known as the 
test of proportionality, and it applies as much to targeted taxation as it does to other 
restrictions.</p>
<h3>Weson v CIR</h3>
<p>It is necessary to explain the details of that case for you to understand why 
it has so little relevance to SSD. If that's all the Government has got, then 
they are on very shaky ground. <em>Weson v CIR</em> was a case which went to the Court of 
Appeal. Weson had been assessed for profits tax on land it had purchased, 
developed and sold. If a person wishes to object or appeal to a tax, then the 
CIR can order that tax be &quot;held over&quot; (delayed) on condition that the taxpayer 
purchases the same amount of 
<a href="http://www.ird.gov.hk/eng/tax/trc.htm" target="_blank">Tax Reserve Certificate</a> (<strong>TRC</strong>) 
from the Government, which is interest-bearing if the appeal is successful. There is a good public interest reason for requiring this security 
for tax which is in dispute, otherwise persons may challenge their taxes just to 
delay the payment, and then eventually be unable to pay if they lose.
<a href="http://www.hklii.org/hk/legis/en/ord/112/s71.html" target="_blank">
Section 71(2)</a> of the Inland Revenue Ordinance provides for that security.</p>
<p>Instead of buying a TRC, Weson failed to pay anything, and as deadlines 
passed, and an automatic surcharge of 5% was added, until eventually the 
tax was paid on its behalf, but without purchasing a TRC, as it could have done. Weson then successfully challenged the tax at the Inland Revenue Board of 
Review, which decided that the gain on sale of the land was a capital gain, not 
subject to profits tax. The CIR then refunded the tax, without interest. 
Initially Weson claimed from the CIR the interest that it &quot;would have earned&quot; on 
a TRC. The IRD rejected that. Then Weston sued on a different basis, claiming 
that Articles 6 and 105 of the Basic Law had been breached, because it had been 
deprived of the use of its capital (i.e. the tax paid and later refunded), 
without compensation. Weson lost in the Court of First Instance and the Court of 
Appeal.</p>
<p>We provide you with this level of detail to demonstrate how different the 
case is to the issue of SSD. This case was about profits tax, a fair, broad and well-accepted mechanism for raising Government revenue, and it was about the temporary, not 
permanent, deprivation of capital during the successful challenge, and the loss of income 
on that capital was avoidable by the purchase of a TRC.</p>
<p>By comparison, the proposed SSD would be a permanent deprivation of up to 15% 
of the value of a property, not based on the profit or loss, and not even based 
on the fact that it had been sold, but on the <u>timing</u> 
of the sale relative to the time at which it was purchased. SSD's stated purpose 
is to deter &quot;speculative&quot; behaviour by a financial penalty or cost. Raising 
revenue is not a purpose of SSD, and the Government has said so. The regular 
stamp duty, which has been around for over a century, has no regard to timing, 
and its purpose is to finance government expenditure, not to deter certain 
behaviour by means of a financial penalty.</p>
<p>&nbsp;Article 108 of the Basic Law (<strong>BL 108</strong>) covers taxation:</p>
<blockquote>&quot;The Hong Kong Special Administrative Region shall practise an 
independent taxation system.<br><br>The Hong Kong Special Administrative Region 
shall, taking the low tax policy previously pursued in Hong Kong as reference, 
enact laws on its own concerning types of taxes, tax rates, tax reductions, 
allowances and exemptions, and other matters of taxation.&quot;</blockquote>
<p>...and Article 105 of the Basic Law (<strong>BL 105</strong>) covers the rights to acquire, own and dispose of property:</p>
<blockquote>&quot;The Hong Kong Special Administrative Region shall, in 
accordance with law, protect the right of individuals and legal persons to the 
acquisition, use, disposal and inheritance of property and their right to 
compensation for lawful deprivation of their property.&quot;</blockquote>
<p>Clearly, it would make no sense to classify legitimate taxes as a 
&quot;deprivation of property&quot; - otherwise the Government could never collect a 
dollar of revenue without handing it straight back in compensation. As Justice 
Rogers put it in the Court of Appeal Judgment: &quot;Article 105...has no application 
to <u>legitimate taxation</u>&quot; (emphasis added). We agree, 
so that bring us on to:</p>
<h3>What is legitimate taxation?</h3>
<p>For taxation to be <u>legitimate</u> and hence covered by 
BL 108 and excluded from BL 105, it must have a proper purpose and not be arbitrary or capricious. 
Taxation cannot be used as a tool to &quot;control&quot; society without good reason. We submit that this proper purpose must either be:</p>
<ol>
	<li>raising revenue for general government expenditure, in which 
	case the tax must be broad, fair and not selective; or</li>
	<li>deterring some form of behaviour which is materially and demonstrably damaging to 
	society as a whole, in which case the tax must be focused on its target, 
	with minimal collateral damage, and proportionate 
	to the harm caused.</li>
</ol>
<p>In the first category, we have profits tax and salaries tax, each of which 
taxes a portion of GDP. We also have government rates, which tax property on its 
rental value (or on the rent avoided if it is owner-occupied) and the original 
purpose of which was to pay for the police, street lighting, water and the fire 
brigade (there's an
<a href="http://www.rvd.gov.hk/en/doc/hist_rate.pdf" target="_blank">excellent 
history here</a>). It is broad and fair, because it is very difficult to earn a 
salary or make a profit in HK without occupying homes and premises.</p>
<p>In the second category, the tax on cigarettes can be justified in terms of 
the additional public costs they impose in the form of healthcare and even in 
terms of lower lifetime productivity (and hence lower taxpaying) due to ill 
health and premature death. It is also focused - you only pay a tax on smoking 
if you buy cigarettes - there is no collateral damage. A tax on vehicle fuel can 
also be justified in terms of 
the cost of roads and the costs of air pollution (but we don't do that 
properly - we exempt franchised buses from diesel duty and charge
<a href="http://www.customs.gov.hk/en/trade_facilitation/dutiable/types/index.html#hydrocarbon_oil" target="_blank">far less tax 
on diesel than petrol</a>). Again, it is focused: if you don't use your 
vehicle, then you won't use the roads or pollute the air, you won't consume 
fuel, and you won't pay any fuel duty.</p>
<p>Even the regular stamp duty on property transfers fulfils <em>some</em> of the first 
category criteria; its purpose is certainly to raise revenue, and it is quite 
broad, although it taxes transactions whether they generate a profit or loss, so 
in that sense it is unfair. Aside from these criteria, stamp duty is just bad 
policy - it is a frictional tax which impedes the efficient allocation of 
capital, and it is distortive for numerous reasons - you don't pay stamp duty on 
other real assets (antiques, jewellery, art), or on financial assets other than 
shares (warrants, futures, options, bonds), and you don't pay much stamp duty if you rent. Many countries 
don't have stamp duty (New Zealand, for example,
<a href="http://www.legislation.govt.nz/act/public/1999/0061/latest/whole.html" target="_blank">
abolished</a> it in 1999). Property rates are much fairer.</p>
<p>So those are all legitimate taxes. </p>
<h3>What is illegitimate taxation?</h3>
<p>If a tax is very narrow in its scope, and intended to satisfy the whims, 
biases or prejudices of officials without 
any demonstrated public benefit, such a Dress Tax on bow ties, or a Smelly Fruit Tax 
on durians, then it would not have a legitimate purpose. There is no public harm 
caused by bow ties, and no health issue attached to durians that we know of - 
certainly not when consumed in moderation. Furthermore, if the tax impinges on a 
Basic Law right, the burden of proof of proper purpose is even higher - 
for example, a tax on Islamic headgear or the public display of crucifix 
jewellery would impinge on freedom of religion (Article 32), while a tax on 
internet publications such as this site would impinge on freedom of speech 
(Article 27). Those kinds 
of taxes would be much harder to justify.</p>
<h3>Why SSD is not legitimate taxation</h3>
<p>SSD certainly does not fall into category 1 - the Government has clearly said 
that the purpose is not to raise revenue (they have plenty already) but to 
&quot;curb speculation&quot; and &quot;substantially increase the frictional costs of 
speculative activities&quot;. In other words, to modify behaviour. Unlike regular 
stamp duty, it isn't a broad tax on all property transfers, but one based 
purely on the timing of the sale relative to the time of purchase. And SSD 
impinges on a constitutional right, so the burden of proof of legitimacy is 
high.</p>
<p>So then, to justify SSD as a behaviour-modifying tax and fall within the 
protection of BL 108, rather than a deprivation of property in breach of BL 105, 
the Government must show that:</p>
<ol>
	<li>speculators (however defined) are causing some significant 
	harm to society by their behaviour; and</li>
	<li>SSD is a proportionate and not excessive response; and</li>
	<li>SSD is focused and does not damage large numbers of 
	people who could not by any stretch be called speculators.</li>
</ol>
<p>The Government fails on the first and second counts. It has not produced any 
evidence that speculators cause harm to society, much less quantified that harm, 
so it cannot calibrate the penalty or deterrent. The burden of proof is on the 
Government - it is not for us to prove a negative, that speculators do not harm 
the public interest, but for the Government to prove that they do. In 
introducing the proposal, Financial Secretary John Tsang
<a href="http://www.info.gov.hk/gia/general/201011/19/P201011190280.htm" target="_blank">
made unfounded claims</a> that &quot;unscrupulous speculators may take advantage of 
the heated market sentiments to lure people into buying beyond their means&quot;. 
Yet, banks have strict limits on loan-to-value ratios, which we support, and are 
required to stress-test borrowers to ensure that their income can support their 
mortgage when rates rise. So there are plenty of safeguards. For buyers who do 
not need to borrow, it can hardly be said that they are investing &quot;beyond their 
means&quot; - it's their money. And note that he referred to &quot;unscrupulous 
speculators&quot; - apparently accepting that there are scrupulous speculators who 
are not causing any harm to others and are merely risking their own capital.</p>
<p>The Financial Secretary also claimed that &quot;short-term speculative activities... threaten our 
economic and financial stability&quot;. This is far-fetched. Again, no evidence has 
been proffered to support this view. It is a baseless claim. The HKMA has 
established clear and prudent lending limits, and even reined in the HK Mortgage 
Corporation to limit the amount it will guarantee. So SSD has nothing to do with 
ensuring the stability of the banking system.</p>
<p>The Government also fails on the third 
count, because it has proposed a law which lacks focus and captures far more 
people than just &quot;unscrupulous speculators&quot; or &quot;short-term speculators&quot;. An accidental death or loss of employment of the 
breadwinner in a family, for example, after the couple has just bought a home, 
could result in being unable to pay the mortgage and forced to sell. They were 
not speculators. A new 
homeowner who sees prices falling and wants to trade up to a larger flat or get 
out and cut his losses is not a speculator. The Government has made no effort 
whatsoever to limit the collateral damage by, for example, exempting people who 
are selling their home.</p>
<p>Another set of unintended victims are the 
home-renovation industry: those who buy properties, renovate them, and sell them 
again, helping the urban renewal process, and providing a secondary-market 
alternative to buying first-hand homes off-plan from developers. These renovators even 
install nice kitchens, and you can see them before you buy. Are these traders really speculators, any more than a 
mechanic who buys a second-hand car, fixes it up and sells it again? They are 
certainly risk-takers, but since when has risk-taking been harmful to society? 
Aren't we supposed to encourage entrepreneurialism in HK?</p>
<p>Far from being harmful to society, speculators provide liquidity. They sell 
almost as much as they buy, so they don't affect the supply-demand balance as 
much as first-time buyers. Traders also play a part in the price-discovery 
process - those who study a market full-time are better informed and more likely 
to know when to buy or sell and what is a fair price in any set of market 
conditions, bubble or not. Take them away, and you are left with people who only 
buy or sell a few times in a lifetime. If the only participants in a stock 
market were uninformed investors, would that make a safer market for investment?</p>
<h3>A fairer, focused alternative</h3>
<p>If the Government really wants to distort the economy by favouring one kind 
of business over another, then it could impose a higher rate of profits tax on 
property traders (and even developers) than on other businesses. We'd call that stupid, but we 
wouldn't call it a breach of the Basic Law. It would also be complicated, 
because a company may conduct other business at a different tax rate, so the 
allocation of overhead costs and the off-setting of losses from other activities 
(or vice versa) would be complex. Keep it simple.</p>
<p>And if the Government is concerned about securing <u>profits tax</u> revenue 
from property vendors who may disappear (leave HK or liquidate) after selling, 
then it could create a withholding system - it could require anyone who 
sells within 2 years <u>and makes a gross profit</u> (based 
on the simple difference between purchase price (including stamp duty) and sale 
price) to buy a Tax 
Reserve Certificate before the transaction is registered at the land registry. 
There would be a <u>rebuttable presumption</u> that a 
short-term sale was trading for profit rather than capital gain. If the seller 
could prove that she was selling a capital asset for capital gain (as Weson did) 
then she would get her TRC refunded. Of course, those who sell at a loss would 
not be charged.</p>
<h3>&quot;But it doesn't affect me&quot;</h3>
<p>There's an element of populism in the SSD proposal. For many who can't afford 
property, it is seen as &quot;targeting evil&quot; in some 
way. For the one third of the population who live in public rental housing, it 
certainly won't affect them. It perhaps seems &quot;unfair&quot; that some people have 
made a lot of money speculating on property - it always seems fair when they 
lose it on the downside though. That's just human nature and envy. Because 
speculators are more evident during bubbles, they are blamed for &quot;causing&quot; them, 
without any foundation. Bubbles are caused by excess of demand over supply, and 
record-low interest rates increasing affordability of mortgages and driving 
money into assets for fear of inflation.</p>
<p>For people who owned property before 20-Nov-2010, it won't affect them. 
For those who bought on or after 20-Nov-2010, many may feel confident that they 
won't need to sell in the next 2 years. And let's put our cards on the table - 
your editor David M Webb has only ever bought one property in HK, in 2006, which he still 
owns and lives in. So it won't affect him. But that doesn't make it right.</p>
<p>If the Government sets a precedent by enacting this law, it will be 
emboldened to <a href="../dbpub/subject.asp?c=144">intervene again and again</a>, 
not just in the property sector, but elsewhere. Slowly but surely, the 
free-market foundations on which Hong Kong rests are crumbling. Don't forget 
that this is the same Government which waded into the stock market and
<a href="interven.asp">bought up</a> 15% of the free float of the 
Hang Seng Index in 1998. Throughout the Global Financial Crisis of 2008-2009, 
not a single government did that. Sure, they nationalised failing banks, but 
they didn't try to push up the entire stock market with taxpayers' money. The US 
Treasury didn't go out and buy the S&amp;P500. The UK Government didn't buy the 
FTSE-100.</p>
<p>If the Government considers speculation as evil rather than entrepreneurial, 
then they may consider similar measures the next time our stock market bubbles 
up again, as it did in 2007. They might consider that investors should be 
&quot;delivered from temptation&quot; of speculation by imposing a 15% stamp duty on 
any sale of shares within 6 months. Would that be fair and constitutional? Not 
in our view, 
but it isn't so far-fetched. The other day,
<a href="../dbpub/positions.asp?p=18733">Ceajer Chan Ka Keung</a>, Secretary for 
Financial Services,
<a href="http://www.thestandard.com.hk/news_detail.asp?art_id=105944&amp;con_type=1" target="_blank">
told the media</a> that &quot;the imposition of stamp duties curbs over-speculative 
activities because it costs punters&quot; and that we don't want &quot;the short-term buy 
and sell caused by high-frequency trading&quot;. He was talking about much shorter 
holding periods, but the perspective is chilling. When a government seeks to 
control and manipulate risk-taking activity through taxation, it is heading 
directly away from the fundamentals of economic activity.</p>
<h3>A lesson from Singapore</h3>
<p>Singapore has something of a reputation for state-controlled capitalism and 
intervention, and unlike HK's Basic Law, the
<a href="http://statutes.agc.gov.sg/non_version/cgi-bin/cgi_retrieve.pl?actno=REVED-CONST&amp;date=latest&amp;method=part&amp;sl=1" target="_blank">
Singapore Constitution</a> does not actually contain a right to acquire, own or 
dispose of private property (including real estate). In 1996, near the height of 
the property bubble before the Asian financial crisis, Singapore imposed a 
&quot;Seller's Stamp Duty&quot; (at least they were honest about who pays it) on short-term resales in addition to the regular stamp 
duty. The
<a href="http://en.wikipedia.org/wiki/1997_Asian_financial_crisis" target="_blank">
Asian financial crisis</a> started in Thailand on 2-Jul-1997. As soon as the 
bubble burst, in November 1997, the Singapore Government suspended the Seller's 
Stamp Duty indefinitely and it was 
later
<a href="http://www.mof.gov.sg/budget_2003/budget_speech/subsection17.2.html" target="_blank">
repealed</a> in the 2003 budget.</p>
<p>But old habits die hard. On 19-Feb-2010, Singapore
<a href="http://www.mas.gov.sg/news_room/press_releases/2010/Measures_To_Ensure_a_Stable_and_Sustainable_Property_Market.html" target="_blank">
resurrected</a> SSD, again at the same rate as regular stamp duty, up to 3% for 
resales within 1 year of purchase. Then on 30-Aug-2010 they 
<a href="http://www.mas.gov.sg/news_room/press_releases/2010/Measures_to_Maintain_a_Stable_and_Sustainable_Property_Market.html" target="_blank">extended</a> it to 3 
years, but with 2/3 of the rate in the second year (i.e. up to 2%) and one-third 
in the third year (up to 1%).</p>
<p>However, perhaps they felt that their interventionist crown was being stolen by HK 
when it went proposed 15% SSD on 19-Nov-2010, so now Singapore has gone one-up, 
by 
<a href="http://www.mas.gov.sg/news_room/press_releases/2011/Measures_To_Maintain_A_Stable_And_Sustainable_Property_Market.html" target="_blank">announcing</a> on 13-Jan-2011 that Seller's Stamp Duty would be extended to 4 
years and the rate raised from 3% to 16% for resales in the first year, 
declining to 12%, 8% and 4% for resales in years 2, 3 and 4 after purchase. 
Anything we can do, they can do more of.</p>
<p>The political reality though, is that SSD will not deter speculative activity much. If 
the market keeps on going up, then speculators don't mind holding the property, and the 
moment the bubble starts bursting, they know that, like Singapore did in 
Nov-1997, the HK Government will have to scrap the tax or it will hit far too 
many non-speculators, even if a victim hasn't already challenged the HK law as 
unconstitutional.</p>
<p><em>&copy; Webb-site.com, 2011</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
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