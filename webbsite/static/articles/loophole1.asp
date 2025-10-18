
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

<script type="text/javascript">document.title="The Trust Loophole";</script>

	<div class="summary">In a revamp of our loophole series, we are going to document them one at a time, in the hope that regulators may do something about them . We start with the Trust Loophole in the Listing Rules, through which HKEx itself has passed. Three years after we first reported this software bug, it has still not been fixed.</div>

<h2 class="center">The Trust Loophole<br>
<span class="headlinedate">13 August 2003</span></h2>
<h3>Summary</h3>
<table class="txtable">
  <tr>
    <td>Loophole number:</td>
    <td>1</td>
  </tr>
  <tr>
    <td>Use of loophole:</td>
    <td>For a director or substantial shareholder of a listed 
    company to benefit from transactions with that company without disclosure</td>
  </tr>
  <tr>
    <td>Location of loophole:</td>
    <td>Main board and GEM Listing Rules 1.01(a)</td>
  </tr>
  <tr>
    <td><strong>Status update</strong></td>
    <td>This loophole was closed by
	<a href="http://www.hkex.com.hk/eng/rulesreg/listrules/mbrulesup/mb_rupdate_cover.htm" target="_blank">
	amendment</a> to the Listing Rules on 31-Mar-2004</td>
  </tr>
</table>
<h3>Background</h3>

<p>Normally, under
<a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/CH14.doc">
Chapter 14</a> of the Listing Rules, a director, chief executive or substantial 
(10%) shareholder of a listed company is a &quot;connected person&quot; of that company 
and any material transaction, with certain exceptions, is subject to disclosure 
and, if it is large enough, the approval of independent shareholders.</p>

<p>The 
<a target="_blank" href="http://www.hkex.com.hk/rulereg/listrules/CH1.doc">definition</a> of connected persons includes an &quot;associate&quot; of a director, 
chief executive&nbsp; or substantial shareholder. The definition of &quot;associate&quot; 
includes any company which that person controls, defined to be capable of 
exercising 35% of the voting rights (or such lower threshold as may be specified 
in the Takeover Code). Since the Takeover threshold was reduced to 30%, that 
means the Listing Rule also kicks in at that level.</p>

<p>What this means in practice is that if you are a director or substantial 
shareholder or controller of a listed company and own 30% or more of another 
company (whether it is listed or not) then any deals between that other company 
and the listed company are connected transactions. The purpose of this rule is 
to prevent you from benefiting from abusing the listed company by over-priced 
sales to or under-priced purchases from the listed company, including asset 
injections or disposals.</p>

<p>The definition of &quot;associate&quot; of a director, chief executive or substantial 
shareholder (being an individual) also includes in Rule 1.01(a)(ii):</p>

<blockquote>

<p>&quot;the trustees, acting in their capacity as such trustees, of any trust of 
which he or any of his family interests is a beneficiary or, in the case of a 
discretionary trust, is a discretionary object&quot;</p>

</blockquote>

<p>The clear intention of that rule is to include, within the &quot;connected 
persons&quot; net, trusts which are often established by controlling shareholders or 
directors of listed companies to hold their personal assets. The person who 
establishes the trust, known as the &quot;settlor&quot;, transfers legal title to the 
assets to a trustee, typically a subsidiary of a bank such as HSBC, Bank of 
Bermuda or Citibank. Although there is no formal obligation for the trustee to 
follow the instructions of the settlor when managing the assets if the trust, in 
practice they do, otherwise they wouldn't survive in the trust business. These 
instructions are euphemistically known as &quot;wishes&quot;. In any case, the trust 
typically holds assets via a holding company, and there is nothing that prevents 
the settlor or his relatives being a director of the holding company.</p>

<p>The reasons for such trusts can include the legal avoidance of future 
inheritance tax or estate duty, or shielding assets from creditors or litigants. 
The beneficiaries of the trusts often include the spouse and children and 
sometimes (depending on whether this would compromise the tax planning) the 
settlor himself. The existence of such trusts is one reason why Hong Kong Estate 
Duty should be scrapped, because it is an entirely voluntary tax that is paid 
only by people who do not set up trusts and die rich.</p>

<h3>The Loophole</h3>

<p>The loophole is quite simple. The Listing Rules include trustees of trusts in the 
definition of connected persons, but they do not explicitly include any company 
controlled by the trustee. You might think that it was implicit, and that the 
rule would be useless if a trustee could avoid it simply by establishing a 
wholly-owned company to conduct business instead of the trustee. You would be 
right, but that is 
exactly the interpretation that the Stock Exchange has taken.</p>

<p>So if you are a controlling shareholder of a listed company, all you have to 
do to avoid the connected transaction rules is follow three simple steps:</p>

<ol>
  <li>Visit your bank or lawyer and set up a trust, of 
	which you or your family can be the sole beneficiaries.</li>
  <li>Set up a company and issue or transfer all its shares 
	to the trustee.</li>
  <li>The company is now NOT a connected person of the 
	listed company, and can now conduct transactions with the listed company which 
you control.</li>
</ol>

<p style="margin-right: 6">Note: if you also want to avoid the
<a target="_blank" href="http://www.hksa.org.hk/professionaltechnical/pronouncements/handbook/volume2a/2_120.htm">
accounting standard</a> on disclosure of &quot;related party transactions&quot;, which are 
broader in scope than the Listing Rules, then don't be the director of the company owned 
by the trustee. Instead, ask your trustee to provide a director for you. You 
see, accountants have recognised that if you work for both parties to a 
&quot;material&quot; transaction as a member of &quot;key management&quot; then you have a conflict 
of interest and the transaction should be disclosed. Unfortunately, the 
standards do not define &quot;key management&quot;, nor do they define what is &quot;material&quot;.</p>

<h3>The Solution</h3>

<p>To close the Listing Rule loophole, change the definition of &quot;associate&quot; to 
include companies controlled (30% or more) by the trustees of any trust of which 
the director, substantial shareholder or his family is a beneficiary.</p>

<p>A further detail that needs amending is that, since beneficiaries of trusts 
can also be non-individuals, the rule should apply to all substantial 
shareholders (including companies and other entities), not just those who are 
human beings.</p>

<h3>Example</h3>

<p>For an example of this loophole in action, look no further than 
<a target="_blank" href="../dbpub/articles.asp?p=9643">Hong Kong 
Exchanges and Clearing Limited</a> (<b>HKEx, </b>0388), of which your editor is 
an elected director. It owns the Stock Exchange of Hong Kong Ltd (<b>SEHK</b>), 
which makes the Listing Rules.</p>

<p>Another director of HKEx, Dr Lo Ka-shui 
(<b>Dr Lo</b>), is a beneficiary of a trust which has majority control of Great Eagle Holdings 
Limited (<b>GEH, </b>0041), a property and hotel investment company. A 
subsidiary of GEH leases property in Citibank Plaza to 
a subsidiary of HKEx, and GEH, as a listed company, pays listing fees to SEHK.</p>

<p>Although the trustee is an &quot;associate&quot; of Dr Lo and hence a connected person, 
the company the trustee controls, GEH, is not a connected person. So GEH is free 
to deal with HKEx and the transactions are not deemed to be connected 
transactions. GEH could, for example, buy a property from HKEx, and that would 
not be a connected transaction. The only reason we know about this is that Dr Lo 
is also the Managing Director of GEH, so the tenancy agreement is disclosed in 
the accounts as a &quot;related party transaction&quot;, but that is due to the accounting 
standards, not the Listing Rules. </p>

<h3>&quot;Software&quot; patches are urgent</h3>

<p>When people find security loopholes in Microsoft's operating systems, the 
firm publishes software &quot;patches&quot; in a matter of days or weeks, in a race 
against time with hackers who can and will write viruses that will exploit the 
weakness. The Listing Rules are the &quot;software&quot; of the market, and SEHK should 
act with the same speed, to avoid exploitation of loopholes by listed companies, 
who may hack away at shareholder wealth.</p>

<p>But we first brought this loophole to public attention 3 whole years ago, in 
an article on 11-Aug-00 titled <a target="_blank" href="independentpanda.asp">
The Independent Panda</a>. Nothing has changed in the Listing Rules since then, 
and no doubt numerous companies have&nbsp; exploited the loophole before and 
after we reported it. The same situation prevails in most of the other loopholes 
we have reported. The software bugs go unpatched.</p>

<p>That story 3 years ago was about a company then called Panda-Recruit Ltd (8073) of which, 
by coincidence, Dr Lo was then Chairman. Now, in the greatest of ironies, we 
find HKEx passing through the same loophole, which its subsidiary SEHK has not 
closed, by not treating the transactions 
with GEH as connected transactions. We are not alleging any impropriety 
involving GEH or Dr Lo, simply showing you how the loophole works.</p>

<p>This is yet another reason why a listed company should not make the Listing 
Rules. As a special case, the SFC does administer the Listing Rules as applied 
to HKEx, but the SFC can only approve or reject changes to those rules proposed 
by SEHK. If SEHK and its Listing Committees do not feel like closing the 
loophole, then the SFC cannot do anything about it, unless it exercises the 
&quot;nuclear option&quot; in the law which allows it to override the SEHK and impose its 
own rules. It has never done so, and if it did, you would hear howls of protest 
from the same people at HKEx who are now objecting to the Expert Group 
recommendation that the regulatory function be transferred to the SFC.</p>

<h3>What you don't know</h3>

<p>Of course, the biggest abuses facilitated by loopholes like this are the ones 
we don't know about. By using this loophole, any controlling shareholder of a 
listed company could, at this very moment, be benefiting from &quot;unconnected&quot; 
transactions between companies owned by a trust he established and the listed 
company, and you, as an outside shareholder, wouldn't know anything about it 
even as your money is being slowly drained away. Sends a chill down your spine, doesn't it?</p>

<p><em>&copy; Webb-site.com, 2003</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=164">Listing rules</a></li>
				
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