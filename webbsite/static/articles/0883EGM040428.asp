
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

<script type="text/javascript">document.title="Veto CNOOC Loans to Parent Group";</script>

	<div class="summary">We urge minority shareholders to veto CNOOC's proposal to continue lending up to RMB6,800m (US$821m) to its parent's subsidiary. We also question why such loans over the last 2 years have not been subject to minority shareholders' approval, apparently breaching the Listing Rules. The Stock Exchange has yet to take any public action. CNOOC should get its money back.</div>

<h2 class="center">Veto CNOOC Loans to Parent Group<br>
<span class="headlinedate">19 April 2004</span></h2>
<table class="txtable">
    <tr>
      <td>Company:</td>
      <td>CNOOC Limited (<b>CNOOC</b>)</td>
    </tr>
    <tr>
      <td>Stock code:</td>
      <td>0883</td>
    </tr>
    <tr>
      <td>Meeting type:</td>
      <td><b>Extraordinary</b></td>
    </tr>
    <tr>
      <td>Date of meeting:</td>
      <td>28-Apr-04</td>
    </tr>
    <tr>
      <td>Time of meeting:</td>
      <td>11:30</td>
    </tr>
    <tr>
      <td>Advice date:&nbsp;</td>
      <td>19-Apr-04</td>
    </tr>
    <tr>
      <td>CCASS voting cut-off </td>
      <td>23-Apr-04. <b style="color:red">VOTE NOW</b></td>
    </tr>
    <tr>
      <td>Circular and Notice of Meeting:</td>
      <td><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040413/LTN20040413109.pdf">Click here</a></td>
    </tr>
    <tr>
      <td>Proxy form:</td>
      <td><a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040413/LTN20040413110.pdf">Click here</a></td>
    </tr>
    <tr>
      <td>Voting method:</td>
      <td>A poll is required by the Listing Rules. All proxies will be counted. 
      CNOOC Parent must abstain.</td>
    </tr>
    <tr>
      <td>How to vote:</td>
      <td>See our <a target="_blank" href="../pages/howtovote.asp">voting guide</a></td>
    </tr>
  </table>

<p><b>Note to journalists:<br>
We have up to 8 proxy seats available inside this AGM. Please <a href="../contact/" target="_blank">contact
us</a> if you want one.</b></p>
<table class="txtable">
    <tr>
      <td><i><b>Item</b></i></td>
      <td><i><b>Description</b></i></td>
      <td><i><b>Vote</b></i></td>
    </tr>
    <tr>
      <td>1</td>
      <td>To approve the Framework Agreement, including 
      loans of up to RMB6,800m to a subsidiary of the parent of CNOOC</td>
      <td><b>AGAINST</b></td>
    </tr>
    </table>
<h3>Background</h3>

<p>In an
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040408/LTN20040408086.pdf">
announcement</a> filed at 17:32 on 8-Apr-04, the eve of the 4-day Easter 
weekend, CNOOC said it would seek minority shareholders' approval (the parent 
cannot vote) for a bunch of &quot;continuing connected transactions&quot; with a company 
called CNOOC Finance Corp Ltd (<b>CNOOC Finance</b>), a non-bank PRC finance 
company which is a 62.9% subsidiary of China National Offshore Oil Corporation (<b>CNOOC 
Parent</b>).</p>

<p>CNOOC Finance was established in Jun-02. On 5-Sep-03, CNOOC bought 31.80% of 
CNOOC Finance from its parent for RMB450m cash in a connected transaction which, 
because it cost less than 3% of CNOOC's net assets, did not require minority 
shareholders' approval. The reason given in the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030908/ltn20030908026.pdf">
announcement</a> of the acquisition was to <i>&quot;enable the Group to participate 
in the financial services industry in the PRC&quot;</i>, but then in a masterpiece of 
inconsistency, the oil producer said <i>&quot;The Company has no current intention to 
expand into the financial services industry other than the acquisition.&quot; </i>So 
they were <i>participating</i> in financial services but not <i>expanding</i> 
into it. Go figure! The announcement made no mention of any transactions between 
CNOOC and CNOOC Finance.</p>

<p>However, buried in the footnotes of the 2002 and 2003 annual reports, it was 
disclosed that CNOOC had lent RMB2,740m to CNOOC Finance at 31-Dec-02, and 
RMB3.9m at 31-Dec-03. And according to the Easter-eve announcement, the 
maximum outstanding loan between the creation of CNOOC Finance in Jun-02 and 
Mar-04, was a whopping RMB6,600m.</p>

<p>Of course, you won't see it described as a &quot;loan&quot; - CNOOC prefers to call it 
a &quot;deposit&quot; with CNOOC Finance, but it is in fact an unsecured loan. While CNOOC 
Finance is regulated by the People's Bank of China, that hardly fills us with 
confidence, and no credit information has been published on CNOOC Finance, which 
also invests in &quot;marketable securities&quot; and equities, including equity of CNOOC 
group companies. Incidentally, the &quot;deposits&quot; which CNOOC Finance takes are 
&quot;over 3 months&quot; - presumably because any shorter duration would require a full 
banking licence which it does not have.</p>

<h3>Breaking a Golden Rule of Governance</h3>

<p>It is a golden rule of good governance that listed companies should not lend 
money to their controlling shareholders. If you want to make a loan (or call it 
a deposit), then go and lend the money to an independent bank, or preferably 
several. If you lend money to your controlling shareholder, then you run a huge 
conflict of interest. There have been numerous cases in the past of this kind of 
arrangement causing major problems when the parent is unable to repay the loans. 
If CNOOC Finance gets into trouble, is CNOOC really going to demand its money 
back, given that both are controlled by the same entity and Chaired by the same 
person?</p>

<p>If you think these fears are unfounded, then you have forgotten about the 
collapse of companies like Guangdong International Trust and Investment Corp 
(GITIC) or the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20020314/LTN20020314022.doc">
default</a> of the government-owned parent of <a target="_blank" href="../dbpub/articles.asp?p=4851">Guangdong Kelon Electrical Holdings Co Ltd</a> on 
unapproved loans of RMB1,260m from the listed H-share company which was once the 
darling of institutional investors. Fans of CNOOC should bear this in mind.</p>

<h3>Breach of Listing Rules</h3>

<p>The most jaw-dropping part of this is not that CNOOC is now seeking approval 
for future loans to CNOOC Finance up to RMB6,800m which it really should not 
make, but that it never sought approval in the past, even though the Listing 
Rules would have required it, since the maximum of RMB6,600m was about 16.3% of 
net assets at 31-Dec-02 and 14.1% of net assets at 31-Dec-03. </p>

<div class="regbox">
  Regulatory note: we reported this breach of the Listing Rules to the Stock 
  Exchange on 9-Apr-04 but no public action has been taken, nor has the company 
  even acknowledged that it broke the rules for almost 2 years, even though it 
  is now seeking approval for similar transactions in future.</div>

<h3>Shareholder Circular</h3>

<p>CNOOC used the Easter break to its advantage. On 13-Apr-04, the day after 
Easter, it published a
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20040413/LTN20040413109.pdf">
circular</a> to shareholders dated 5 days earlier (the same date as the 
announcement), so this must have been in production well before the announcement 
of the deal was made. This included a letter from independent financial adviser 
Cazenove Asia Limited, signed by its Chief Executive May Tan and Head of 
Corporate Finance Karman Hsu, advising that the terms of loans were:</p>

<blockquote>

<p>&quot;in the interests of the Company and the Shareholders as a whole.&quot;</p>

</blockquote>

<p>Well we can see why they would be in the interests of one shareholder, CNOOC 
Parent, which gets a handy RMB6,800m to provide loans to other group companies, 
but we cannot see how this is a better risk for the minority shareholders than 
putting the money in banks, which have much more diversified loan portfolios. 
Even accepting that PRC exchange controls mean CNOOC is effectively restricted 
to PRC banks with its RMB deposits, it would be politically difficult for one of 
the large government-owned banks to default, but much easier for an internal 
finance company like CNOOC Finance to shut down without any disruption to 
society.</p>

<p>When <i>Webb-site.com</i> spoke today with Cazenove's May Tan, who had signed 
the advice letter, she denied knowledge of the situation and said a colleague 
had handled it. Cazenove was unable to provide further comment before we 
published this article.</p>

<p>CNOOC is already heavily involved in previously-approved connected 
transactions with its parent, including the sale of oil. But there is no reason 
to deepen the conflict further. The company claims that the loans to CNOOC 
Finance:</p>

<blockquote>

<p>&quot;could help diversify the Group's risks in relation to its deposits&quot;</p>

</blockquote>

<p>but in fact what it does is increase the company's exposure to its parent 
group.</p>

<p>We are shocked that the committee of independent directors, including 
experienced investment banker and Vice Chairman of Goldman Sachs Asia, Dr 
Kenneth Courtis and former Swiss ambassador to China, Dr Erwin Schurtenberger 
approve of this arrangement and and regard it in the interests of CNOOC to 
continue with the loans. According to CNOOC's annual report, Dr Courtis is 
designated as the 2-member audit committee's &quot;financial expert&quot; under U.S. 
securities laws.</p>

<p>So we urge you to vote AGAINST these transactions. We also call on CNOOC 
Parent to get CNOOC Finance to give the listed company its money back, to unwind 
the previous unapproved loans.</p>

<p>We also recommend you vote AGAINST the re-election of  Dr Courtis and Dr Schurtenberger 
as independent non-executive 
directors, at the AGM on the same day, 28-Apr-04. See our
<a href="0883AGM2004.asp">separate voting advice</a> on that meeting.</p>
<p><em>&copy; Webb-site.com, 2004</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9164">CNOOC LIMITED</a></li>
				
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