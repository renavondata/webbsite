
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

<script type="text/javascript">document.title="Double stamp duty";</script>

	<div class="summary">We explain the fallacy in the proposed so-called "demand-side" measures announced on Friday. Higher transaction costs reduce volumes, not prices, and affect both buyers and sellers. We ask whether this is really worth trashing HK's reputation as a free and open economy and what this meddling is trying to achieve.</div>

<h2 class="center">Double stamp duty<br>
<span class="headlinedate">25 February 2013</span></h2>
<p>The level of economic illiteracy behind Friday's
<a href="http://www.info.gov.hk/gia/general/201302/22/P201302220572.htm" target="_blank">
proposed doubling</a> of stamp duty rates is breathtaking. These are
<u>proposed</u> measures, which will proceed only if the 
Legislative Council allows them to. So although we covered this briefly in our
<a href="altbudget.asp" target="_blank">alternative budget speech</a> 
on Friday, it is still worth explaining why these measures are misconceived, in 
the hope of educating decision-makers.</p>
<h3>Not demand management, but volume management</h3>
<p>First of all, there is a
<a href="http://en.wikipedia.org/wiki/Cognitive_bias" target="_blank">cognitive 
bias</a> caused by the fact that although both parties are jointly liable for 
the stamp duty on a transaction, the duty is normally paid by the purchaser. 
This results in the misperception that increasing duty rates deters purchasers 
more than sellers, because &quot;the buyer pays&quot;. The Government even calls it a 
&quot;demand-side management measure&quot;, strengthening the misperception. You can 
overcome this misperception by realising that stamp duty is equivalent to a 
brokerage charge by the Government on both sides, charged on the mid-point 
between what the buyer pays (including stamp) and what the seller receives 
(excluding stamp).</p>
<p>In reality, the deterrent effect of increasing stamp duties is on both sides, 
locking sellers in and locking buyers out. It is not demand management, but 
volume management, particularly in non-residential property where there are no 
exemptions.</p>
<p>Bear with us for a bit of algebra. If &quot;H&quot; is the headline price, upon which 
stamp is paid, then the seller receives H, while the buyer pays H+D, where &quot;D&quot; 
is the duty in dollars. Half-way between these is the &quot;<strong>mid-price</strong>&quot; 
which they would agree upon if no duty was payable, being P=H+D/2. For example, 
if a transaction at H=$6m was stamped at a rate of R=3%, then D=R*H=$180,000. 
The buyer pays $6,180,000, and the seller receives $6,000,000. The mid-point, 
P=$6,090,000 is the &quot;real&quot; price, unaffected by stamp duty rates. The stamp duty 
is equivalent to a Government brokerage charge on each side of 1.47783%, or 
$90,000. To save you the algebra, the general formula for that brokerage rate is 
B=R/(2+R). In this example, B=0.03/(2+0.03)=1.47783%.</p>
<p>On Friday, the top rate, on properties over $20m, was doubled to 8.5%. That 
is equivalent to a brokerage of 0.085/2.085=4.08% on each side of the mid-price.</p>
<p>Increasing stamp rates are neither a &quot;demand-side measure&quot; nor a &quot;supply-side 
measure&quot;. They are simply a &quot;volume suppression&quot; measure. As the cost of 
transactions increases, the number of transactions declines. If, for example, 
stamp duty were increased to 100%, then the effective brokerage would be B=1/3, 
or about 33.33% on each side of the mid-price. Very few transactions would get 
done, because the government would in effect be confiscating 2/3 of the value of 
anything which changes hands. And if duty was increased to 200%, then the 
confiscation would be exactly equal to the mid-price. In our example, at 200%, 
the seller would receive $3,045,000, the buyer would pay $9,135,000 and the 
Government would collect $6,090,000 in stamp. Here's an expanded table which 
shows the effect, if any transactions were done at higher rates:</p>
<img class="center" alt="" src="../images/stampinc.gif">
<p>So higher rates suppress volume, but they have no effect on mid-prices. You 
get a reduction in headline transaction prices (excluding stamp), but when you 
add back half of the stamp duty, you are back to the mid-price. The reduction 
factor in the headline price is simply (2+R1)/(2+R2) where R1 is the old rate 
and R2 is the new rate. So a doubling of stamp on office properties from 4.25% 
to 8.5% will reduce headline prices by a factor of 2.0425/2.085, or about 2.04%. 
Each side will be worse off by the same dollar amount, being half of the 
increase in duty paid. So when you see headlines which say &quot;office prices drop 
2% in wake of new measures&quot; you will know that the mid-price is unchanged and 
the illusion is complete.</p>
<p>Friday's announcement contains an exemption from the increase for first-time 
home buyers who are permanent residents, but there is no exemption for buyers of 
offices, shops, car parks, hotels, industrial units or anything non-residential 
(except for redevelopers). The higher costs will deter potential sellers and 
buyers, but do nothing to affect HK's stock of floor space or its economic 
value. Instead, many potential sellers will lease out their units, and many 
potential buyers will rent instead. The potential seller has his capital 
trapped, and the potential buyer has to tolerate the regular renegotiation and 
relocation that comes with being a tenant. Both are deterred from exercising 
their rights in
<a href="http://www.basiclaw.gov.hk/en/basiclawtext/chapter_5.html" target="_blank">
Basic Law article 105</a> to acquire and dispose of property, including real 
estate.</p>
<p>All that the Government will be able to show from this is a reduction in 
transaction volumes, and an illusory reduction in transacted prices by an amount 
equal to half of the increase in stamp duty. The reduced flexibility for 
potential sellers and buyers just throws extra sand into the wheels of commerce. 
If that is the Government's objective, then they have succeeded.</p>
<h3>Revenue reduction</h3>
<p>There is a concept in income taxation called the
<a href="http://en.wikipedia.org/wiki/Laffer_curve" target="_blank">Laffer curve</a> 
which plots revenue against tax rates, and it is similarly applicable to 
transaction taxes such as stamp duty. As the rate increases, the volume 
decreases. Starting from zero rates, revenue rises to a peak and then declines 
back to zero. We suspect that after Friday's increase, we are already past that 
maximum-revenue point, particularly for higher-value transactions on properties 
without exemptions. In other words, when you double the rate on offices over 
$20m from 4.25% to 8.5%, the combined transaction value will drop more than 50% 
and stamp revenues will decline.</p>
<p>With high enough rates of stamp duty across the board, we could bring 
transactions to a halt. That would not mean that properties are worthless, only 
that they can no longer be transferred. Those who need space will rent from 
those who own space - rents won't be materially affected.</p>
<p>The other effect would be more work for lawyers to document transfers 
of companies which own property in HK. Many properties, particularly whole 
buildings and larger premises, are already held by single-asset companies, so 
they will effectively be exempt from stamp duty anyway. If shares are registered 
in HK, they are subject to 0.2% stamp duty on net asset value (net of any 
mortgage or loans), but if a HK company is owned by an offshore company, then 
the offshore company can be transferred without paying any stamp duty in HK. So 
the biggest impact of the new measures will be on small and medium enterprises 
who just want to buy or sell an office unit, shop or industrial unit for 
self-occupancy.</p>
<p>How widespread is corporate ownership? The Chief Executive
<a href="../dbpub/natarts.asp?p=1680">Leung Chun Ying</a> himself
<a href="http://www.ceo.gov.hk/exco/pdf/ce_e.pdf" target="_blank">owns</a> his 
Peak houses via <a href="../dbpub/orgdata.asp?p=222245" target="_blank">Lotvest 
Limited</a> (HK). He could sell that company whenever he wants. Secretary for 
Development <a href="../dbpub/natarts.asp?p=7491">Paul Chan Mo-po</a>'s family
<a href="http://www.ceo.gov.hk/exco/pdf/sdev_e.pdf" target="_blank">owns</a> a 
flat in HK via <a href="../dbpub/orgdata.asp?p=383005" target="_blank">
Victorwood Development Limited</a> (HK), which they could also sell. Your editor 
owns his flat via an offshore company which paid stamp duty on the property 
purchase. The
<a href="http://www.ceo.gov.hk/exco/eng/interests.html" target="_blank">register 
of interests</a> also shows that several unofficial Executive Council members 
own properties via offshore companies.</p>
<h3>What does &quot;cooling down&quot; mean?</h3>
<p>In Friday's press release, the government conflates transaction volumes with 
prices, leaving us unsure what they are trying to achieve. If by &quot;cooling down&quot; 
they mean reducing transaction volumes, then increases in stamp duty will 
certainly have that effect, although it is hard to see how that benefits anyone. 
But if by &quot;cooling down&quot; they mean reducing mid-prices, or reducing the velocity 
of mid-prices (the rate of change over time), then they will have no effect. 
Capital values of properties are driven by discount factors and expected future 
net rental income. Rents reflect the balance between supply and demand for 
premises, and discount factors reflect expectations of interest rates and 
appetite for risk. None of these is affected by the rate of stamp duty <em>per 
se</em>.</p>
<p>If there is any effect at all, it is only that the measures increase 
the perception that the Government no longer respects the rule of law and Hong 
Kong's free market system, which was supposed to be unchanged for 50 years after 
1997. The expectation of future meddling may itself increase discount rates and 
reduce the attraction of investment in Hong Kong's economy. That uncertainty 
would reduce values, but trashing HK's reputation as a free and open economy is 
an expensive price to pay for manipulating the market.</p>
<h3>Summary</h3>
<p>So let's see if we can reduce this to 5 points that every minister or 
legislator can understand:</p>
<ul>
	<li>Stamp duty is equivalent to a brokerage charged by Government to both 
	sides, at the mid-point between the price excluding and including stamp duty</li>
	<li>Higher stamp duty rates are equivalent to higher brokerage charges on 
	both sides. They are not a &quot;demand-side measure&quot;</li>
	<li>Higher transaction costs reduce transaction volumes and economic 
	flexibility, but don't affect economic values</li>
	<li>Beyond a certain level which we have probably just passed, higher stamp 
	duty rates reduce Government revenues</li>
	<li>Meddling with the economy will damage confidence in Hong Kong.</li>
</ul>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=99">Basic Law</a></li>
				
				<li><a href="/dbpub/subject.asp?c=131">Double Stamp Duty</a></li>
				
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