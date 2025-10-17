
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

<script type="text/javascript">document.title="Trust, but Verify";</script>

	<div class="summary">Webb-site.com proposes a solution to reduce the recurrent problem of brokerage failures, while at the same time improving communications with shareholders and retail investor participation in corporate governance, bringing HK up to international standards.</div>

<h2 class="center">Trust, but Verify<br>
<span class="headlinedate">21 July 2006</span></h2>
<p>The recent failure of Tiffit Securities (see our other
<a target="_blank" href="tiffit.asp">story today</a>) is another in a long 
series of brokerage collapses. Sometimes they go quietly, returning stock and 
cash to clients without loss, but often, the failure involves theft or fraud, 
where the broker has succumbed to temptation and abused or stolen client cash 
and/or stock, often in a last ditch attempt to avoid bankruptcy.</p>
<p>Government officials and industry representatives tend to react to these 
failures with a mixture of apathy and denial, rather than seeking lasting 
solutions which will reduce the frequency and scale of client losses. They talk 
about &quot;isolated incidents&quot; and call for &quot;greater self discipline&quot;. Secretary for 
Financial Services Fred Ma Si-hang said on 19-Jul-06 <i>&quot;I think it is time for 
the industry to be more self-disciplined&quot;. </i>So don't expect any action from 
Government. He also said, referring to Tiffit and the collapse in May of Whole 
Win Securities <i>&quot;I do not think the two cases suggest the whole brokerage 
industry has a problem&quot;.</i></p>
<p>In fact, here is a list of failed stock brokerages on which the SFC has 
issued restriction notices since 1996:</p>
<table class="txtable center">
	<tr>
		<td>18-07-2006</td>
		<td>Tiffit Securities (Hong Kong) Limited</td>
	</tr>
	<tr>
		<td>26-05-2006</td>
		<td>Whole Win Securities Limited</td>
	</tr>
	<tr>
		<td>03-04-2003</td>
		<td>Tai Wah Securities Ltd</td>
	</tr>
	<tr>
		<td>05-11-2002</td>
		<td>Pacific Pearl Securities Limited</td>
	</tr>
	<tr>
		<td>07-06-2002</td>
		<td>Lawsons Securities Company</td>
	</tr>
	<tr>
		<td>21-02-2002</td>
		<td>Teil Stock Investment Company</td>
	</tr>
	<tr>
		<td>23-01-2002</td>
		<td>Ying Kit Stock Company</td>
	</tr>
	<tr>
		<td>24-01-2000</td>
		<td>Win Successful Securities Ltd</td>
	</tr>
	<tr>
		<td>25-05-1998</td>
		<td>Chark Fung Securities Company Ltd</td>
	</tr>
	<tr>
		<td>07-05-1998</td>
		<td>Foreluxe Securities Ltd</td>
	</tr>
	<tr>
		<td>19-01-1998</td>
		<td>C.A. Pacific Securities Ltd</td>
	</tr>
	<tr>
		<td>15-10-1996</td>
		<td>C.K. Securities Company</td>
	</tr>
	<tr>
		<td>May-96</td>
		<td>Cheong Woon Securities Company</td>
	</tr>
	<tr>
		<td>Mar-96</td>
		<td>Wei Xin Securities Ltd</td>
	</tr>
</table>
<h3>A proposal</h3>
<p><i>Webb-site.com</i> and its editor David Webb, who is an elected independent 
non-executive director of HKEx and also a member of the SFC's Shareholders 
Group, hereby propose a solution which requires action by both of them. Our 
proposal, explained below, will:</p>
<ul>
	<li>increase transparency over stock movements, thereby increasing investor 
	confidence in small brokers, at minimal cost;</li>
	<li>improve communications between listed companies and their shareholders; 
	and</li>
	<li>facilitate retail investor voting, which will improve the effectiveness 
	of corporate governance rules designed to protect them.</li>
</ul>
<h3>The background</h3>
<p>Most retail brokers act not just as agents for buying and selling stock, but 
also as custodians of the client's assets, including stock and often cash. The 
stock is normally held in a pooled account in the broker's name with the Central 
Clearing and Automated Settlement System (<b>CCASS</b>) operated by Hong Kong 
Securities Clearing Co Ltd (<b>HKSCC</b>), a wholly-owned subsidiary of Hong 
Kong Exchanges and Clearing Ltd (<b>HKEx</b>). HKSCC in turn holds the stock in 
the name of a subsidiary, HKSCC Nominees Ltd, on the register of shareholders of 
each listed company.</p>
<p>The problem with this, from the perspective of the retail investor, is that 
they have no way of knowing when the broker illegally removes the client's 
shares from its pooled account, or pledges them to a bank or money lender. 
Investors also, by default, do not receive annual reports or shareholder 
circulars, because the brokers have no obligation to pass them on, nor are 
brokers obliged to seek voting instructions. Retail investors are out of the 
loop, and this is shown by the very low voting figures (excluding insiders) in 
shareholder meetings, particularly in small companies which often lack 
institutional investment.</p>
<h4>The SSA system</h4>
<p>To reduce the theft risk, in the mid-90s HKSCC came up with the 
snappily-named
<a target="_blank" href="http://www.hkex.com.hk/segacct/acctsvc/state%20leaflet-pdf-eng.pdf">
Stock Segregated Account with Statement Service</a> (<b>SSA</b>), whereby each 
client's shares are held by the broker in a separate, named account, and a 
printed statement is sent to the client each time stock is added or removed from 
the account, as well as a monthly statement. The account remains under the 
broker's control, but there is transparency over its operation. A monthly charge 
of HK$10 per account is charged by HKSCC to the broker, who can either absorb 
it, or pass it on to the client. The client also receives corporate 
communications such as annual reports and circulars directly from registrars.</p>
<p>Unfortunately, as is common with monopolies, HKEx has not innovated the SSA 
service any further since it was first introduced, when the internet was in its 
infancy. Statements are still sent by mail, which is slow and expensive to 
administer. They won't even let you use a P.O. Box, for no obvious reason, which 
means the client has to tell HKSCC where he sleeps at night if he wants the 
service. Although the stock is held in the name of the broker's client, HKSCC 
does not recognise any relationship with the client, and does not accept voting 
instructions from the client.</p>
<h4>The IP account system</h4>
<p>There is also a more advanced service, the
<a target="_blank" href="http://www.hkex.com.hk/invacct/acctsvc_page.htm">
Investor Participant</a> account, which gives investors direct custody in CCASS 
and does allow voting. The IP account is controlled solely by the investor, and 
the broker settles sales and purchases with the investor through the IP account, 
which is linked electronically to the investor's bank account. The broker inputs 
the details of the transaction, and the client must then &quot;affirm&quot; each 
transaction (by phone or internet) by 3.45pm on the second business day after 
the transaction, in order to authorise the settlement with the broker. That 
prevents the broker from stealing client shares or cash, but if an investor 
forgets to affirm a transaction, then it fails to settle.</p>
<p>We recommend the IP service to all serious investors, and use it ourselves, 
but the reality is that most brokers don't promote it, because of the increased 
risk of settlement failure and because they lose custody, so they can't charge 
you fees on dividends, custody fees and scrip fees, and they can't be sure of 
getting the &quot;sell&quot; order - you can use any broker you like when you have custody 
in your IP account. So you are not a captive customer.</p>
<h3>The solution</h3>
<p>We propose the following:</p>
<ol>
	<li>HKEx should revamp the SSA system to allow all communications, including 
	transaction statements and links to on-line issuer documents, to be sent to 
	account holders by e-mail. This will give them instant notice when stock is 
	moved in or out of their accounts by their broker, or when a shareholder 
	meeting is being called.</li>
	<li>HKEx should also allow SSA holders to log in and view their stock 
	balances on the web and by phone.</li>
	<li>HKEx should allow SSA holders to give voting instructions through the 
	same web and phone system. To avoid conflicting instructions, brokers should 
	not be permitted to vote shares in SSA accounts. By connecting CCASS 
	directly with investors, this will greatly increase retail investor voting, 
	improving the real effect of corporate governance rules designed to protect 
	investors, which are ineffective if they don't vote, for example, on 
	connected transactions.</li>
	<li>Due to lower costs, the electronic SSA system should be made available 
	by HKEx for free, but the existing charge of HK$10 per month (or perhaps 
	more) should be levied for those who want the printed, mailed service. This 
	will incentivise use of low-cost electronic communications. HKEx will 
	recover the cost through increased retail participation in the market, which 
	generates fees itself.</li>
	<li>Brokers would continue to control the SSA accounts and handle anything 
	involving cash, including transaction settlement and rights issue and 
	warrant subscriptions. The SSA system should allow authorised re-pledging, 
	by indicating a &quot;P&quot; on the statements. This will make it clear to investors 
	whether or not their stock has been pledged by a broker to finance its 
	business. If no such flag is attached, then in the event of a brokerage 
	failure, no re-pledging of that stock will be recognised by HKSCC.</li>
	<li>Finally, and most importantly, the SFC should require that all client 
	assets of retail banks and brokerages be held in SSA accounts. That is, 
	every retail investor who wishes to leave stock in the custody of a bank or 
	broker shall be required to have an SSA account and give either an e-mail 
	address or, if they want printed statements, a postal address. Investors may 
	instead take direct custody through the existing IP account service which 
	will remain available.</li>
</ol>
<p>We believe that the requirement for SSAs should also apply to retail banks, 
because although they have a much lower failure rate, it is just as important 
that we should start getting communications from listed companies through to 
bank clients and to receive voting instructions in the opposite direction. It 
would actually reduce the banks' workload by taking them out of the voting loop.</p>
<p>We realise that our reform proposal would cause the creation of about one 
million SSA accounts, but it would greatly increase transparency and restore 
confidence in small brokers. They should be in favour of it for this reason 
alone. Hong Kong is not going to reduce the brokerage failure rate simply by 
calling for self-discipline - there will always be temptations to steal or 
re-pledge stock without authorisation, but if all clients receive real-time 
statements, then the alarm bells will ring sooner, and that will be a deterrent 
in itself.</p>
<p>Much of the infrastructure is already available - the IP system, which 
currently has over 10,000 users, has both web and phone access and already 
processes voting information from issuers and collates voting instructions from 
investors. The electronic SSA system would be similar, but with a reduced and 
simpler set of services which leave formal custody and settlement with the 
broker and avoid the need for client affirmations of transactions. It is a 
&quot;trust but verify&quot; system.</p>
<h3>Next step</h3>
<p>The proposal, if implemented, will bring HK up to international standards of 
investor communication, while having regard to the specific structure of HK's 
retail investor industry.</p>
<p>Your editor will take this proposal to the HKEx Board as a director, and to 
the SFC as a member of its Shareholders Group. We also welcome
<a href="/contact/">comments</a> from industry participants.</p>
<p><em>&copy; Webb-site.com, 2006</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=105">Broker regulation</a></li>
				
				<li><a href="/dbpub/subject.asp?c=108">CCASS</a></li>
				
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