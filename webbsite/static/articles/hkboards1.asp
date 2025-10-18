
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

<script type="text/javascript">document.title="Women and the size of HK boards";</script>

	<div class="summary">Webb-site has completed a database on HK-listed boards since 1990. We begin a series of analyses on board composition, starting with the number and proportion of women on boards, and the size of boards in response to changing rules on the number and proportion of "independent" directors.</div>

<h2 class="center">Women and the size of HK boards<br>
<span class="headlinedate">13 September 2013</span></h2>
<p>During the summer recess, Webb-site has completed a 23-year (and growing) 
database of the boards of HK-listed companies, including delisted companies and 
stretching back to 1-Jan-1990. So we have added a look-back function to several 
pages in <a href="../dbpub">Webb-site Who's Who</a>, which allows you to roll 
back the clock to any date in that period and look at board composition and 
positions held by individuals.</p>
<p>We hope this will foster a range of independent research by our 
universities, but to get things started, we'll look at a few simple statistics, 
starting today with the number and proportion of women on HK boards and the size 
of boards. <a href="../dbpub/FDirsPerListcoHKdstn.asp" target="_blank"><strong>
Click here</strong></a> to see the distribution of women per company. What this 
shows is that currently, the average number of women is 0.93 per board, with 622 
boards, or 39.6%, having no women at all, and 598 (38.0%) having just one.</p>
<p>But were women always in such a minority? The answer is no, it used to be 
even smaller. Just plug in the dates and see:</p>
<table class="numtable center">
	<tr>
		<th rowspan="2">Date</th>
		<th rowspan="2">Cos</th>
		<th colspan="4">Number of women</th>
	</tr>
	<tr>
		<th>Ave.</th>
		<th>0</th>
		<th>1</th>
		<th>&gt;1</th>
	</tr>
	<tr>
		<td>1-Jan-1990</td>
		<td>292</td>
		<td>0.43</td>
		<td>69.2%</td>
		<td>19.9%</td>
		<td>11.0%</td>
	</tr>
	<tr>
		<td>1-Jan-1995</td>
		<td>515</td>
		<td>0.68</td>
		<td>53.6%</td>
		<td>29.7%</td>
		<td>16.7%</td>
	</tr>
	<tr>
		<td>1-Jan-2000</td>
		<td>705</td>
		<td>0.71</td>
		<td>49.2%</td>
		<td>34.9%</td>
		<td>15.9%</td>
	</tr>
	<tr>
		<td>1-Jan-2005</td>
		<td>1095</td>
		<td>0.84</td>
		<td>45.1%</td>
		<td>34.2%</td>
		<td>20.7%</td>
	</tr>
	<tr>
		<td>1-Jan-2010</td>
		<td>1318</td>
		<td>0.90</td>
		<td>42.7%</td>
		<td>34.7%</td>
		<td>22.5%</td>
	</tr>
	<tr>
		<td>1-Jan-2013</td>
		<td>1538</td>
		<td>0.92</td>
		<td>40.6%</td>
		<td>37.4%</td>
		<td>22.0%</td>
	</tr>
	<tr>
		<td>12-Sep-2013</td>
		<td>1572</td>
		<td>0.93</td>
		<td>39.6%</td>
		<td>38.0%</td>
		<td>22.4%</td>
	</tr>
</table>
<p>The number of companies has exploded more than 5-fold from a sleepy 292 at 
the start of the 1990s to 1538 at the start of this year. That is in large part 
due to the arrival of mainland companies, both state-controlled enterprises and 
private-sector ones. The good news for feminists is that the average number of 
women on boards has more than doubled from 0.43 to 0.93. in 1990, 69% of 
companies had no women at all (and for those that did, many of them were the 
Chairman's wife); that figure has now dropped to 39.6%, and more than half of 
companies had a female director by 2000. Also, the proportion with 2 or more 
female directors has risen from 11.0% in 1990 to 22.4% today.</p>
<p>In another page of Webb-site Who's Who, you can see the
<a href="../dbpub/DirsPerListcoHKdstn.asp" target="_blank"><strong>distribution 
of board size</strong></a> at any time since 1990. Board size has increased 
since 1990 due to the introduction of so-called independent non-executive 
directors (<strong>INEDs</strong>) and subsequent changes in those requirements 
explained below, but still, the proportion of seats held by women has increased 
from 5.67% to 10.94% today:</p>
<table class="numtable center">
	<tr>
		<th>Date</th>
		<th>Aver.<br>board<br>size</th>
		<th>Seats<br>held by<br>women</th>
		<th>Women<br>per<br>board</th>
	</tr>
	<tr>
		<td>1-Jan-1990</td>
		<td>7.67</td>
		<td>5.67%</td>
		<td>0.43</td>
	</tr>
	<tr>
		<td>1-Jan-1991</td>
		<td>8.12</td>
		<td>6.37%</td>
		<td>0.52</td>
	</tr>
	<tr>
		<td>1-Jan-1992</td>
		<td>7.95</td>
		<td>6.80%</td>
		<td>0.54</td>
	</tr>
	<tr>
		<td>1-Jan-1993</td>
		<td>7.83</td>
		<td>7.25%</td>
		<td>0.57</td>
	</tr>
	<tr>
		<td>1-Jan-1994</td>
		<td>8.30</td>
		<td>7.91%</td>
		<td>0.66</td>
	</tr>
	<tr>
		<td>1-Jan-1995</td>
		<td>8.69</td>
		<td>7.84%</td>
		<td>0.68</td>
	</tr>
	<tr>
		<td>1-Jan-1996</td>
		<td>8.77</td>
		<td>7.91%</td>
		<td>0.69</td>
	</tr>
	<tr>
		<td>1-Jan-1997</td>
		<td>8.74</td>
		<td>7.80%</td>
		<td>0.68</td>
	</tr>
	<tr>
		<td>1-Jan-1998</td>
		<td>8.73</td>
		<td>8.18%</td>
		<td>0.71</td>
	</tr>
	<tr>
		<td>1-Jan-1999</td>
		<td>8.66</td>
		<td>8.02%</td>
		<td>0.69</td>
	</tr>
	<tr>
		<td>1-Jan-2000</td>
		<td>8.57</td>
		<td>8.32%</td>
		<td>0.71</td>
	</tr>
	<tr>
		<td>1-Jan-2001</td>
		<td>8.56</td>
		<td>8.86%</td>
		<td>0.76</td>
	</tr>
	<tr>
		<td>1-Jan-2002</td>
		<td>8.34</td>
		<td>9.29%</td>
		<td>0.77</td>
	</tr>
	<tr>
		<td>1-Jan-2003</td>
		<td>8.09</td>
		<td>9.81%</td>
		<td>0.79</td>
	</tr>
	<tr>
		<td>1-Jan-2004</td>
		<td>7.98</td>
		<td>10.25%</td>
		<td>0.82</td>
	</tr>
	<tr>
		<td>1-Jan-2005</td>
		<td>8.62</td>
		<td>9.75%</td>
		<td>0.84</td>
	</tr>
	<tr>
		<td>1-Jan-2006</td>
		<td>8.58</td>
		<td>9.79%</td>
		<td>0.84</td>
	</tr>
	<tr>
		<td>1-Jan-2007</td>
		<td>8.61</td>
		<td>9.94%</td>
		<td>0.86</td>
	</tr>
	<tr>
		<td>1-Jan-2008</td>
		<td>8.72</td>
		<td>10.05%</td>
		<td>0.88</td>
	</tr>
	<tr>
		<td>1-Jan-2009</td>
		<td>8.68</td>
		<td>10.20%</td>
		<td>0.88</td>
	</tr>
	<tr>
		<td>1-Jan-2010</td>
		<td>8.63</td>
		<td>10.39%</td>
		<td>0.90</td>
	</tr>
	<tr>
		<td>1-Jan-2011</td>
		<td>8.67</td>
		<td>10.28%</td>
		<td>0.89</td>
	</tr>
	<tr>
		<td>1-Jan-2012</td>
		<td>8.64</td>
		<td>10.53%</td>
		<td>0.91</td>
	</tr>
	<tr>
		<td>1-Jan-2013</td>
		<td>8.54</td>
		<td>10.76%</td>
		<td>0.92</td>
	</tr>
	<tr>
		<td>12-Sep-2013</td>
		<td>8.53</td>
		<td>10.94%</td>
		<td>0.93</td>
	</tr>
</table>
<p>Back in 1990, there was no requirement to have any &quot;independent&quot; 
non-executive directors on boards. That changed in 1993-4. New companies listed 
after 1-Aug-1993 needed 2 INEDs, and existing companies needed 1 INED by 
1-Jul-1994 and 2 INEDs by 31-Dec-1994. Even then, the definition of 
&quot;independent&quot; allowed professional advisers (mainly lawyers), whose firms sold 
services to the company, to be called INED, so many listed companies just 
redesignated an existing director; that practice wasn't abolished until 
30-Sep-2004. Still, the average board size did jump by 0.86 people from 7.83 in 
1993 to 8.69 in 1995.</p>
<p>Over a 6-year period from 1998 to 2004, average board size shrank from 8.73 
to 7.98. This may be due to a number of corporate failures after the dotcom 
crash; directors tend to resign when companies run into trouble. Then on 
30-Sep-2004, the requirement to have 3 INEDs came into force. Consequentially 
the average board size jumped by 0.64 to 8.62 by 1-Jan-2005. That year also saw 
a dip in the proportion of seats held by women, from 10.25% to 9.75%, and it 
didn't recover until sometime in 2009.</p>
<p>Of course, these figures are far from representative of the gender mix in the 
general population and we expect the proportion of women to continue to climb 
from natural forces, but you need to bear in mind some key factors:</p>
<ul>
	<li>The average age of directors is currently 53.4. For those who are 
	university graduates, they entered the workforce about 32 years ago, in 
	1981, or about 1978 for those who are not. That was in an era when gender 
	discrimination was still legal and rampant, and society at large held very 
	different views on the roles of men and women. The graduate intake program 
	of 1981 at major employers would have had a very different gender mix to the 
	graduate intake program of 2013. So for those who are rising on merit rather 
	than family connections, it will take time for the changing intakes in the 
	pipeline of the last 30 years to impact board-room composition. This is 
	reflected in the fact that the average age of male directors is 53.9, while 
	for females it is 49.3 - we will write more about the aging of HK boards in 
	a future article, but in the meantime you can explore the statistics on
	<a href="../dbpub/DirsHKAgeDistn.asp" target="_blank">this page</a>.</li>
	<li>(and we know that this will trigger a flood of e-mails): men and women, 
	on average, are both biologically and psychologically different. They make 
	different value judgements and choices in their lives. They have different 
	hormones and different levels of aggression, amongst other gender 
	differences. Probably a smaller proportion of women than men prioritise 
	climbing the corporate ladder and playing office politics over spending time 
	with their children and families and other options; their value judgments on work-life balance 
	are different. Setting aside the fact that men cannot get pregnant, and with 
	all the back-to-work support that modern employers provide for women, there 
	will still be a significant portion of talented women who choose not to 
	return, or only to work part-time after becoming mothers. For this reason 
	alone, it seems unlikely that the proportion of women on boards will ever 
	get close to 50%.</li>
	<li>Men and women probably have different levels of attraction to business 
	careers, as opposed to other fields. For example,
	<a href="http://data.worldbank.org/indicator/SE.PRM.TCHR.FE.ZS" target="_blank">
	primary school teachers</a> are in large majority female (87% in US and UK, 
	78% in Hong Kong). This does not prove that schools discriminate against 
	male teachers any more than the board figures prove discrimination against 
	women today. Other factors are in play, including the fact that women who 
	are teachers tend to have work-days and holidays that synchronise with their 
	school-age children, so it is easier to maintain their careers after 
	motherhood than it is for businesswomen.</li>
</ul>
<p>Does gender diversity improve corporate performance? The next step in this 
analysis would be to analyse the HK shareholder returns (as measured by the
<a href="WTRlaunch.asp">Webb-site Total Returns</a> series) for any 
correlation with gender diversity. This we have not yet done; others may wish to 
take it on.</p>
<p>Ultimately companies must choose the best people, and the best mix of people, 
for their boards, or they will be less likely to succeed in the competitive 
environment that most of them (other than monopolies) face. Rather like 
selecting a stock portfolio, you will get a better return/risk ratio if you 
diversify the portfolio rather than hire 9 identical directors with the same 
point of view on everything - because then you might as well just have 1 
director.</p>
<p>But this must be a choice for companies and their shareholders, and not 
one imposed by quotas or affirmative action, which would just be discrimination 
in favour of the minority, whether in gender, race, religion, nationality or any 
other aspect. If companies were required to appoint a minimum number or 
proportion of women, then they would of course comply, but it would be a 
sub-optimal box-ticking exercise, rather like most companies treat the 
requirement to have &quot;independent&quot; directors. Which brings us on to...</p>
<h3>Response to the one-third INED rule: shrink the board</h3>
<p>The most recent change in INED requirements is that at least one-third of the 
board must be INEDs (with the existing minimum of 3), effective 1-Jan-2013. We 
can see that a number of companies responded to this by trimming their board 
down from 10 to 9, to avoid having to appoint any new INEDs. Here is what 
happened:</p>
<table class="numtable center">
	<tr>
		<th>Date</th>
		<th>Cos. with<br>9 seats</th>
		<th>Cos. with<br>10 Seats</th>
		<th>Share of cos.</th>
		<th>Share of cos.</th>
	</tr>
	<tr>
		<td>1-Jan-2012</td>
		<td>261</td>
		<td>144</td>
		<td>17.5%</td>
		<td>9.7%</td>
	</tr>
	<tr>
		<td>1-Jan-2013</td>
		<td>351</td>
		<td>66</td>
		<td>22.8%</td>
		<td>4.3%</td>
	</tr>
	<tr>
		<td>12-Sep-2013</td>
		<td>326</td>
		<td>82</td>
		<td>20.7%</td>
		<td>5.2%</td>
	</tr>
</table>
<p>Keep in mind that most companies have a controlling shareholder who votes in 
all director elections, so the INEDs are only as independent as the controller 
wants them to be. See <a href="3wisemonkeys.asp">The three wise 
monkeys of HK boards</a> for more.</p>
<p><em>&copy; Webb-site.com, 2013</em></p>
<hr>

		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=118">Corporate governance - general</a></li>
				
				<li><a href="/dbpub/subject.asp?c=154">Independent Non-Executive Directors</a></li>
				
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