
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

<script type="text/javascript">document.title="Scrap the public float rule";</script>

	<div class="summary">Investors in SCMP (0583) are in the deep freeze again, and other companies have indulged in artificial schemes to comply with the 25% public float rule. The rule should be scrapped, because as we explain, it has no real purpose, and because the only way to enforce it is to victimize minority shareholders by suspending their shares. The rule does not serve investor interests.</div>

<h2 class="center">Scrap the public float rule<br>
<span class="headlinedate">11 June 2013</span></h2>
<p>Investors in <a href="../dbpub/articles.asp?p=641">SCMP Group Ltd</a> (<strong>SCMP</strong>, 
0583), publisher of the <em>South China Morning Post</em>, must be growing weary 
of the repeated long-term suspension by the Stock Exchange of dealings in their 
shares, after another 3 months in the deep freeze. This is through no fault of 
their own, or even of the company, because this is entirely a matter of the 
Listing Rules and the ownership structure. They are not the only ones to be 
impacted by
<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrules/documents/chapter_8.pdf" target="_blank">
Listing Rule 8.08</a>. In this article we will explain by the rule requiring a 
25% public float should be scrapped, because it has no real purpose, and because 
the only way to enforce it is to victimize minority shareholders by suspending 
their shares from trading.</p>
<h3>Background</h3>
<p>On 13-Dec-2007, the Kuok family's <a href="../dbpub/orgdata.asp?p=681">Kerry 
Media Ltd</a> (<strong>Kerry</strong>) bought 3.20% of SCMP at $2.39 in an 
off-market transaction, raising its stake (including its associates) to 44.85%. 
That was more than the 2% per year &quot;creeper&quot; allowance (for creeps) under the 
Takeover Code, so it resulted in a
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2007/1219/LTN20071219462.pdf" target="_blank">
mandatory general offer</a> at the highest price paid within the previous 6 
months, which was $2.75. The
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2008/0225/LTN20080225221.pdf" target="_blank">
offer closed</a> on 25-Feb-2008 with acceptances and purchases during the offer 
period raising the stake to 74.93%. This was despite the advice from Platinum 
Securities Co Ltd in the
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2008/0124/LTN20080124420.pdf" target="_blank">
response document</a>, advising independent shareholders not to accept the 
offer.</p>
<p>As of 21-Mar-2007, <a href="../dbpub/orgdata.asp?p=143248">Silchester 
Partners Ltd</a> (<strong>Silchester</strong>, UK), an asset manager and 
long-term substantial shareholder, held 14.00%. They did not accept the offer, 
and as they are over 10%, under the Listing Rules they do not count towards the 
public float requirement of 25%. As a result, on 27-Feb-2008, the Stock Exchange
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2008/0227/LTN20080227063.pdf">
suspended</a> the shares on the grounds that the remaining public float was 
below 25%, freezing the minority shareholders. On 6-Mar-2008 SCMP
<a href="http://www.hkexnews.hk/listedco/listconews/sehk/2008/0306/LTN20080306306.pdf" target="_blank">
announced</a> that Silchester held 14.06%, leaving a public float of 11.01%.</p>
<h3>Parking</h3>
<p>A whole year went by, then on 27-Feb-2009, Kerry
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/0302/LTN20090302005.pdf" target="_blank">
agreed</a> with 3 investment banks, JPMorgan Chase Bank, Deutsche Bank and Bank 
of East Asia (<strong>BEA</strong>, 0023), to &quot;sell&quot; 225m shares (14.4%, 
one-third to each bank) at $1.70 (38% discount to market), and the banks had the 
right to sell them back to Kerry on the 4th anniversary at a price which would 
give the banks a return of 1.1% p.a., which we will call a &quot;parking fee&quot;. Kerry 
also had the right to require the banks to exercise the put options at any time, 
so in effect Kerry held a call option at the same price. </p>
<p>The combination of a long put and short call is virtually the same as a 
forward sale, because it is in the interests of one side or the other to 
exercise their option, assuming they have a common view on the value of the 
shares. To make things air-tight, Kerry deposited the proceeds of the &quot;sale&quot; 
with the same 3 banks, as collateral for its future payment under the put 
options. Any dividends reduced the exercise price of the option, allowing Kerry 
to withdraw the same amount from the collateral (less the accrued parking fee). 
In theory, the banks could have sold the shares in the market at above the put 
price (if such a price was available), but then if Kerry called the shares back 
by requiring the banks to exercise the put option, the banks would have to 
repurchase the shares in the market, so that was never likely to happen.</p>
<p>In short, this was an arrangement to park shares with banks for 4 years, in 
order to technically satisfy Listing Rules on the public float without actually 
reducing Kerry's economic interest or increasing the number of shares in 
circulation in the market. It worked. With the blessing of the Stock Exchange to 
this highly contrived arrangement,
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2009/0302/LTN20090302341.pdf" target="_blank">
trading resumed</a> in the afternoon of 2-Mar-2009, with a purported public 
float of 25.12%, including the 14.4% held by the banks.</p>
<p>Apart from the parking fee and expenses, Kerry also paid the banks an 
undisclosed advisory fee. It is worth mentioning at this point that
<a href="../dbpub/positions.asp?p=49">David Li Kwok Po</a>, the Chairman and CEO 
of BEA, has been an INED of SCMP since its IPO in 1990.
<a href="../dbpub/positions.asp?p=672">Kuok Khoon Ean</a>, then Chairman of SCMP 
and son of Kerry's founder <a href="../dbpub/positions.asp?p=668">Robert Kuok 
Hock Nien</a>, has been an INED of BEA since 10-Jan-2008, and fellow Malaysian 
tycoon <a href="../dbpub/positions.asp?p=671">Khoo Kay Peng</a> has been an NED 
of SCMP since 25-Jun-1994 and of BEA since 15-Oct-2001.</p>
<p>Roll the clock forward 4 years, and on 7-Feb-2013, Kerry
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0207/LTN20130207427.pdf" target="_blank">
triggered</a> the options, reducing the official public float back to 10.59%, so 
SCMP warned investors that upon completion on 26-Feb-2013, the stock would again 
be suspended. And
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0226/LTN20130226051.PDF" target="_blank">
so it was</a>. Investors have now spent more than 3 months without access to 
their capital.</p>
<h3>Bonus shares</h3>
<p>There is another way to avoid the free float rule. Create a new class of 
non-voting securities which have all the same economic attributes as the shares 
(as to dividends, capital on liquidation, and so on) but are not listed or 
transferable, and then declare a bonus issue in which shareholders can elect to 
receive either ordinary shares or the new unlisted securities. The majority 
shareholder then accepts the unlisted securities, reducing his percentage of the 
ordinary shares and thereby restoring the free float without making any change 
to the economic value of the free float or to his economic interest in the 
company.</p>
<p>An early example of this was <a href="../dbpub/articles.asp?p=10577">
Sunevision Holdings Ltd</a> (<strong>Sunevision</strong>, 8008). On 9-Sep-2010, 
it
<a href="http://www.hkexnews.hk/listedco/listconews/GEM/2010/0909/GLN20100909017.pdf" target="_blank">
announced</a> a 1:1 bonus issue, with the option of receiving unlisted, 
irredeemable non-transferable convertible notes instead. Sunevision was 84.64% 
owned by <a href="../dbpub/articles.asp?p=417">Sun Hung Kai Properties Ltd</a> (<strong>SHKP</strong>, 
0016) and they needed to increase the float by 30-Jun-2011 when the Listing 
Rules were changed to require a 25% float. By electing to receive the notes, 
SHKP's shareholding was cut to 73.37%, while its economic interest remained at 
84.64%.</p>
<p>A more recent example is <a href="../dbpub/orgdata.asp?p=64906">Top Spring 
International Holdings Ltd</a> (<strong>Top Spring</strong>, 3688). On 
28-Jan-2013, it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0128/LTN20130128097.pdf" target="_blank">
announced</a> that its public float had dropped below 25% and was then 20.64%. 
On 27-Mar-2013 it
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0328/LTN20130328209.pdf" target="_blank">
announced</a> a 2:5 bonus issue of shares with an alternative of unlisted 
perpetual subordinated convertible securities. This would raise the public float 
to 25.14%, assuming nobody but the chairman elected to receive the convertibles. 
His voting interest would drop, but his economic interest would remain the same.</p>
<p>Again, these arrangements satisfy the Listing Rules but make no difference to 
the economic value (or market capitalisation) of the publicly held, tradable 
shares. In that respect, the costs incurred in terms of legal fees, printing and 
advisory fees are a waste of shareholders' money purely to satisfy a Listing 
Rule.</p>
<h3>The float rule lacks a proper purpose</h3>
<p>What is the purpose of the public float rule? If it is to provide some 
minimum value of tradable shares, then it fails, because there are plenty of 
companies whose entire market value is less than the public float of SCMP and 
yet they are not suspended, and because it is easily circumvented with a bonus 
share scheme which does nothing to increase the market value of the public 
shares.</p>
<p>There is full disclosure of insider shareholdings, so investors are 
aware (if they choose to be) what the public float of any company is. 
Furthermore, if a major shareholder in a listed company keeps buying the shares, 
by reducing the float he is making it easier to block an eventual privatisation 
and delisting, because it only takes 10% of the minority shares to veto such a 
deal. So without a free float rule, major shareholders would be unlikely to push 
it that far. </p>
<p>As the SCMP case demonstrates, the float rule is in practice unenforceable, 
because the Listing Rules and the Listing Agreement are a contract binding 
companies, not shareholders. Companies cannot force their shareholders to sell, 
or to buy in privatisation offers. Even the bonus share manoeuvre described 
above requires shareholder approval, which may not be forthcoming. SCMP has
<a href="http://www.hkexnews.hk/listedco/listconews/SEHK/2013/0510/LTN20130510107.pdf" target="_blank">
recently said</a> that Kerry will not support such a move. Perhaps it suits them 
to freeze Silchester and all the other minority shareholders, by refusing to 
support an artificial bonus share scheme which would restore the public float. 
It might make it easier to squeeze them out with another low privatisation 
offer.</p>
<p>If this is a question of voting rights, then from a minority shareholder 
perspective, it makes little difference to the balance of power whether the 
major shareholder owns 70% or 90%. With 75% you can pass a special resolution to 
change the articles of association even if all the other shareholders vote 
against it. Turnouts in shareholder meetings are never 100%, so in practice you 
can absolutely control a company with 70%, and of course you can absolutely 
elect or remove any director with a 50% majority of the votes cast in general 
meetings.&nbsp; </p>
<p>The public float rule places minority shareholders in all companies at 
constant risk of having their shareholdings frozen by the Stock Exchange despite 
the fact that neither they, nor the company, have done anything wrong, but 
purely because of the actions of other shareholders. That risk is obviously 
higher in situations with two substantial shareholders where, for their own 
economic reasons, neither of them wishes to sell.</p>
<h3>Scrap the rule</h3>
<p>The public float rule should be scrapped. Let the market trade. The market 
has full information on what the substantial shareholdings over 5% are (to the 
nearest whole percent) as required by law. Investors can make their own choice 
over whether they want to own shares in a small percentage float, whether it is 
a large company or a small one. Investors should not have to pay, via their 
companies, to execute convoluted bonus share schemes just to comply with the 
Listing Rules, and should not be at risk of having their money frozen in 
suspended shares purely because of the actions of other shareholders. This rule 
is not serving investor interests.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=641">Great Wall Pan Asia Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=681">Kerry Media Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10577">SUNEVISION HOLDINGS LTD.</a></li>
				
				<li><a href="/dbpub/articles.asp?p=64906">Top Spring International Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=671">Khoo, Kay Peng (1938-12-28)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=672">Kuok, Khoon Ean</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=49">Li, David Kwok Po</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=176">Public float</a></li>
				
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