
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

<script type="text/javascript">document.title="HKEx voting recommendations";</script>

	<div class="summary">At last year's AGM, Webb-site.com editor David Webb was elected to the board of HKEx on a shareholder nomination, a first for a HK-listed company, we think. Now we give you our voting recommendations for the 2004 AGM, and the reasons.</div>

<h2 class="center">HKEx voting recommendations<br>
<span class="headlinedate">14 March 2004</span></h2>
  <table class="txtable">
    <tr>
      <td>Company:</td>
      <td>Hong Kong Exchanges and Clearing Limited (<b>HKEx</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0388</td>
    </tr>
    <tr>
      <td><b>Date of meeting:</b></td>
      <td><b>31-Mar-04</b></td>
    </tr>
    <tr>
      <td>Time of meeting:</td>
      <td>16:30</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>14-Mar-04</td>
    </tr>
    <tr>
      <td>Notice of Meeting:</td>
      <td><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040305/00388/EWF114.pdf">Click here</a></td>
    </tr>
    <tr>
      <td>Shareholder circular</td>
      <td><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040305/LTN20040305059.pdf">Click here</a></td>
    </tr>
    <tr>
      <td>Proxy form</td>
      <td>
      <a target="_blank" href="http://www.hkex.com.hk/exchange/orglist/Proxy(e).pdf">
      Click here</a></td>
    </tr>
    <tr>
      <td>Voting method:</td>
      <td>HKEx has stated that the Chairman intends to 
      demand a poll on each resolution. If he doesn't, we will!</td>
    </tr>
    <tr>
      <td>How to vote:</td>
      <td>See our <a target="_blank" href="../pages/howtovote.asp">voting guide</a></td>
    </tr>
  </table>

<p><b>Note to journalists:<br>
We have up to 5 proxy seats available inside this AGM. Please
<a target="_blank" href="../contact">contact
us</a> if you want a seat.</b> </p>

  <table class="txtable">
    <tr>
      <td><i><b>Item</b></i></td>
      <td><i><b>Description</b></i></td>
      <td><i><b>Vote</b></i></td>
    </tr>
    <tr>
      <td>1</td>
      <td>Adopt the accounts</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>2</td>
      <td>Declare a final dividend</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>3</td>
      <td>Declare a Special Dividend (<a href="#dividend">see notes</a>)</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>4.1</td>
      <td>Elect John Estmond Strickland (<a href="#directors">see notes</a>)</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>4.2</td>
      <td>Elect Wong Sai Hung, Oscar (<a href="#directors">see notes</a>)</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>5</td>
      <td>Re-appoint PriceWaterhouseCoopers as Auditors</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>6.1</td>
      <td>Mandate to issue additional shares (<a href="#mandate">see notes</a>)</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>6.2</td>
      <td>Mandate to repurchase shares on-market</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>6.3</td>
      <td>Extend the mandate granted pursuant to item 6.1</td>
      <td><b>AGAINST</b></td>
    </tr>
    <tr>
      <td>6.4</td>
      <td>Approve the payment of remuneration to the non-executive directors</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>6.5</td>
      <td>Adjust the terms of share options due to the special dividend</td>
      <td>FOR</td>
    </tr>
    <tr>
      <td>6.6</td>
      <td>Amend the articles of association (<a href="#articles">see notes</a>)</td>
      <td>FOR</td>
    </tr>
  </table>

<h3>Reasons for recommendations</h3>

<p>This is probably another first for a HK-listed company - an independent 
director actually telling you directly what he thinks about the board's 
proposals.</p>

<h4 id="dividend">Item 3 - Special Dividend - the background</h4>

<p>HKEx has proposed a special dividend of $1.68 
per share, in addition to the final dividend of $0.42 per share. We recommend 
you to vote in favour of this. However, we believe that, having regard to its 
foreseeable cash requirements, and having regard to the need to maintain 
prudential reserves due to the special role of HKEx as operator of the clearing 
systems, it would have been possible to pay more. After the final dividend and 
special dividend totalling about $2.2bn ($2.10 per share), HKEx will still have 
about HK$2.8bn of cash and trading securities in its corporate account, outside 
of the clearing house funds, and no borrowings other than HKD50m in the form of 
a Singapore dollar loan to finance its 1% stake in SGX.</p>

<p>The board of HKEx has an &quot;Investment Advisory Committee&quot; whose job it is to 
advise the board on investment policy and oversee the investment of the 
corporate funds. Three external fund managers manage part of these funds, 
including all the equity positions (other than the stake in SGX), to avoid HKEx, 
as a market operator, picking equities itself. Your editor is a member of that 
committee.</p>

<p>The dilemma that HKEx faces is that it is not an investment company, and does 
not behave like one. It does not publish a monthly net asset value or give 
regular disclosure of its portfolio. Analysts and fund managers who follow HKEx 
probably find it quite easy, on a daily basis, to estimate the year-to-date core 
earnings of HKEx, which are highly correlated with stock market and derivatives 
market turnover, but find it much harder to estimate the investment income, 
which depends on the portfolio and strategies adopted by the managers of the 
funds from time to time (although you will find a snapshot analysis in the 
annual report).</p>

<p>As an investor ourselves, we believe that companies in which we invest should 
not retain cash beyond their foreseeable requirements, because we would rather 
invest it ourselves than have investee companies do it for us, unless asset 
management is their core business. We also do not think that there is a 
&quot;goldilocks&quot; amount of risk (not too little, not too much) that should be taken 
with the spare cash - instead, we advocate taking as near-zero risk as possible, 
so that investors in HKEx will at least have greater certainty of the outcome, 
and if they wish, they can neutralise the effect of the cash by borrowing the 
corresponding amount against their position. However, as you can infer from the 
results, your editor is in a boardroom minority on this, and the majority view 
is currently that some risk is good, which is reflected in the portfolio.</p>

<p>The biggest variable in determining how much money to retain in corporate 
funds is one which anyone who invests in HKEx should think hard about. In the 
event of a severe market crisis (for example, if Beijing nuked Taipei), then a 
large proportion of investors could default on their settlement and margin 
obligations, and then the existing reserves held within the clearing house funds 
of $1.55bn could be exhausted. At that point, it is likely that the Government, 
which, you recall, effectively appoints half of the HKEx board, would lean on 
the company to pony up the money to prevent the system locking up and trades 
failing. From a commercial perspective, HKEx would also have an incentive not to 
allow the clearing companies to become insolvent, as this would destroy a key 
part of the business and leave HKEx as just an exchange without clearing and 
settlement businesses, as these would likely then be taken over by whoever bails 
them out (probably the government or the banks who are most exposed to 
defaulting brokers).</p>

<p>So HKEx would likely inject as much money into the clearing companies as it 
could to bail them out. However, one must remember that given its monopoly 
position, HKEx also has substantial borrowing capacity against the cash flow 
generated by its franchise, so while we think it is appropriate to budget for a 
rainy day and a typhoon day, we do not think it is necessary to budget for 
Noah's flood. In the 1987 market crash, when the Hong Kong Futures Exchange 
suffered widespread defaults, a $2bn &quot;<a target="_blank" href="http://www.legco.gov.hk/yr97-98/english/panels/fa/papers/fa1711-5.htm">lifeboat 
fund</a>&quot; (a lot of money in those days) was established by a group of lenders 
to bail out the market, and the Government then imposed a levy on the stock and 
futures markets to pay it back over time. </p>

<p>Remember that when things go wrong, those with the deepest pockets will feel 
hands inside them. When retail brokerage C.A. Pacific went bust in 1998, leaving 
over 5,000 clients in the lurch, the Stock Exchange ended up paying a total of 
$300m towards investor compensation.</p>

<h4 id="directors">Items 4.1 and 4.2 - Directors</h4>

<p>The Board of HKEx comprises 13 directors, of whom 6 can be elected by 
shareholders, 6 are appointed by Government, and the remaining director is the 
CEO, who is appointed by the Board subject to the approval of the SFC. The 
Chairman of HKEx is elected by the Board, subject to approval by the Chief 
Executive of Hong Kong.</p>

<p>At the <a target="_blank" href="HKExAGM2003results.asp">2003 AGM</a>, 
shareholders elected 5 directors, including <i>Webb-site.com</i> editor David 
Webb. That left a vacancy. The Government waited until moments after the AGM to
<a target="_blank" href="http://www.info.gov.hk/gia/general/200304/15/0415242.htm">
announce</a> that it would not re-appoint John Strickland as a 
government-appointed director, and then the next day, at the first board 
meeting, he was appointed to fill the vacancy left by shareholders. This, in effect, gave the 
Government 7 seats on the board. At that board meeting, your editor objected to 
his appointment and proposed another candidate, because although Mr Strickland 
was an excellent candidate, we felt the Government had been underhand in the way 
it had removed him as one of the Government-appointed directors in the 
near-certainty that he would be reappointed to fill the shareholder vacancy the 
next day.</p>

<p>However, Mr Strickland (as he was not elected) must now stand for election by 
shareholders, as he should have done last year, and we have no hesitancy in 
recommending that you vote in favour. He does a professional and thorough job 
Chairing the audit committee (on which your editor also sits).</p>

<p>Of the remaining 5 directors, one third (rounded down) had to run for 
re-election by rotation. Since we were all elected at the same time, that meant 
one of us had to be chosen by random draw. Oscar Wong Sai Hung, who besides your 
editor is the only other investor-based representative on the board, drew that 
card, and is running again. He is CEO of
<a target="_blank" href="http://www.boci-pru.com.hk/">BOCI-Prudential Asset Management Ltd</a>, a joint venture between Bank of China 
and Prudential plc of the UK. We understand that Prudential owns just under 5% 
of HKEx.</p>

<p>In our view, Mr Wong has not been as much of an advocate for investor 
interests as we would have liked, often remaining silent where an extra voice or 
vote in the boardroom would have been helpful to investor interests. However, if 
he is not re-elected, then investors run the risk of being reduced to a 
single representative on the board, and the risk that the board, which is 
dominated by brokers, bankers and advisers to, or directors of, other listed 
companies, would fill the vacancy with one of their own. So in the absence of 
any other investor-based candidate, we recommend that you vote in favour of Mr 
Wong's re-election, and at the same time urge him to speak up for investor 
interests in his new term.</p>

<p>The above recommendations are subject to change if any other candidates come 
forward by the deadline of 7 days prior to the AGM, turning it into a contested 
election. If any candidates come forward, then we will review our advice and urge at the AGM (as we 
did last year, see
<a target="_blank" href="http://www.hkex.com.hk/exchange/orglist/2003agm.pdf">
minutes</a>) that the meeting be adjourned to allow at least 14 days for 
shareholders to cast their votes. Last year was something of a fiasco when 2 
last-minute candidates came forward, the Chairman refused to adjourn the 
meeting, and the new candidates received some 150-200 million fewer votes (for 
and against combined) than the other candidates, indicating that shareholders 
had not had sufficient time to react. As it turned out, under the net vote 
system, neither of the last-minute candidates was elected.</p>

<h4>Government opacity</h4>

<p>3 of the 6 incumbent government appointees, Charles Lee, Tim Freshwater and 
K.S. Lo, were only appointed for one year terms which expire at the AGM. One of 
the principles of good governance is full disclosure, giving investors all the 
relevant information on which to make a decision. In this regard, we reprimand 
the Government for failing to state who they are going to appoint or re-appoint 
to the Board, to work with the elected directors. As shareholders are being 
asked to elect two directors, one factor in their voting decision may be who 
these directors will have to work with, so investors should be told without 
further delay. It is shabby behaviour for the Government to leave it until the 
last minute as they did last year.</p>

<h4 id="mandate">Items 6.1 and 6.3 - General Mandate</h4>

<p><i>Webb-site.com</i> urges all investors to vote against the general mandate
for all listed companies, for the reasons explained in our article <a href="vampire1.asp" target="_blank">Project
Vampire</a> (<b>V</b>ote <b>A</b>gainst <b>M</b>andate for <b>P</b>lacings, <b>I</b>ssues 
by <b>R</b>ights <b>E</b>xcepted), unless a company complies with the 
recommendations in that article.</p>

<p>What you are being asked to do is give up 
your rights, known as pre-emptive rights, to be offered new shares if the board 
chooses to issue them for cash. The mandate would allow the board of HKEx to issue new shares for cash, up to 
a maximum of 20% of the existing shares, without offering them to existing 
shareholders first, and at discounts of up to 20% (this limit is introduced 
under new Listing Rules from 31-Mar-04). </p>

<p>When the agenda for this year's AGM was discussed by the board, your editor 
urged his fellow directors to set a good example to the market by rising above 
the minimum standards set out in HKEx's own Listing Rules, and restricting the issue 
mandate in line with international best practice (which in this case, is the 
UK), as recommended by Project Vampire. Indeed, on 30-Jan-04, when HKEx 
announced the latest&nbsp; Listing Rules amendments, it
<a target="_blank" href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2004/documents/0401304news.pdf">
said</a>, in relation to further possible changes to those rules (paragraph 37):</p>

<blockquote>
<p>&quot;we will consider lowering the maximum number of securities 
that are allowed to be issued under the general mandate to bring our 
requirements closer to those of the United Kingdom.&quot;</p>
</blockquote>

<p>Unfortunately, HKEx is saying one thing but doing another. It is a great pity that HKEx is not willing to lead by example, or rather, to 
build on the example set by <a target="_blank" href="vampire2.asp">some other listed companies</a> 
in 2003 which adopted Vampire-compliant mandates. A majority of investor votes 
in 10 members of the Hang Seng Index last year (excluding directors and 
controlling shareholders) were against the general mandate. Two other index 
members complied - HSBC because it has to, being UK-listed, and Johnson Electric 
voluntarily.</p>

<p>If the board of HKEx thinks that the 20% general mandate is OK, then are the 
staff of its Listing Division ever likely to propose to the Listing Committee 
that this rule be tightened? This example again demonstrates that HKEx, as a 
listed company, has a conflict of interest in making Listing Rules on corporate 
governance and should be relieved of this role. Meanwhile, please vote AGAINST 
the mandate.</p>

<h4 id="articles">Item 6.6 - Articles of association</h4>

<p>In Feb-03, <i>Webb-site.com</i> launched
<a target="_blank" href="projectpoll1.asp">Project Poll</a>, in which we aim to 
abolish the show of hands system in shareholder voting, in favour of a 
1-share-1-vote poll. The show of hands system has no place in a fair and 
transparent market, because:</p>

<ul>
  <li>Only shareholders who attend the meeting have a vote</li>
  <li>Each holder has only one vote, regardless of whether they hold 1 share or 
  10 million shares</li>
  <li>Proxies cannot vote</li>
  <li>The actual levels of support or objection to resolutions are not recorded</li>
  <li>Chairpersons, often with a vested interest in the outcome, almost never 
  call a poll.</li>
</ul>

<p>So a year ago, we bought 10 shares in each of the then Hang Seng Index 
members and, of course, 10 shares of HKEx, split them into 5 registered 
holdings, and successfully required all of these companies to poll their votes, 
except for the AGM of HSBC (but we got an EGM done). </p>

<p>For the first time, HKEx has stated, in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040305/00388/EWF111.pdf">
Corporate Governance</a> section of its annual report:</p>

<blockquote>
  <p>&quot;For the sake of good corporate governance practice, the 
  Chairman intends to demand poll voting at future general meetings for all 
  resolutions set out in the relevant notice of meeting so as to allow 
  shareholders to have one vote for every share held.&quot;</p>
</blockquote>

<p>Now that is a good thing, but as readers will know, <i>Webb-site.com </i>
could require a poll anyway, so cynical readers might think that HKEx is making 
a virtue out of necessity.</p>

<p>Sadly, they are right. At the board meeting to consider the AGM agenda, your 
editor put it to the board, that if HKEx now believes that poll voting is <i>
&quot;good corporate governance practice&quot;</i>, and that the Chairman would require it 
for all resolutions at future general meetings, then why don't we just go the 
whole hog and delete the show of hands system from our articles, making poll 
voting automatic? Then the sword of Damocles hanging over shareholder democracy 
would be removed, once and for all. Investors would no longer have to rely on 
the Chairman's intent, or the actions of <i>Webb-site.com</i>, to get their 
votes counted on a poll. We said that if the board was really committed to poll 
voting, then it would put this in the proposed amendment of the articles and let 
shareholders decide.</p>

<p>As you will see on page 18 of the AGM
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040305/LTN20040305059.pdf">
circular</a>, the amendments to the articles do not include our proposal, and 
the show of hands system remains in the articles as the default voting system at 
shareholder meetings. It's one more example of form over substance at HKEx, 
saying one thing but doing another. We 
lost that battle, as we have so many others within the boardroom.</p>

<p>Nevertheless, although we do not agree with all the proposed amendments to 
the articles of association, many of them are necessary due to changes in the 
Listing Rules, so as this is an all-or-nothing proposal, we recommend that you 
vote in favour. We'll take what we can get.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
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