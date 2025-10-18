
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

<script type="text/javascript">document.title="Submission to HKEx on Weighted Voting Rights";</script>

	<div class="summary">Webb-site calls on HKEx to keep 1-share-1-vote and not to introduce second-class shares or allow companies to install trapdoors in their articles of association. We also launch a petition - please sign it if you agree!</div>

<h2 class="center">Submission to HKEx on Weighted Voting Rights<br>
<span class="headlinedate">21 November 2014</span></h2>
<p>To: The Stock Exchange of Hong Kong Limited (<strong>SEHK</strong>), a 
wholly-owned subsidiary of Hong Kong Exchanges and Clearing Limited (<strong>HKEx</strong>)</p>
<p>This submission responds to your
<a href="http://www.hkex.com.hk/eng/newsconsul/mktconsul/Documents/cp2014082.pdf" target="_blank">
&quot;Concept Paper&quot; on Weighted Voting Rights</a> which you
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2014/140829news.htm" target="_blank">
announced</a> on 29-Aug-2014. We also note the
<a href="http://www.hkex.com.hk/eng/newsconsul/hkexnews/2014/Documents/1408292news.pdf" target="_blank">
presentation</a> by your Head of Listing on the same date.</p>
<p>We are today launching a
<a href="https://secure.avaaz.org/en/petition/HKEx_Keep_1share1vote/" target="_blank">
<strong>petition at this link to keep 1-share-1-vote (&#20445;&#30041;&#19968;&#32929;&#19968;&#31080;)</strong></a>, and 
urge readers to sign it.</p>
<h3>Conflict of interests</h3>
<p>The Concept Paper is unnecessary given the clear weight of public 
opinion from many sectors in the lengthy run-up to its publication. For almost a 
year prior to the Concept Paper, in various forums, it was clear that there is 
strong opposition to departing from the 1-share-1-vote principle that HK has 
maintained since the issue was <a href="aligaga.asp">last discussed</a> 
in 1987. This lead-up was in effect a &quot;soft consultation&quot;, and normally with 
such a negative result, that would have been the end of it, without proceeding 
to a formal paper.</p>
<p>The naked self-interest of HKEx in continuing to push for weakening our 
regulatory standards in the interest of its own profitability once again exposes 
the conflict of interests between being a regulator and a for-profit company. 
The Exchange has no profit incentive to care about quality, only about volume. 
Listing regulation should be transferred to the Securities and Futures 
Commission and the Listing Division should be merged with the Corporate Finance 
Division of the SFC (which already administers the Takeovers Code), producing a 
consistent and holistic set of regulations under a new &quot;Listings and Takeovers 
Authority&quot;. This would also remove the bizarre &quot;dual-filing&quot; system in which we 
have two air-traffic controllers in the same airspace - resulting in clashes 
over companies such as the suspended-resumed-suspended-again
<a href="../dbpub/articles.asp?p=53570">China High Precision Automation Group 
Ltd</a> (0591).</p>
<p>Removal of the regulatory role would free SEHK to pursue its commercial 
interests as an exchange, hopefully in competition with newer more innovative 
exchanges. Incidentally, abolition of your statutory monopoly on running a stock 
market would also drive down your obscene profit margins through lower
<a href="../dbpub/subject.asp?c=122">transaction costs</a> and result in better 
services, such as staying open during lunchtime and reducing minimum bid-offer 
spreads. HKEx could also then get the Government off its board as the Government 
would no longer have a regulatory excuse to be there.</p>
<h3>Increasing ability to abuse minorities</h3>
<p>Corporate governance in HK-listed companies is bad enough already, without 
making the abuse of minority shareholders even easier. At present, controlling 
shareholders have to put a proportionate amount of money at risk; their equity 
is the same as their voting rights. Therefore, if they are minded to benefit 
themselves with over-priced acquisitions, under-priced disposals, continuing 
supplies or sales of goods and services, or over-paying themselves as directors, 
then they will only benefit from the minority interest in each transaction. For 
example, if a controller has 51% of the equity, then when he will only get 49% 
of the benefit of each dollar extracted from the company, because the other 51% 
screws himself rather than the minorities. If we allow second-class shares, then 
a controller could have 51% of the voting rights but only a vanishingly small 
portion of the equity, and would therefore attain much closer to 100% of the 
benefits.</p>
<p>So if there is to be any discussion at all about differential voting rights, 
then we should be going the other way - for example, by requiring that new 
applicants have no shareholder or concert party with more than 30% of the voting 
rights, if necessary by converting some of their equity into non-voting shares, 
thereby reducing the dominance of controlling shareholders in our market, and 
requiring that anyone who wishes to take control must make a general offer and 
succeed in buying out the whole company. So the 
status quo is not &quot;one extreme&quot; as your Chief Executive put it
<a href="http://www.hkex.com.hk/eng/newsconsul/blog/131024blog.htm" target="_blank">
in his blog</a> on 24-Oct-2013, but sets a parity between equity and voting 
rights. We could go the other way.</p>
<h3>Insider dealing and commitment</h3>
<p>Second-class shares would facilitate greater insider dealing by controlling 
shareholders. They could easily vary their equity stake without materially 
changing their voting stake. For example, suppose that each A-share has 10 votes 
and each B-share has 1 vote, but each share has the same economic interest in 
equity. Then if a controller has positive inside information, he can buy 10 
B-shares and sell 1 A-share, increasing his equity by 9 shares without changing 
his voting rights. For shareholders just below the 30% threshold, this would 
avoid triggering a general offer under the Takeovers Code when buying shares. 
For those between 30% and 50%, it would allow them to buy as much equity as they 
liked without breaching the 2% creeper limit (the maximum increase in voting 
rights in 1 year without triggering a general offer) under the Takeovers Code.</p>
<p>Conversely, if a controller has negative inside information, then she 
can sell B-shares and buy A-shares, maintaining her voting rights but cutting 
her economic stake in the company. For a controller just above the 30% voting 
threshold, this would allow her to later increase her equity stake without 
triggering an offer. </p>
<p>By comparison, in a 1-share-1-vote structure, controllers are more committed 
not to sell shares, so that they stay above 30% or 50% in order to avoid being 
subject to the 30% trigger or the 50% creeper on subsequent purchases.</p>
<p>The generation of inside information is not just driven by external factors 
or business performance. A controller who is minded to depress a share price by, 
for example, cutting or ceasing dividend payments, or increasing his pay as a 
director, or causing the company to make an over-priced acquisition from a 
disguised related party, can cut his equity stake before proceeding with these 
intentions and before they are made known to the board. A controller who is 
looking to privatize a company will first undermine the share price with such 
measures (often over a period of years) before making a low-ball offer to the 
public shareholders. If he can depress the price after first dumping his equity 
while maintaining his votes, then he will benefit even more.</p>
<h3>Cheaper privatisations</h3>
<p>Second-class shares would also allow a controller to increase his equity 
stake up to the free-float limit set by the Listing Rules (between 75% and 85% 
of the second-class shares), before making a general offer at a premium to buy 
out the remainder. For example, if A-shares represent 10% of the equity but 90% 
of the votes and B-shares represent 90% of the equity but 10% of the votes, then 
a person with half of the A-shares and no B-shares would start out with 45% 
voting control and 5% of the equity. If the minimum public float is 15% of the 
B-shares, then within a year he could buy 85% of the B-shares (carrying 8.5% of 
the votes) and sell 7.23% of the A-shares (carrying 6.51% of the votes). This 
would increase his equity from 5% to 80.78% at market prices without triggering 
a general offer, as his voting stake would only increase by 1.99%. To complete 
the privatisation, he would only have to pay a premium on the remaining 19.22% 
equity stake.</p>
<h3>Dilution</h3>
<p>Second-class shares would allow potentially limitless equity fund-raising 
without loss of control. Even in a financial crisis, the controller could retain 
control while calling on outside shareholders to contribute further equity. This 
would make it harder for market forces to play a corrective role. By comparison, 
in a 1-share-1-vote structure, management votes are often diluted in a 
restructuring, and new management can more easily take over.</p>
<h3>Trapdoor articles</h3>
<p>In Chapter 5 of your paper you have suggested other possible structures in 
which the voting rights or other governance provisions are distorted by the 
Articles of Association or constitution of the company, or in which special 
rights are conferred on persons who may or may not be shareholders to nominate 
or appoint a certain proportion or majority of the board.</p>
<p>In any market, the regulations on listed companies tend to impose obligations 
(such as the frequency, speed and depth of financial reporting) and governance 
provisions (such as board composition) which are higher than those imposed by 
company law and have regard to the dispersed nature of public ownership. In 
construction terms, the regulations build a firm ground floor that protects 
investors from falling into the basement. However, this ground floor only has 
value if it is the same in all buildings in that city. If some buildings have 
installed trap-doors in their structure through which investors can fall, then 
the investors would need to have detailed knowledge of the architectural 
blue-prints, or constitution, in order to know where the trap-doors may appear 
and how much they undermine the value. This destroys the benefits of having a 
common framework on which buyers can rely.</p>
<p>Those who argue for this <em>caveat emptor</em> approach are missing 
the point of Listing Rules, which provide a common minimum standard to which all 
applicants subscribe and which investors should be able to take for granted. If 
we allow listing applicants to opt out of selected listing rules via their 
constitutions, then we undermine the very fabric of the market. Investors would 
have to attach a discount to the whole market for the risk that companies will 
adopt such structures, or what we call &quot;<strong>trapdoor articles</strong>&quot;.</p>
<h3>Restriction to new applicants is infeasible</h3>
<p>You have suggested that second-class shares, or trapdoor articles, 
might only apply to new listings. This is infeasible because any listed company (call it &quot;OldCo&quot;) can 
transfer assets into a new subsidiary (call it &quot;NewCo&quot;), distribute the shares 
of NewCo to OldCo shareholders, and then NewCo can apply for a listing with its 
second-class shares or trapdoor articles, so it is impractical to somehow create 
a lower standard which only applies to new applicants without undermining the 
whole market.</p>
<p>It is a no-brainer that if investors are asked to choose between two otherwise-identical 
companies, one of which has, or could install, these trapdoors, and one of which 
has not, and could not install, these trapdoors, then the investors will pay more 
for the one which is safer.</p>
<h3>Takeovers Code</h3>
<p>As you know, I am a Deputy Chairman of the Takeovers Panel and have served as 
a member since 2001. It is clear that the Code can accommodate second-class 
shares and it has done in the past - in fact, I was the person who
<a href="../dbpub/articles.asp?p=348">temporarily blocked</a> the Lane Crawford 
privatisation in 1999 by buying enough of the B-shares of that company to veto 
the deal. However, as noted above, if second-class shares are allowed than the 
Code will often only come into play at a later stage in proceedings after a 
controller has already acquired a majority of the equity without triggering an 
offer.</p>
<p>However, it is difficult to see how the Codes could consistently be applied 
in cases where trapdoor articles have changed the way a board of directors is 
constituted, and therefore the way in which control over a company is maintained 
or changed. By &quot;control&quot; I mean the ability to change the majority of the board 
and thereby to take majority decisions in the board which affect the company's 
business. The Takeovers Code interpretation of &quot;control&quot;, meaning 30% or more of 
the voting rights, would cease to be effective if board control can be attained 
or maintained by other means. For example, if a designated group of persons can 
nominate a majority of the board, then even if someone else buys 51% of the 
voting rights, he could not change the majority of the board and obtain de facto 
control.</p>
<p>Therefore the result of trapdoor articles would in effect mean that the 
Takeovers Executive of the SFC would be faced with frequent difficulties 
interpreting how the Code should be applied, and would often have to refer the 
cases to the Takeovers Panel, or its decisions would be appealed to the Panel. 
Like any law or regulation, the Code should have certainty and predictability, 
which benefits both shareholders and issuers. The difficulty of interpretation 
may be so great as to make the Code unworkable, and it may be necessary instead 
to exempt all companies with trapdoor articles from the Code and label them 
clearly as belonging to a second-tier market.</p>
<h3>The competitive issue for HK</h3>
<p>Your Chief Executive's
<a href="http://www.hkex.com.hk/eng/newsconsul/blog/131024blog.htm" target="_blank">
proposition</a> that HK risks &quot;losing a generation of companies from China's new 
economy&quot; is a false one. Good regulation improves the value added by markets, 
and investors will pay for that value. Companies which are willing to sign up to 
standards will get a higher price for their shares than they would in a market 
with lower standards, and the flip side of this is a lower cost of capital for 
the companies, both existing and new. There will always be exceptions to this 
overall outcome, but it is the overall outcome that matters. HK should be 
focusing on improving its legal and regulatory framework, not degrading it.</p>
<p>The vast majority of listing applicants and existing listed companies already 
have a controlling shareholder with at least 30% of the equity. They don't need 
their companies (or spin-offs) to issue second-class shares or pervert their 
constitution to cement their 
position. For the remainder with management who have been diluted by pre-IPO 
financing, most would have enough self-confidence in their abilities as managers 
that they would not need protections against removal, knowing that investors 
will only seek change in extreme circumstances and if they consider that new 
management can offer better value. This is just as true for &quot;technology&quot; 
companies as for any other industry, and the fact that shareholders have the 
reserve power to be able to change bad or stale management in itself provides a 
higher valuation than if they did not have that power.</p>
<p>Yours sincerely,</p>
<p>David M Webb<br>Founder, Webb-site.com</p>
<p><strong>To our readers: if you want to keep 1-share-1-vote (&#20445;&#30041;&#19968;&#32929;&#19968;&#31080;) then please
<a href="https://secure.avaaz.org/en/petition/HKEx_Keep_1share1vote/" target="_blank">sign 
the petition</a> to HKEx.</strong></p>
<p><em>&copy; Webb-site.com, 2014</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=9643">HONG KONG EXCHANGES AND CLEARING LIMITED</a></li>
				
		</ul>
	
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