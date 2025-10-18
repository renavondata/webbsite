
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

<script type="text/javascript">document.title="EFIL Announces Sale Plans";</script>

	<div class="summary">The Government has announced plans to sell off its surplus equity holdings as a unit trust, which we recommended in February. The plan is short on detail and fails to commit to a scheduled disposal programme, instead preferring to time the launch based on "prevailing market conditions". Has the motive behind the intervention changed from protecting the currency to one of maximising profit? At current prices, we calculate that the Exchange Fund will have to sell HK$177bn of shares, or 79% of its holdings, to reduce its portfolio to the target 5% weighting.</div>

<h2 class="center">EFIL Announces Sale Plans<br>
<span class="headlinedate">21 June 1999</span></h2>
<p>After several months of inward reflection and advice from Goldman Sachs,
ING Barings and Jardine Fleming, the Hong Kong Government
<a target="_blank" href="http://www.info.gov.hk/gia/general/199906/21/0621123.htm">today
announced</a> that it plans to sell its excess equity portfolio, acquired during last
year's intervention, in the form of a unit trust to be listed in Hong Kong.</p>

<h3>No Timing</h3>

<p>The use of a unit trust, which is accessible to retail investors as well
as institutions was something <a href="EFIL1.asp">we recommended in an article</a> on <em>Webb-site.com</em>
back on 8-Feb-99. However, we also said that, in the same way that the Government
pre-announces a schedule of land sales, it should also commit to a timetable for the sale
of its equities in progressive slices, independent of market conditions. This would
provide certainty to the market in terms of future supply of equities, without dumping it
all in one go. For example, selling 2.5% of the portfolio per month for 40 months would be
easily absorbed.</p>

<p>Instead, Exchange Fund Investment Limited (EFIL) has refused to commit to
a timeframe. It states that 4 to 5 months of preparation will be required, but that &quot;<em>the
timing of the launch will depend on the prevailing market conditions</em>&quot;, thereby
leaving uncertainty. This will likely exacerbate volatility in the market as it attempts
to decide what level of Hang Seng Index will be acceptable to EFIL. Today's market
reaction seems overdone, with the HSI now a whisker below 14,000. A sale is still a sale,
and we still have no idea how much the Government will attempt to sell, when, and at what
level.</p>

<p>The apparent effort to &quot;time the market&quot; brings into question
whether the motives of the original intervention have changed. 10 months ago, the
rationale was to protect the Hong Kong dollar against speculators, not to make a killing
by cornering the market. Indeed, the only legal basis on which the HKMA felt able to
intervene was in its role as guardian of the currency. Have these good (but misguided)
intentions now become ones of maximising profit and minimising damage to the share prices
of our largest companies? These share prices have out-performed the rest of the market by
a large degree since intervention began, as we quantify below, benefiting the fund-raising
exercises of several companies and in the process distorting capital allocation within the
economy.</p>

<p>The current value of the portfolio is shown in the table below:</p>
<p class="widthAlert3">Some data are hidden to fit your display.<span class="portrait"> Rotate?</span></p>
<table class="numtable center" style="font-size:10pt">
  <tr>
    <th></th>
    <th class="left">Stock</th>
    <th>Shares held</th>
    <th>Price $<br>21-Jun-99</th>
    <th>Value<br>HK$<br>bn</th>
    <th>% of<br>port-<br>folio</th>
    <th class="colHide3">Cumu-<br>lative<br>%</th>
  </tr>
  <tr>
    <td>1</td>
    <td class="left">HSBC</td>
    <td>237,275,845 </td>
    <td>300.00</td>
    <td>71.18</td>
    <td>31.66</td>
    <td class="colHide3">31.66</td>
  </tr>
  <tr>
    <td>2</td>
    <td class="left">Hutchison Whampoa</td>
    <td>342,194,832 </td>
    <td>72.75</td>
    <td>24.89</td>
    <td>11.07</td>
    <td class="colHide3">42.73</td>
  </tr>
  <tr>
    <td>3</td>
    <td class="left">HK Telecom</td>
    <td>1,080,247,752 </td>
    <td>20.70</td>
    <td>22.36</td>
    <td>9.95</td>
    <td class="colHide3">52.68</td>
  </tr>
  <tr>
    <td>4</td>
    <td class="left">Cheung Kong (Holdings)</td>
    <td>247,140,470 </td>
    <td>71.50</td>
    <td>17.67</td>
    <td>7.86</td>
    <td class="colHide3">60.54</td>
  </tr>
  <tr>
    <td>5</td>
    <td class="left">Sun Hung Kai Properties</td>
    <td>216,741,540 </td>
    <td>71.50</td>
    <td>15.50</td>
    <td>6.89</td>
    <td class="colHide3">67.43</td>
  </tr>
  <tr>
    <td>6</td>
    <td class="left">Hang Seng Bank</td>
    <td>126,067,870 </td>
    <td>91.50</td>
    <td>11.54</td>
    <td>5.13</td>
    <td class="colHide3">72.56</td>
  </tr>
  <tr>
    <td>7</td>
    <td class="left">China Telecom (HK)</td>
    <td>478,806,000 </td>
    <td>22.25</td>
    <td>10.65</td>
    <td>4.74</td>
    <td class="colHide3">77.30</td>
  </tr>
  <tr>
    <td>8</td>
    <td class="left">CLP Holdings</td>
    <td>163,623,440 </td>
    <td>38.40</td>
    <td>6.28</td>
    <td>2.79</td>
    <td class="colHide3">80.09</td>
  </tr>
  <tr>
    <td>9</td>
    <td class="left">New World Dev.</td>
    <td>248,010,824 </td>
    <td>23.65</td>
    <td>5.87</td>
    <td>2.61</td>
    <td class="colHide3">82.70</td>
  </tr>
  <tr>
    <td>10</td>
    <td class="left">Swire Pacific 'A'</td>
    <td>119,403,000 </td>
    <td>39.30</td>
    <td>4.69</td>
    <td>2.09</td>
    <td class="colHide3">84.79</td>
  </tr>
  <tr>
    <td>11</td>
    <td class="left">Henderson Land Dev.</td>
    <td>85,349,000 </td>
    <td>44.40</td>
    <td>3.79</td>
    <td>1.69</td>
    <td class="colHide3">86.48</td>
  </tr>
  <tr>
    <td>12</td>
    <td class="left">HK &amp; China Gas</td>
    <td>326,438,032 </td>
    <td>11.50</td>
    <td>3.75</td>
    <td>1.67</td>
    <td class="colHide3">88.15</td>
  </tr>
  <tr>
    <td>13</td>
    <td class="left">CITIC Pacific</td>
    <td>146,713,000 </td>
    <td>24.90</td>
    <td>3.65</td>
    <td>1.62</td>
    <td class="colHide3">89.77</td>
  </tr>
  <tr>
    <td>14</td>
    <td class="left">Wharf</td>
    <td>136,013,000 </td>
    <td>23.50</td>
    <td>3.20</td>
    <td>1.42</td>
    <td class="colHide3">91.19</td>
  </tr>
  <tr>
    <td>15</td>
    <td class="left">HK Electric</td>
    <td>124,335,500 </td>
    <td>24.90</td>
    <td>3.10</td>
    <td>1.38</td>
    <td class="colHide3">92.57</td>
  </tr>
  <tr>
    <td>16</td>
    <td class="left">Bank of East Asia</td>
    <td>94,268,110 </td>
    <td>20.15</td>
    <td>1.90</td>
    <td>0.84</td>
    <td class="colHide3">93.41</td>
  </tr>
  <tr>
    <td>17</td>
    <td class="left">Cathay Pacific</td>
    <td>139,659,000 </td>
    <td>12.65</td>
    <td>1.77</td>
    <td>0.79</td>
    <td class="colHide3">94.20</td>
  </tr>
  <tr>
    <td>18</td>
    <td class="left">China Resources Ent.</td>
    <td>136,414,000 </td>
    <td>12.85</td>
    <td>1.75</td>
    <td>0.78</td>
    <td class="colHide3">94.98</td>
  </tr>
  <tr>
    <td>19</td>
    <td class="left">Cheung Kong Inf.</td>
    <td>96,403,000 </td>
    <td>16.00</td>
    <td>1.54</td>
    <td>0.69</td>
    <td class="colHide3">95.67</td>
  </tr>
  <tr>
    <td>20</td>
    <td class="left">TVB</td>
    <td>38,851,000 </td>
    <td>37.20</td>
    <td>1.45</td>
    <td>0.64</td>
    <td class="colHide3">96.31</td>
  </tr>
  <tr>
    <td>21</td>
    <td class="left">Shanghai Industrial</td>
    <td>71,413,000 </td>
    <td>17.40</td>
    <td>1.24</td>
    <td>0.55</td>
    <td class="colHide3">96.86</td>
  </tr>
  <tr>
    <td>22</td>
    <td class="left">First Pacific</td>
    <td>143,864,000 </td>
    <td>6.65</td>
    <td>0.96</td>
    <td>0.43</td>
    <td class="colHide3">97.29</td>
  </tr>
  <tr>
    <td>23</td>
    <td class="left">Hopewell</td>
    <td>209,323,000 </td>
    <td>4.38</td>
    <td>0.92</td>
    <td>0.41</td>
    <td class="colHide3">97.69</td>
  </tr>
  <tr>
    <td>24</td>
    <td class="left">Hysan Dev.</td>
    <td>69,732,000 </td>
    <td>12.35</td>
    <td>0.86</td>
    <td>0.38</td>
    <td class="colHide3">98.08</td>
  </tr>
  <tr>
    <td>25</td>
    <td class="left">Wheelock</td>
    <td>62,391,000 </td>
    <td>10.60</td>
    <td>0.66</td>
    <td>0.29</td>
    <td class="colHide3">98.37</td>
  </tr>
  <tr>
    <td>26</td>
    <td class="left">Shangri-la Asia</td>
    <td>61,674,000 </td>
    <td>9.65</td>
    <td>0.60</td>
    <td>0.26</td>
    <td class="colHide3">98.64</td>
  </tr>
  <tr>
    <td>27</td>
    <td class="left">Amoy Properties</td>
    <td>71,135,500 </td>
    <td>7.45</td>
    <td>0.53</td>
    <td>0.24</td>
    <td class="colHide3">98.87</td>
  </tr>
  <tr>
    <td>28</td>
    <td class="left">Sino Land</td>
    <td>107,238,000 </td>
    <td>4.90</td>
    <td>0.53</td>
    <td>0.23</td>
    <td class="colHide3">99.11</td>
  </tr>
  <tr>
    <td>29</td>
    <td class="left">Henderson Inv.</td>
    <td>91,308,000 </td>
    <td>5.75</td>
    <td>0.53</td>
    <td>0.23</td>
    <td class="colHide3">99.34</td>
  </tr>
  <tr>
    <td>30</td>
    <td class="left">HK &amp; Shanghai Hotels</td>
    <td>66,593,666 </td>
    <td>7.15</td>
    <td>0.48</td>
    <td>0.21</td>
    <td class="colHide3">99.55</td>
  </tr>
  <tr>
    <td>31</td>
    <td class="left">Great Eagle</td>
    <td>27,668,000 </td>
    <td>15.30</td>
    <td>0.42</td>
    <td>0.19</td>
    <td class="colHide3">99.74</td>
  </tr>
  <tr>
    <td>32</td>
    <td class="left">Hang Lung Dev.</td>
    <td>33,156,000 </td>
    <td>9.80</td>
    <td>0.32</td>
    <td>0.14</td>
    <td class="colHide3">99.88</td>
  </tr>
  <tr>
    <td>33</td>
    <td class="left">Guangdong Inv.</td>
    <td>157,472,000 </td>
    <td>1.66</td>
    <td>0.26</td>
    <td>0.12</td>
    <td class="colHide3">100.00</td>
  </tr>
  <tr class="total">
    <td></td>
    <td colspan="3" class="left">Total</td>
    <td>224.83</td>
    <td>100.00</td>
    <td class="colHide3"></td>
  </tr>
</table>

<p>The above table is based on today's closing prices and assumes that no
changes have taken place since the portfolio was disclosed in 
<a target="_blank" href="http://www.info.gov.hk/hkma/eng/press/1998/981215e.htm">an
announcement</a> on 15-Dec-98, when it was worth $159bn, including $9bn inherited from the
former SAR Land Fund. Since then the value has increased over 41% (excluding dividends) to
<strong>$225bn</strong>. It is notable that the top 13 holdings account for 90% of the
portfolio value, and HSBC alone accounts for almost one third.&nbsp; </p>

<p>The HKMA <a href="http://www.info.gov.hk/hkma/eng/press/latest/990303e3.htm" target="_blank">announced</a>
on 3-Mar-99 that the new Asset Allocation strategy for the Exchange Fund would include 20%
in the form of equities, of which 5% would be in Hong Kong. In the latest abridged
Exchange Fund Balance Sheet as at 30-Apr-99, the fund had assets of $956bn. Therefor the
target holding of Hong Kong equities is $48bn, and the Government needs to sell about <strong>$177bn
(US$22.8bn)</strong> of shares, or <strong>79%</strong> of its current portfolio. </p>

<h3>Unit Trusts</h3>

<p>So far, Unit Trusts have not been very popular among the retail public in
Hong Kong, as retail investors prefer to make direct investments in individual stocks or
warrants. This may stem in part from the heavy charges placed on subscriptions and
management fees for investing in something that many investors feel (rightly or wrongly)
they understand. Holding stocks directly allows investors to trade in and out of our
volatile market without incurring hefty front-end or back-end (redemption) fees.</p>

<p>Hong Kong also has a highly concentrated equity market with the top 10
stocks accounting for some 66% of total market value at 30-Apr-99 and the next 10
accounting for another 12%, so the average investor can broadly track the market without a
holding a large number of stocks. The new unit trust will need to be very low on charges
and the Government will face a challenge to persuade the public of the perceived benefits
of diversification - probably the only way to achieve this is to offer them a decent
discount on the units.</p>

<p>The Government announcement was short on details, but the unit trust
approach was believed to &quot;cater to the needs of both retail and institutional
investors&quot;.</p>

<h3>What Kind of Unit Trust?</h3>

<p>The term &quot;Unit Trust&quot; is normally used to describe an open-ended
investment fund. What this means is that holders of units can present them to the manager
who will redeem them at the price per unit which reflects the underlying asset value,
usually with a spread attached. This is known as the &quot;bid&quot; price. Conversely,
those who wish to increase their investment may subscribe for new units, at the
&quot;offer&quot; price. A front-end fee, often split between the marketer and manager of
the fund is either added to or built into this price. The difference between prices at
which units are issued and redeemed is known as the &quot;bid-offer&quot; spread.</p>

<p>In the case of the Government Unit Trust (or GUT for short) it is unclear
whether they would allow new subscriptions to the fund, but we would hope not - the last
thing we want is more of the market to be locked up in Government hands. Indeed, we
presume demand for the Units will be met by sales of existing units by the Government. So
the fund should be closed to subscriptions.</p>

<p>The next question is whether redemptions would be possible, that is, will
the Government allow Unit holders to convert their holdings to cash? The answer should
surely be yes, so as to ensure that the price of the Units will always reflect the
underlying value, and the underlying stocks will gradually return to the market as people
cash in their Units.</p>

<p>In this way, the GUT will be a gradually diminishing portfolio, allowing
only redemptions and not subscriptions. As Units are redeemed, the GUT will sell the
underlying securities into the open market to raise funds to pay for the redemption.</p>

<p>If the Units are listed on the Stock Exchange, then investors will be able
to choose between selling their Units in the market compared with redeeming them. If the
time or charges attached to redemption are more than the costs of selling Units in the
market, then it is possible that few of the Units will ever be redeemed and the GUT will
end up as a permanent custodian of a big index portfolio. In that case, it is important
that the directors of GUT are not appointed by Government but elected by Unit holders.
Otherwise, the Government will remain able to exercise the votes and intervene in
commercial affairs of the underlying companies.</p>

<h3>A Weighty Problem</h3>

<p>The GUT is to be &quot;<em>a unit trust product tracking the Hang Seng
Index</em>&quot;.&nbsp; Apart from being great publicity for Hang Seng, this also means
that the weighting of one stock, HSBC, will be about 3 times the normal 10% limit
permitted by the SFC for authorised mutual funds. It is a reflection of how outdated the
Hang Seng Index is when it comes to tracking the Hong Kong economy. HSBC is now a
UK-headquartered global bank with about half its operations outside Hong Kong. It can't go
without mention that Hang Seng Bank, which owns the rights to the index, is a subsidiary
of HSBC as well as a member of its own index.</p>

<h3>The Perils of Indexation</h3>

<p>One hazard of encouraging the investing public to buy Hang Seng
Index-linked units is that they end up boosting the demand for those 33 stocks compared
with the rest of the market. This in turn increases the disparity in cost of capital
between the elite members of the HSI club and those who are not. Since the intervention
began last August, the Hang Seng Index has out-performed the Hang Seng Mid-Cap Index
(which is basically the 101st to 150th largest companies) by about 44%. That makes it
cheaper for the Hang Seng Index members to raise funds than for the rest of the market.
It's the thin end of a dangerous wedge when the cost of capital gets distorted in this
way. In future, when companies move in and out of the Hang Seng Index, there will be a
much more dramatic effect on their prices if the GUT has to dump its holding in the
departing stocks and buy a matching holding in the replacement stocks.</p>

<h3>The Active Portfolio</h3>

<p>With regard to the 5% of the Exchange Fund Assets, or around HK$48bn,
which the Government plans to keep in Hong Kong equities, it said today that it plans to
divide it into two portions (of unknown sizes). One portion will be passively managed (at
low cost) to track the HSI, while the other will be actively managed and &quot;<em>expected
to outperform the Hang Seng Index by investing in individual HSI constituent stocks within
predefined permissible limits</em>&quot;.</p>

<p>This is a great expectation - surely we can't expect them to do much
better if they are only investing in the HSI stocks - or do they know something we don't?
More importantly, it is alarming to read that the Government will only invest in the HSI
constituents. <strong>In other words, intervention in the economy will be restricted to
the top 33 stocks.</strong> If the Government's long term policy is to invest in the Hong
Kong equities market, then surely that capital should be made available to the whole
market and not allocated exclusively to the biggest companies.</p>

<h3>Auction Program</h3>

<p>The Government really should come off the fence and announce a schedule
for the sale if its portfolio. This would provide the certainty that the market needs.
EFIL is unwise to second-guess the market on when &quot;prevailing conditions&quot; will
be right, since this is a reflexive question - the prevailing conditions will reflect the
market's anticipation&nbsp; of what the Government will do.</p>
<p><em>&copy; Webb-site.com, 1999</em></p>
<hr>

		<h4>Organisations in this story</h4>
		<ul>
			
				<li><a href="/dbpub/articles.asp?p=7679">EXCHANGE FUND INVESTMENT LIMITED</a></li>
				
				<li><a href="/dbpub/articles.asp?p=3295">Hong Kong Monetary Authority</a></li>
				
				<li><a href="/dbpub/articles.asp?p=51819">Tracker Fund of Hong Kong</a></li>
				
		</ul>
	
		<h4>Topics in this story</h4>
		<ul>
			
				<li><a href="/dbpub/subject.asp?c=144">Government intervention</a></li>
				
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