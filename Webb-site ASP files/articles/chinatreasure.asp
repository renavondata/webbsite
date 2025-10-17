
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

<script type="text/javascript">document.title="China Treasure's Love for Yanion";</script>

	<div class="summary">Yesterday we told you how Yanion had blown over $400m on a series of questionable acquisitions from "independent third parties". Now we'll show you how China Treasure Greater China Investments, floated last year and with no disclosed links to Yanion, has thrown 58% of its net assets into shares of Yanion and two of its subsidiaries, without any announcements or shareholder approvals.</div>

<h2 class="center">China Treasure's Love for Yanion<br>
<span class="headlinedate">24 June 2003</span></h2>
<p>China Treasure (Greater China) Investments Ltd (<b>CTGCI</b>, 0810) is what 
is known as a &quot;Chapter 21 Investment Company&quot; - a special type of listed company 
allowed under the
<a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/CH21.doc">Chapter 21</a> of the Listing Rules to be listed with absolutely no track record, 
compared with the normal 3 year track record requirement for main board listings. 
You cannot tell from the Stock Exchange trading screen that shares of Chapter 21 
companies are different from any other main board listing - there is no special 
stock code for such companies, you are just supposed to know which ones they 
are. Go figure. At least on the GEM the stock codes all have an &quot;8&quot; on the 
front.</p>

<p>Amongst other restrictions, Chapter 21 companies are not permitted to invest more 
than 20% of their net assets in <i>&quot;investments issued by any one company or 
body&quot;</i> at the time of investment, and may not own 30% or more of another 
company or take management control of such companies.</p>

<p>The
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020219/LTN20020219000.htm">
prospectus</a> of CTGCI was published on 19-Feb-02 and it was listed on 
28-Feb-02. 100m shares were issued to the public at HK$1.00 each, 70% by placing 
and 30% by public offer, raising $100m gross and $93m net of expenses. Prior to 
the IPO, an initial 3m shares had been issued at the same price. As a result, 
CTGCI had pro forma net assets at IPO of <b>$96m</b>, or $0.93 per share.</p>

<p>The Listing Rules for Chapter 21 companies require disclosure of individual 
investments in the annual report, including any investment that represents 5% or 
more of net assets and at least the 10 largest investments.</p>

<div class="regbox">
  Regulatory note: this listing rule is grossly inadequate, because shareholders only find out once a year, up to 4 
months after the year end, what investments their company owns. In the case of 
  CTGCI, it was not until the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030415/LTN20030415126.pdf">
results</a> were published on 15-Apr-03, 14 months after the IPO, that 
shareholders found out where their money had been invested.</div>

<h3>What they bought</h3>

<p>It turned out that CTGCI had invested <b>$18.89m</b> in 4.91% of 
<a target="_blank" href="../dbpub/articles.asp?p=3771">Yanion 
International Holdings Ltd</a> (<b>Yanion</b>, 0082), which was the subject of
<a target="_blank" href="yaniononion.asp">yesterday's article</a> on <i>
Webb-site.com</i>. That 
represents <b>19.68%</b> of CTGCI's pro forma net assets at IPO. The shares were all acquired 
by 30-Jun-02, as the same figure (but not the identity) shows up in the skimpy
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020905/LTN20020905059.htm">
interim report</a>. </p>

<p>In addition, CTGCI had invested <b>$18.57m</b> in 13% of unlisted Korning 
Investments Ltd (<b>Korning</b>), which in turn owns 60% of a &quot;newly established 
Pharmaceutical Joint Venture&quot; in Beijing. The investment 
represents <b>19.34%</b> of pro forma net assets at IPO.</p>

<p>The only other unlisted investment was <b>$18.00m</b> in 19% of Modern Vocal Limited (<b>Modern 
Vocal</b>), which in turn owns 90% of a Sino-foreign joint venture in the PRC to 
&quot;develop, manufacture and distribute internet telephone units and value-stored 
calling cards in the PRC&quot;. That investment represents <b>18.75%</b> of pro forma net 
assets at IPO.</p>

<p>It may not have escaped your notice that these 3 investments are each just 
under the 20% limit in the Listing Rules for individual investments by Chapter 
21 companies such as CTGCI. For normal listed companies, any transaction over 
15% of net assets would be a &quot;Discloseable Transaction&quot; requiring an 
announcement and a circular to shareholders. Unfortunately, Listing Rule 21.13 for  Investment Companies 
contains an exemption from the rules on 
Discloseable Transactions, so this means that no investment will ever need to be 
disclosed except in the annual report.</p>

<div class="regbox">
  Regulatory note: <i>Webb-site.com </i>considers this exemption is wrong and 
  should be abolished. Why should investment companies with no track record be 
  subject to even lower disclosure standards than regular listed companies?</div>

<h3>The Yanion connection</h3>

<p>Now if you read <a target="_blank" href="yaniononion.asp">yesterday's story</a> 
on Yanion, then you will know that Yanion owns the remaining 87% of Korning and&nbsp; 60% of Modern Vocal, so 
they are both subsidiaries of Yanion. So now you can see that CTGCI has invested a total of $55.46m, or 57.8% of 
its pro forma net assets at IPO, in shares of Yanion or its subsidiaries:</p>

  <table class="numtable center">
    <tr>
      <td class="left"><i>Investment</i></td>
      <td><i>Stake</i></td>
      <td><i>Cost</i></td>
      <td><i>Share of net assets</i></td>
    </tr>
    <tr>
      <td class="left">Yanion</td>
      <td>4.91%</td>
      <td>$18.89m</td>
      <td>19.68%</td>
    </tr>
    <tr>
      <td class="left">Korning</td>
      <td>13%</td>
      <td>$18.57m</td>
      <td>19.34%</td>
    </tr>
    <tr>
      <td class="left">Modern Vocal</td>
      <td>19%</td>
      <td>$18.00m</td>
      <td>18.75%</td>
    </tr>
    <tr>
      <td class="left">Total</td>
      <td>&nbsp;</td>
      <td>$55.46m</td>
      <td><b>57.77%</b></td>
    </tr>
  </table>

<p>Of course, nowhere in the CTGCI annual report does it mention that Yanion is the 
other shareholder of Korning and Modern Vocal. Nor does the report identify the 
vendor(s) of the stakes in Korning and Modern Vocal.</p>

<p>Now let's take a look at those prices. The acquisition of 13% of Korning 
values the company at HK$142.8m. But Yanion &quot;only&quot; paid $99.84m for 87% of 
Korning, so this implied a valuation of $114.8m. So for a minority stake in 
Korning, CTGCI paid <b>24% more</b> per share than Yanion paid for a majority 
stake. Maybe part of the difference represents capital injected into Korning.</p>

<p>As for Modern Vocal, CTGCI's purchase of 40% implies a valuation of $94.74m on the 
company, while Yanion paid $13.5m for 60%, implying a valuation of $22.5m. So 
for a minority stake in Modern Vocal, CTGCI paid <b>321% more</b> per share than 
Yanion paid for a majority stake.</p>

<p>Doesn't that seem odd to you? Is it a complete coincidence that the price of 
each minority stake just happens to be close to the investment limit for CTGCI 
of 20% of net assets?</p>

<h3>Investment Managers</h3>

<p>The interim investment manager of CTGCI was
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Details.jsp?charset=ISO8859_1&ceref=AEB630&applNo=0001">AsiaVest Investment Advisory Ltd</a> 
(<b>AsiaVest</b>), 
owned by
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Indi_Details.jsp?charset=ISO8859_1&ceref=ABR572&applNo=0002">Andrew Nan Sherrill</a> 
(<b>Mr Sherrill</b>), who
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030404/LTN20030404100.pdf">
resigned</a> as an executive director of CTGCI on 4-Apr-03. The reason that 
CTGCI had an &quot;interim&quot; investment manager was that the intended manager,
<a target="_blank" href="http://www.sfc.hk/sfcprd/eng/pr/html/Corp_Details.jsp?charset=ISO8859_1&ceref=AHO676&applNo=0001">China Core Capital Management Ltd</a> (<b>China Core</b>), was not yet licensed 
by the SFC at the time of the IPO. China Core took over from AsiaVest as manager 
of CTGCI on 1-Jan-03, having obtained its license on 20-Nov-02.</p>

<p>CTGCI has two independent non-executive directors. One, Mr Charles Chan Wai-dune 
(<b>Mr Charles Chan</b>), 
was also an INED of Yanion from&nbsp; 29-Nov-00 to 4-Jun-01, and as we explained 
yesterday, his firm, <a target="_blank" href="http://www.ccifcpa.com.hk">Charles Chan, Ip 
&amp; Fung CPA Ltd</a> (<b>CCIF</b>) claims a <a target="_blank" href="http://www.ccifcpa.com.hk/local.htm">
local connection</a> with WorldVest Holdings Ltd (<b>WorldVest</b>), of which Mr 
John Kao Ying-lun (<b>Mr Kao</b>) is a Director and founding partner, while Mr 
Kao is also an executive director of Yanion. Three other directors of Yanion are 
directors of WorldVest Capital Ltd.</p>

<p>China Core is owned as to 37.5% by Mr Brian Chen Wen-Suei (<b>Mr Chen</b>), 
37.5% by Robert Ma Kam Fook, who is a director of both China Core and CTGCI, and 
25% by Michael Chan Yan Ming, who is Managing Director of CTGCI.</p>

<p>The other director of China Core is Mr Gary Ma Ming Fai. He is also Chairman 
and largest shareholder of GEM-listed Xteam Software International Ltd (<b>Xteam</b>, 
8178). And guess what - one of the independent non-executive directors of Xteam 
is Mr Cheng Shu Wing, who is a director of WorldVest Capital Ltd and an 
executive director of Yanion. What a small world!</p>

<h3>Mr Chen Again</h3>

<p>Wait a minute, doesn't Mr Chen's name seem familiar? As you may recall from yesterday's article, 
he was the &quot;independent third party&quot; who sold 87% of Korning to Yanion for US$12.8m (<b>HK$99.84m</b>), when Korning 
had no assets besides an agreement to enter into a pharmaceutical joint venture. 
He was presumably also the independent third party who sold the other 13% of 
Korning to CTGCI.</p>

<p>As Mr Chen owns more than 10% of China Core, that makes him a connected 
person of China Core, which became the investment manager of CTGCI on 1-Jan-03, 
and hence he is now a connected person of CTGCI under
<a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/CH21.doc">
Listing Rule 21.13</a>.</p>

<p>However, as China Core 
didn't formally take over management of CTGCI from AsiaVest until 1-Jan-03, Mr 
Chen was not connected to CTGCI at the time of the acquisition of the Korning 
stake.</p>

<p>Adding the $18.57m cost of CTGCI's stake in Korning, and assuming none of 
that was for new shares, it appears that Mr Chen received a total of <b>$118.4m</b> 
for selling 100% of Korning to the two listed companies.</p>

<h3>Other holdings</h3>

<p>OK, so about 58% of CTGCI's net assets have been sunk into the Yanion group. 
Now what else did they buy? Well, only two debt securities. They invested $13.5m 
in a 4% convertible loan note in a company called Info Quality Development Ltd
<i>&quot;principally engaged in design, advertising and promotion business in PRC&quot;</i>, 
convertible into 30% of the equity and maturing 31-Dec-04. </p>

<p>The other investment was $15.60m in something called the Maximus Global 
Strategy Fund which is <i>&quot;a short term high yield income fund administered by
<a target="_blank" href="http://www.commerzbank.com/privatk/int_priv_banking/trust_services/">
Commerzbank International Trust (Singapore) Ltd</a>&quot;. </i>There was no mention 
of who manages this fund (normally the administrator just handles redemptions, 
subscriptions, valuation and so on), and we can find no reference to it on the 
web.</p>

<h3>CTGCI may be diluted in Korning</h3>

<p>It's not mentioned in CTGCI's annual report, but in Yanion's annual report, 
note 35(b) states:</p>

<blockquote>
  <p>&quot;On 20 November 2002, the Group advanced HK$10,853,000 to 
  Korning...to meet its capital contribution obligation to its indirect 
  subsidiary... Huayi. The minority shareholder of Korning, an investment company 
  not connected with the members of the Group and its directors, did not 
  choose...to make their share of capital contribution at the time. The Group 
  considers that, under the terms of the Korning shareholders' agreement, it has 
  the right to subscribe for an additional 6.55% of the shares in Korning as a 
  result of the above contribution and has requested for Korning's shareholder 
  approval. However, the minority shareholder of Korning is of the view that its 
  legal obligation to contribute funds to Huayi has yet to expire as the 
  deadline for capital contribution has been extended...As at the date of this 
  report, the applicable provisions of the shareholders agreement were being 
  reviewed by the parties and their respective professional advisers. Decision 
  for approving the issue of any additional shares by Korning to the Group was 
  pending.&quot;</p>
</blockquote>

<p>Of course, the problem is that at 31-Dec-02, CTGCI's investment in Korning 
already represented 20.8% of CTGCI's net assets, so under the Listing Rules, 
CTGCI cannot invest any more money in this single investment unless its net 
assets go up. In our view, even if the investment in Korning made sense, it was 
reckless of CTGCI to invest so close to its 20% ceiling in Korning while it knew 
that based on its current capital base it would not be able to keep up with 
capital commitments to Korning and would be diluted unless it could raise 
additional funds or grow its net assets in time.</p>

<h3>Sponsor and lawyers</h3>

<p>Guess who sponsored CTGCI? Dao Heng Securities Ltd,  which was also 
the placing agent for all six placings by Yanion in 2000-2002 and is listed as 
Yanion's financial adviser in its annual report.</p>

<p>The legal advisers to the sponsor and underwriters of CTGCI were
<a target="_blank" href="http://www.siaowenleung.com/">Siao, Wen and Leung</a>, 
who are also the legal advisers to Yanion listed in its 2002 annual report.</p>

<h3>Shareholders </h3>

<p>On 1-Apr-03, when the disclosure threshold in HK was lowered from 10% to 5%, 
it was rather like the tide going out, as the following
<a target="_blank" href="http://di.hkex.com.hk/di/NSAllSSList.aspx?sa2=as&sid=10159200&sd=01/04/2003&ed=01/04/2003&sa1=cl&scsd=01/04/2003&sced=24/06/2003&sc=810&src=MAIN&lang=EN">
holdings</a> in CTGCI were revealed below the old threshold:</p>

  <table  class="numtable center">
    <tr>
      <td class="left"><i>Name of shareholder</i></td>
      <td><i>Shares</i></td>
      <td><i>Stake</i></td>
    </tr>
    <tr>
      <td class="left">Big Draw Ltd (BVI)</td>
      <td>10,000,000</td>
      <td>9.71%</td>
    </tr>
    <tr>
      <td class="left">First Deals Trading Ltd (BVI)</td>
      <td>10,000,000</td>
      <td>9.71%</td>
    </tr>
    <tr>
      <td class="left">First Pink Ltd (BVI)</td>
      <td>10,000,000</td>
      <td>9.71%</td>
    </tr>
    <tr>
      <td class="left">First Win Trading Ltd (BVI)</td>
      <td>10,000,000</td>
      <td>9.71%</td>
    </tr>
    <tr>
      <td class="left">I-Deluxe Assets Ltd (BVI)</td>
      <td>10,000,000</td>
      <td>9.71%</td>
    </tr>
    <tr>
      <td class="left">Ma Kai Chiu</td>
      <td>8,000,000</td>
      <td>7.77%</td>
    </tr>
    <tr>
      <td class="left">B &amp; D Investments Ltd</td>
      <td>5,384,000</td>
      <td>5.23%</td>
    </tr>
    <tr>
      <td class="left">Joel Lazare Hohman (director)</td>
      <td>2,900,000</td>
      <td>2.82%</td>
    </tr>
    <tr>
      <td class="left">Michael Chan Yan Ming (director)</td>
      <td>100,000</td>
      <td>0.10%</td>
    </tr>
    <tr>
      <td class="left">Total</td>
      <td>63,384,000</td>
      <td>64.45%</td>
    </tr>
  </table>

<p>Unfortunately, we don't know who owns the first five companies, even though 
if anyone owns one third or more of a corporate shareholder then they are 
required by law to disclose an interest. The disclosure forms do, however, 
provide us with the name of several directors, from which we can glean the 
following information.</p>

<ol>
  <li>A director of Big Draw Ltd is Lo Wai Leung, and we 
don't know anything about him/her.</li>
<li>A director of First Deals Trading Ltd is Yu Ho Wing, 
and we don't know anything about him/her.</li>
<li>A director of First Pink Ltd is Chan Tak Hung. A 
person of that name is the Chairman of <a target="_blank" href="../dbpub/articles.asp?p=5142">
Digital World Holdings Ltd</a> (0109), a company which featured in another 
horror story last year as part of the &quot;Styland network&quot;.</li>
<li>A director of First Win Trading Ltd is Jerry Yip Wai 
Leung, who is also a partner of J. Chan Yip, So &amp; Partners, one of the two legal 
advisers to CTGCI listed in its 2002 annual report. Mr Yip is also an 
independent non-executive director of <a target="_blank" href="../dbpub/articles.asp?p=4978">Styland 
Holdings Ltd</a> (0211), a company which was at the centre of several of our 
stories last year. He is also an INED of <a target="_blank" href="../dbpub/articles.asp?p=12209">
Global Green Tech Group Ltd</a> (0274), which employs a financial controller who 
was once an executive director of Styland..</li>
<li>I-Deluxe Assets Ltd does not list any director in 
its disclosure.</li>
<li>B &amp; D Investments Ltd names Benson Ng Bing Sun as a 
97% shareholder, but Mr Ng has not filed any separate disclosure of his 
interest. Three other directors are named, each surnamed Ng and holding 1%.</li>
<li>Joel Lazare Hohman is a non-executive director of 
CTGCI. </li>
</ol>

<h3>Auditors removed</h3>

<p>On 13-Nov-02, CTGCI sent a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021113/LTN20021113047.pdf">
circular</a> to shareholders in which they wrote:</p>

<blockquote>

<p>&quot;The Board has received a request from shareholders of the Company for the 
removal of Ernst &amp; Young and the appointment of Deloitte Touche Tohmatsu as 
auditors of the Company.&quot;</p>

</blockquote>

<p>Ernst &amp; Young, who had been the auditors of CTGCI at the time of its listing, 
were duly
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20021209/LTN20021209042.pdf">
replaced</a> at the shareholders meeting on 2-Dec-02. Deloitte Touche Tohmatsu 
gave a clean audit report on the 2002 accounts. The shareholders who made the 
request were not named. How wonderful that the board was so co-operative.</p>

<p>By complete coincidence, over at Yanion, Ernst &amp; Young disclaimed their 
opinion on the annual report for 2001 (issued on 12-Aug-02) and did not seek 
reappointment at the AGM.</p>

<p>Readers might consider, if Ernst &amp; Young had continued as CTGCI's auditors, 
wouldn't they have recognised both Korning and Modern Vocal as being 
subsidiaries of Yanion, having been auditors of both listed companies, and 
started to figure out this story?</p>

<h3>Remuneration both ways</h3>

<p>Page 118 of CTGCI's prospectus states:</p>

<blockquote>

<p>&quot;no...remuneration or benefits in kind [are] payable by [CTGCI] to any 
Director in respect of the current financial year under any arrangement in force 
at the date hereof [19-Feb-02].&quot;</p>

</blockquote>

<p>While that may have been true at that moment in time, the annual report shows 
that after CTGCI was listed, directors received remuneration totalling $1.752m, 
or about <b>1.96%</b> of net assets, including 1 unnamed director who received 
over $1.5m. There were only 4 other employees, who received $689,200 between 
them.</p>

<p>CTGCI has had 3 executive directors, being Mr Sherrill (since resigned), Managing 
Director Michael Chan Yan Ming (who owns 25% of China Core) and Robert Ma Kam 
Fook (who owns 37.5% of China Core and is a director of China Core).&nbsp; So 
all of the executive directors are connected to the interim or current 
investment manager. The 
management agreements with AsiaVest and China Core involve a management fee of
<b>2.5%</b> and a performance fee of <b>15%</b> of any increase in net asset 
value between one year and the next.</p>

<p>This highlights a number of problems with the Listing Rules:</p>

<ul>
  <li>affiliates of investment managers (their employees, 
directors and shareholders) are also allowed to act as directors of the listed 
company. The management contract with the investment manager is treated as a 
connected transaction under Listing Rule 21.13, but the amounts paid to the same 
people as directors of the listed company are not. This is a huge loophole, and 
makes a mockery of any effort to define the management fees.</li>
  <li>day-to-day management of an investment company is 
delegated by the board to an investment manager (for example, in this case, 
investments over $5m have to be referred by the manager to the board), so the 
board should be part time non-executive, and not paid as if they were managing 
the business. That's what investment management fees are for.</li>
  <li>the board is supposed to oversee the work of the 
investment manger, so anyone involved with both has a conflict of interest if 
they have to approve (as directors) their own recommendations (as managers).</li>
  <li>investment companies are allowed to have share 
option schemes, which provide further scope for investment managers (as 
directors) to reward themselves over and above the management fees and 
performance fees they receive as managers. These option plans were designed for 
regular listed companies and do not belong in an investment company. If an 
investment manager wants to receive options, then it should be a term of the 
investment management agreement, which is a connected transaction.</li>
</ul>

<div class="regbox">
  Regulatory note: <i>Webb-site.com</i> believes that for Chapter 21 investment 
  companies: (1) all the directors should be independent of the investment 
  manager to avoid these conflicts of interest and provide proper oversight of 
  the investment manager's recommendations; and (2) option schemes for 
  investment companies should be banned.</div>

<h3>Conclusions</h3>

<p>CTGCI gives Chapter 21 investment companies a very bad name, but that's 
largely because the Listing Rules make it possible, and hence make all such 
companies inherently at risk of bad governance. CTGCI has funnelled almost 58% 
of its net assets into the shares of Yanion and it subsidiaries at questionable 
valuations, breaking the spirit if not the letter of the rule which prohibits 
placing more than 20% of net assets in <i>&quot;investments issued by any one company or 
body&quot;</i>. No doubt they would argue that Yanion, Korning and Modern Vocal 
are 3 different &quot;companies or bodies&quot;. By contrast, in the UK,
<a target="_blank" href="http://www.fsa.gov.uk/pubs/ukla/chapt21-3.pdf">Listing 
Rule 21.9(h)</a> says:</p>

<blockquote>
  <p>&quot;not more than 20% of the gross assets of the issuer...may be 
  lent to or invested in the securities of any one company <b>or group</b>&quot; 
  (emphasis added)</p>
</blockquote>

<p>The latest unaudited
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030612/LTN20030612113.pdf">
NAV</a> of CTGCI is $0.769 per share at 31-May-03, but even at the current share 
price of $0.31, you would do well to avoid it.</p>

<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=3259">CCIF CPA LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=15383">China Castson 81 Finance Company Limited (BM)</a></li>
				
				<li><a href="/dbpub/articles.asp?p=17237">CHINA CORE CAPITAL MANAGEMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3771">Crazy Sports Group Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=5651">Siao, Wen and Leung</a></li>
				
				<li><a href="/dbpub/articles.asp?p=10080">SPDB International Holdings Limited</a></li>
				
				<li><a href="/dbpub/articles.asp?p=13791">WorldVest Holdings Limited</a></li>
				
		</ul>
	
		<h4>People in this story</h4>
		<ul>
			
				<li><a href="/dbpub/natarts.asp?p=3258">Chan, Charles Wai Dune</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=586">Chan, Michael Yan Ming</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8506">Chan, Tak Hung (1960)</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=17242">Chen, Brian Wen Suei</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=9021">Cheng, Shu Wing</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=6384">Choy, Milano Tak Ho</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=11865">Kao, John Ying Lun</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=15127">Ma, Gary Ming Fai</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=1981">Ma, Robert Kam Fook</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=10079">Sherrill, Andrew Nan</a></li>
				
				<li><a href="/dbpub/natarts.asp?p=8681">Yip, Jerry Wai Leung (1957)</a></li>
				
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