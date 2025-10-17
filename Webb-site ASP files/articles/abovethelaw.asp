
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

<script type="text/javascript">document.title="State Securities Above the Law";</script>

	<div class="summary">In another <i>Webb-site.com</i> exclusive, five years after the market intervention, an investor with over HK$87bn of stocks has claimed exemption from the new law which protect investors in Hong Kong, which includes disclosure, insider dealing and market manipulation. The Government claim comes from a written response to questions we raised at the MTRC AGM. We look at the implications.</div>

<h2 class="center">State Securities Above the Law<br>
<span class="headlinedate">8 June 2003</span></h2>
<p>Today we exclusively bring you disturbing revelations about the Government's 
attitude towards its new Securities and Futures Ordinance (<b>SFO</b>), arising 
from questions we asked at the 15-May-03 annual general meeting of MTR 
Corporation Ltd (<b>MTRC</b>, 0066), which have now been answered in writing.</p>

<h3>A stain on the market</h3>

<p>In Aug-98, in a move which permanently stained its hands-off-the-market track 
record, the Government, using the Hong Kong Monetary Authority (<b>HKMA</b>)'s 
Exchange Fund, intervened, pushing the Hang Seng Index up with an avalanche of 
taxpayers' money and acquiring about 15% of the entire free float of the Hang 
Seng Index, as we correctly <a target="_blank" href="scmp980904.asp">estimated</a> 
in Sep-98.</p>

<p>The HKMA later set up and owns Exchange Fund Investment Limited (<b>EFIL</b>), 
to manage the equity portfolio. After sales through the
<a target="_blank" href="../dbpub/articles.asp?p=51819">Tracker Fund</a> program, the Exchange Fund's 
holdings were reduced to HK$51bn at 31-Dec-02. That's equivalent to 2% of the 
Hang Seng Index market value and 4% of the index free float.</p>

<p>In 1998, we <a target="_blank" href="interven.asp">complained</a> to the SFC 
and through the newspapers that the Government, in its market intervention, was 
breaking its own laws by failing to disclose its substantial shareholdings and 
engaging in blatant market manipulation. The Government claimed exemption from 
the laws, and the SFC backed it up.<i> </i>The directors of the SFC are 
appointed by Government, so they are unlikely to publicly oppose Government 
policy on this or any other matter.<i> Webb-site.com </i>was launched soon 
afterwards, in Nov-98.</p>

<h3>MTRC</h3>

<p>The MTRC is currently the only listed company controlled by the Government, 
although they hope to float more. We'd better sort this out before they do. 
According to the MTRC
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030320/00066/F124.pdf">
annual report</a>, page 62, the &quot;Financial Secretary Incorporated&quot; (<b>FSI</b>) 
owns 3,928,221,249 shares (76.14%) of the MTRC, now worth about HK$36bn. That 
takes total government holdings of listed shares to at least $87bn.</p>

<p>As the SFO was only introduced on 1-Apr-03, at the MTRC AGM, and in a written 
follow-up on 16-May-03 to Frederick Ma Si-hang (<b>Mr Ma</b>), Secretary for 
Financial Services and the Treasury Bureau (<b>FSTB</b>), we asked:</p>

<ol>
  <li>
  Does the Government, either directly or through 
  any entity it controls (including the HKMA, Exchange Fund, Housing Authority, 
  MPFA, etc), own any shares in MTRC other than the holding disclosed by the 
  FSI?</li>
  <li>
  Does the Government consider itself bound by the 
  provisions of the SFO and in particular the disclosure of interests provisions 
  therein, and if not, why not?</li>
  <li>
  Whether or not the Government considers itself 
  bound by the SFO, will the Government comply and inform the board of MTRC of 
  its total interest in shareholdings, including shares held by the FSI, for 
  publication in the interim and annual reports of MTRC and through the Stock 
  Exchange disclosure of interests system?</li>
</ol>

<p>On 6-Jun-03, Martin Glass, a Deputy Secretary at the FSTB, replied on behalf 
of Mr Ma. He wrote:</p>

<blockquote>
  <p>&quot;a) according to the latest records of the HKMA, the Exchange Fund held 
  69,863,918 MTRCL shares. Neither MPFA nor Housing Authority hold any MTRCL 
  shares. The Treasury manages a number of small funds through financial 
  institutions acting as agents, which together hold around 0.1% of the issued 
  shares of MTRCL as at 31 May 2003.</p>
  <p>b) EFIL, which has been appointed as the investment adviser and manager of 
  the Hong Kong Equity Portfolio of the Exchange Fund, has obtained the approval 
  of the Financial Secretary and the HKMA to disclose on a voluntary basis any 
  of its shareholdings which exceed the threshold stipulated in the SFO. FSI 
  also discloses its shareholdings on the same basis.&quot;</p>
</blockquote>

<p>Five years after the intervention, and having introduced a comprehensive new 
law, it is clear that the Government still regards itself as being above that 
law. FSTB's use of the phrase <i>&quot;on a voluntary basis&quot;</i> clearly implies that 
they do not regard themselves as legally obliged to disclose their 
shareholdings, unlike any other shareholder.</p>

<h3>Abuse of immunity clause</h3>

<p>We believe the Government is abusing
<a target="_blank" href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/aa60bc952b438ef248256648002c3e25">
Section 66</a> of the Interpretation and General Clauses Ordinance (<b>IGCO</b>, 
Chapter 1 of the Laws of HK) which states:</p>

<blockquote>

<p>&quot;No Ordinance...shall in any manner whatsoever...be binding on the State 
unless it is therein expressly provided or unless it appears by necessary 
implication that the State is bound thereby.&quot;</p>

</blockquote>

<p>Ironically, 66 is also the stock code of MTRC.
<a target="_blank" href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/e183e5a1814afef74825683b00316bca">
Section 3</a> of IGCO defines &quot;State&quot; to include the HK Government. Of course, 
the SFO does not &quot;<i>expressly provide&quot;</i> that it applies to the Government - 
but then it does not expressly provide that it applies to you either. So we are 
left with whether it appears <i>&quot;by necessary implication&quot;</i> that the law 
applies to the State.</p>

<p>Surely it is obvious that if the SFO did not apply to the Government, then it 
would be free to conduct insider dealing in the stock market, manipulate the 
price of shares, (yes, it did that in 1998), engage in false and misleading 
disclosure and accumulate undisclosed shareholdings, and vote them on connected 
transactions. It seems to us that it must be a &quot;necessary implication&quot; of the 
SFO that it applies to ALL shareholders, without exception.</p>

<p>Indeed, the regulatory objectives of the SFC listed in Section 4 of the SFO 
include as the first item:</p>

<blockquote>

<p>&quot;to maintain and promote the fairness, efficiency, competitiveness, 
transparency and orderliness of the securities and futures industry&quot;</p>

</blockquote>

<p>How can the SFC achieve that if one investor, with tens of billions of 
dollars invested in the market, is exempt from the law?</p>

<h3>Undisclosed holdings</h3>

<p>The FSTB's response for the first time reveals that the Government holds not 
76.14%, but at least <b>77.60%</b> of MTRC, or 1.46% more than we all knew. If 
the Government was bound by the SFO, then it would have to disclose this 
combined interest.</p>

<p>That disclosure reduces the free float from 23.86% to 22.40%, a reduction of 
about 6% in share terms. Those index compilers such as MSCI who produce their 
index based on free float may have to reduce their index weighting for MTRC, and 
funds which track those indices may have to do likewise.</p>

<p>FSTB's reply also segregates the <i>&quot;voluntary&quot;</i> disclosures of the FSI 
and Exchange Fund, so that the Exchange Fund holding would only be disclosed if it exceeds 5%. 
As the Exchange Fund only holds about 1.4%, that means that we will not be getting regular 
updates on the Government's separate holdings, and the reply did not even 
mention the aggregate Government holding, so it remains unknown whether other 
government entities besides the ones named in the response hold any shares.</p>

<h3>More market interference</h3>

<p>Another revelation in the FSTB's response was the statement that &quot;<i>The 
Treasury manages a number of small funds&quot;</i> which hold about 0.1% of MTRC. 
That's about $47m worth, and makes us wonder what else they own. We had 
previously believed that the Government's only interference in the stock market 
was via the Exchange Fund, which is managed by the HKMA, not the Treasury. Now 
it emerges that the Treasury also manages equities. According to its web site, 
the Treasury
<a target="_blank" href="http://www.info.gov.hk/tsy/intrnet/ehpledge4.html">
manages</a> funds with a total size of $38.3bn, the bulk of it for Schools 
Provident Funds, although we don't know how much is in equities.</p>

<p>How big is this iceberg - are there any other Government entities in the 
market, we wonder? Do Legislators know what the Government is doing here?</p>

<h3>Potential to rig the MTRC-KCRC merger vote</h3>

<p>Another reason why it is a &quot;necessary implication&quot; that the law should apply 
to the Government is the fact that it has connected transactions with the MTRC. 
As we <a target="_blank" href="noboss.asp">reported</a> in 2000 at the time of 
the IPO, in another example of the &quot;corporate governance is good, but not for 
us&quot; school of thought, the Government obtained a blanket waiver from the Stock 
Exchange from the requirement to obtain minority shareholder approval on 
connected transactions, which was ironic given the advertising campaign of 
&quot;you're the boss&quot; which accompanied the IPO.</p>

<p>However, it is accepted that this would not apply to a proposed merger with 
Hong Kong's other railway-cum-property developer, the KCRC, on which the 
Government
<a target="_blank" href="http://www.info.gov.hk/gia/general/200206/25/0625221.htm">
said</a> on 25-Jun-02 that it would conduct a feasibility study. Such a merger 
would require approval of minority shareholders, but the continued refusal of 
the Government to be bound by the SFO raises the spectre of the Government using 
undisclosed shareholdings to vote in favour of the merger and push it through, 
even if the majority of the public vote is against the plan.</p>

<h3>Vampire finds another win</h3>

<p>To demonstrate how easy it would be to rig the vote, look at the results of 
the MTRC AGM - thanks to our <a target="_blank" href="projectpoll1.asp">Project 
Poll</a>, the antiquated show-of-hands was scrapped, and votes were counted 
properly this year. Under <a target="_blank" href="vampire1.asp">Project Vampire</a>, 
we recommend investors to vote against the general issue mandate. We aim to show 
that minority shareholders (i.e. the investing public) were opposed to the 
mandate, by deducting the votes of the insiders from the
<a target="_blank" href="http://www.hkexnews.hk/listedco/listconews/sehk/20030515/LTN20030515094.pdf">
poll results</a>. Initially, it looked like we had lost, with the public vote, 
excluding the known Government shareholding and directors, being as follows:</p>
<table class="numtable center">
    <tr>
      <td>&nbsp;</td>
      <td><i>Votes</i></td>
      <td><i>Share</i></td>
    </tr>
    <tr>
      <td><b>In favour</b></td>
      <td>119,359,344</td>
      <td><b>60.91%</b></td>
    </tr>
    <tr>
      <td>Against</td>
      <td>76,613,659</td>
      <td>39.09%</td>
    </tr>
    <tr>
      <td>Total</td>
      <td>195,973,003</td>
      <td>100.00%</td>
    </tr>
</table>
<p>However, if the Exchange Fund's 1.35% and the <i>&quot;around 0.1%&quot;</i> held by the 
Treasury-managed funds are included in the &quot;yes&quot; vote, then we should deduct 
those too, which would leave the result as:</p>

<table class="numtable center">
    <tr>
      <td>&nbsp;</td>
      <td><i>Votes</i></td>
      <td><i>Share</i></td>
    </tr>
    <tr>
      <td>In favour</td>
      <td>44,336,312</td>
      <td>36.66%</td>
    </tr>
    <tr>
      <td><b>Against</b></td>
      <td>76,613,659</td>
      <td><b>63.34%</b></td>
    </tr>
    <tr>
      <td>Total</td>
      <td>120,949,971</td>
      <td>100.00%</td>
    </tr>
</table>
<p>So Vampire can claim another win, the 9th in the Hang Seng Index. Now take 
the first table in the above figures and imagine that this was a vote on the 
KCRC merger. Makes you kind of nervous, doesn't it? The Government's secret 
holdings could determine the outcome of the vote.</p>

<h3>PRC Government could be at it too</h3>

<p>Now take a look at the definition of &quot;State&quot; in
<a target="_blank" href="http://www.legislation.gov.hk/blis.nsf/e1bf50c09a33d3dc482564840019d2f4/e183e5a1814afef74825683b00316bca">
Section 3</a> of IGCO. Given the Government's position that it is exempt from 
the SFO, we presume that they and the SFC would also exempt anyone else covered 
by the definition of &quot;State&quot; in the IGCO.</p>

<p>Hence, it appears that the President of the PRC, the PRC Government, and 
organs such as the People's Bank of China, which manages the country's massive 
foreign reserves, could also have undisclosed holdings in HK-listed companies 
that the State ultimately controls. Other possible candidates for exemption 
might include the new PRC State Social Security Fund Management Council. This 
means that:</p>

<ul>
  <li>the free float in State-controlled HK-listed 
companies may not be as large as you think; and</li>
  <li>undisclosed shareholdings of the State could be used 
to vote in favour of connected transactions which may not be in investors' 
interests.</li>
</ul>

<h3>Government should be bound by the law</h3>

<p>In the wake of the market intervention, on 20-Oct-98 the Legislative Council 
Panel on Administration of Justice and Legal Services debated whether the 
Government should be bound by the securities laws. Representatives of both the 
Law Society and the Bar Association told the panel&nbsp; (paras 31 and 35 of the
<a target="_blank" href="http://www.legco.gov.hk/yr98-99/english/panels/ajls/minutes/aj201098.htm">
minutes</a>) that the laws should bind the Government. Indeed, the Law Society's
<a target="_blank" href="http://www.nortonrose.com/index.asp?customframe=1&topbanner=partners&mainpage=/partners/biog.asp?partnerid=182">
David Stannard</a> (who two months later was
<a target="_blank" href="http://www.sfc.hk/sfcPressRelease/EN/sfcOpenDocServlet?docno=8pr112">
appointed</a> as an executive director of the SFC, and last year returned to 
private practice) said that the Government's exemption would:</p>

<blockquote>

<p>&quot;prejudice the interests of other private sector investors who were entitled 
to know whether there were substantial shareholders of the companies whose 
shares had been actively traded at the time. This would defeat the fundamental 
intent underlying the relevant Ordinances which was to ensure a level playing 
field for all investors in the interests of the market as a whole.&quot;</p>

</blockquote>

<p>Of course, the Government disagreed, and
<a target="_blank" href="http://www.legco.gov.hk/yr98-99/english/panels/ajls/papers/p436e03.pdf">
claimed</a> in a submission that none of the securities laws applied to it. In 
the meeting, the Government sought to defend its behaviour by claiming that 
disclosure of its portfolio during the intervention would have <i>&quot;undermined 
the effectiveness of its actions&quot;</i> (the intended effect being to ramp the 
market in order to squeeze short-sellers). Clearly if that was the Government's 
only excuse for exemption, it only existed during the intervention itself and is 
no excuse today.</p>

<p>At the next panel meeting on 2-Nov-98, the Government submitted a paper in 
which it
<a target="_blank" href="http://www.legco.gov.hk/yr98-99/english/panels/ajls/papers/p415e02.pdf">
undertook</a> (see page 3) <i>&quot;to review any Ordinance in respect of its binding 
effect when the need to do so has been identified&quot;</i>. Will it now honour that 
undertaking?</p>

<p><b>Unless and until the HK Government confirms that the Securities and 
Futures Ordinance applies by &quot;necessary implication&quot; to the State, or amends the 
law to &quot;expressly provide&quot; that it applies to the State, investors will continue 
to run the risk of hidden shareholdings, rigged votes, insider dealing and 
market manipulation, amongst other SFO offences from which the Governments of 
both HK and the PRC would be exempt. </b> </p>

<p><b>In these circumstances, it is a &quot;necessary implication&quot; that any 
Government claim that Hong Kong offers investors a transparent and level playing 
field is transparently false.</b></p>

<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=11569">MTR CORPORATION LIMITED</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=127">Disclosure of interests - securities</a></li>
				
				<li><a href="/dbpub/subject.asp?c=141">Free speech & transparency</a></li>
				
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