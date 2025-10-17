<%Option Explicit%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" type="text/css" href="../templates/main.css">
<!--#include file="functions1.asp"-->
<!--#include file="navbars.asp"-->
<%Dim title
title="The Webb-site HKSAR Accounts Explorer"%>
<title><%=title%></title>
</head>
<body>
<!--#include file="../templates/cotopdb.asp"-->
<h2><%=title%></h2>
<%Call govacBar(3)%>
<h3>Introduction</h3>
<p>Welcome to the Webb-site HKSAR Accounts Explorer.</p>
<p>The purpose of this work is to provide a new tool for researchers, 
journalists and the general public to better understand the HKSAR Government 
accounts over the period since 1st April 1998, the earliest date for which we 
could obtain online data, and the first full fiscal year of the Special 
Administrative Region. The data were mostly publicly available, but in annual 
snapshots rather than usable time series, making it difficult for the user to 
see a historic picture. We also obtained some data via information requests. 
Every data page in this service includes a CSV download link so that you can 
download and analyse the time series yourselves. Charts can also be downloaded 
as image files.</p>
<p>We present the consolidated cash accounts, excluding transfers between funds 
which are eliminated on consolidation. The
<a href="https://www.try.gov.hk/internet/ehpubl_accounts.html" target="_blank">
official accounts</a> comprise the <strong>General Revenue Account (GRA)</strong>, 
the default account under
<a href="https://www.hklii.hk/eng/hk/legis/ord/2/s3.html" target="_blank">
Section 3</a> of the Public Finance Ordinance (<strong>PFO</strong>), together 
with 8 Funds established at various times under
<a href="https://www.hklii.hk/eng/hk/legis/ord/2/s29.html" target="_blank">
Section 29</a> of the PFO. We add a ninth fund, the Bond Fund, as well as the 
Housing Reserve, the returns on the Future Fund and the net surplus/(deficit) on 
the Exchange Fund (which pays returns to the other Funds), for a more complete 
picture, as explained below.</p>
<p>The GRA is mostly for operating income and expenditure, with minor capital 
expenditures. The 9 funds are:</p>
<ul>
	<li><strong>Capital Works Reserve Fund</strong>, established 1-Apr-1982, 
	receives land premiums and finances land acquisitions and infrastructure.</li>
	<li><strong>Capital Investment Fund</strong>, established 1-Apr-1990, to 
	invest in "public sector bodies which are not part of the Government 
	structure and such other bodies as the Finance Committee [of the Legislative 
	Council] may specify". The
	<a href="https://www.try.gov.hk/internet/pde_cbac2021_sinvest21.pdf" target="_blank">
	2021 list</a> includes the Airport, Housing and Urban Renewal Authorities; 5 
	"Trading Funds" including the Post Office and the
	<a href="articles.asp?p=2322557">Companies</a> and Lands Registries; and 
	entities such as <a href="articles.asp?p=11569">MTR Corp Ltd</a> (0066),
	<a href="articles.asp?p=837670">HK Cyberport Development Holdings Ltd</a> 
	(owner of the Cyberport offices, shops and hotel) and
	<a href="articles.asp?p=29477">HK International Theme Parks Ltd</a> (owner 
	of HK Disneyland).</li>
	<li><strong>Civil Service Pension Reserve Fund,</strong> established 
	27-Jan-1995, to pay pensions "in the most unlikely event that the Government 
	cannot meet such liabilities from the [GRA]".</li>
	<li><strong>Disaster Relief Fund</strong> (for non-HK disasters). 
	Established 1-Dec-1993. We have grouped the expenditure by region and 
	country, including Mainland China.</li>
	<li><strong>Innovation and Technology Fund</strong>, established on 
	30-Jun-1999 under the Tung administration and using taxpayer's money to 
	intervene in the economy ever since.</li>
	<li><strong>Land Fund</strong>, established on 1-Jul-1997 under
	<a href="https://www.cmab.gov.hk/en/issues/jd5.htm" target="_blank">Annex 
	III</a> of the Sino-British Joint Declaration to silo half of the land 
	premiums received between the 27-May-1985 Sino-British Joint Declaration and 
	the transfer of sovereignty on 1-Jul-1997. Assets were merged into the EF on 
	1-Nov-1998.</li>
	<li><strong>Loan Fund</strong>, established on 1-Apr-1990 to hold loans for 
	housing, education and other purposes.</li>
	<li><strong>Lotteries Fund</strong>,
	<a href="https://www.legco.gov.hk/1965/h650630.pdf" target="_blank">
	established</a> on 30-Jun-1965 to receive net proceeds of government 
	lotteries until Sep-1975, when the "Mark Six" lottery replaced them. Today 
	the fund receives 15% of sales of the Mark Six, the only legal lottery in 
	HK, run by the Jockey Club. Another 25% is received as Betting Duty by the 
	Inland Revenue Department under the GRA. The Fund also receives the net 
	proceeds from auctions of vehicle registration marks. The fund finances some 
	social welfare services with grants and loans, but these would otherwise be 
	financed by the Social Welfare Department under the GRA, so putting 15% of 
	lottery sales into this silo rather than into Betting Duty provides cover 
	for the lottery monopoly. The Lotteries Fund was excluded from the official 
	consolidation until 2003-04, so we have added it back before that.</li>
	<li><strong>Bond Fund</strong>, established 10-Jul-2009, to hold assets from 
	the issuance of Government bonds, including "Silver Bonds" (non-tradeable, 
	which represent a subsidy to elderly savers, paying above-market interest 
	rates and carrying the Government guarantee), "iBonds" (retail, listed, 
	inflation-linked bonds) and
	<a href="https://www.hkma.gov.hk/eng/key-functions/international-financial-centre/bond-market-development/government-bond-programme/sukuk/" target="_blank">
	Sukuk</a> (which walk and talk like bonds and were issued in 2014, 2015 and 
	2017 as an ill-conceived effort to promote HK as an Islamic finance hub). In 
	the official accounts, the Government euphemistically calls Sukuk 
	"alternative bonds".</li>
</ul>
<p>The Government has also issued bonds via the CWRF, including so-called "Green 
Bonds". In the case of both the Bond Fund and the CWRF, we do not include the 
issue proceeds or the redemption payments in our consolidation, as those would 
distort the picture. Interest payments and expenses, or in the case of Sukuk 
"Periodic distribution payments", are shown on a separate line, as these 
represent an expense for earning the related income.</p>
<h3>Investment income</h3>
<p>We have extracted the investment income from the GRA and the 9 Funds, and 
shown it separately under the "Investment income" heading. Almost all of the 
investment assets of these accounts are held with the <strong>Exchange Fund (EF)</strong> 
run by the HK Monetary Authority.</p>
<p>The Bond Fund receives a return on its assets from the Exchange Fund so we 
need to include that return to get the full picture of investment income, 
although the Government excludes it from the official consolidation.</p>
<p>Also under "investment income" we add movements in the "Housing 
Reserve" (<strong>HR</strong>) and the "Future Fund" (<strong>FF</strong>), 
which were retained off-books as liabilities of the EF rather than booked to the 
official accounts.</p>
<h3>Housing Reserve</h3>
<p>The HR,
<a href="https://www.info.gov.hk/gia/general/201412/18/P201412180437.htm" target="_blank">
established</a> on 18-Dec-2014, a bit of accounting magic 
created by retaining in the EF the investment income on the fiscal reserves for 
2 years to 31-Mar-2016, plus subsequent investment returns, reducing the 
reported Government surplus, purportedly "earmarked" for future expenditure on 
Public Housing construction, because the Government continues to believe it 
should be a landlord rather than just <a href="../articles/housing.asp">provide 
rental subsidies</a> to the poor. </p>
<p>In the <a href="https://www.budget.gov.hk/2019/eng/budget22.html" target="_blank">
Budget Speech</a>  on 27-Feb-2019, the next Financial Secretary announced that the HR 
would be returned to the General Revenue account over 4 
years to 31-Mar-2023, thereby reducing the reported consolidated deficit (or 
increasing the surplus) unless the policy changes again. So the HR represents a deferral of 
income, and our presentation returns that to an as-earned basis.</p>
<h3>The Future Fund</h3>
<p>The FF was
<a href="https://www.budget.gov.hk/2015/eng/budget41.html" target="_blank">
announced</a> on 25-Feb-2015 in the 2015-16 Budget Speech, following a second 
report by the <a href="officers.asp?p=2087575">Working Group on Long-Term Fiscal 
Planning</a> established in 2013. This entailed 
allocating the entire HK$219.7bn balance of the Land Fund to the FF. Details of 
the FF were
<a href="https://www.info.gov.hk/gia/general/201512/18/P201512180542.htm" target="_blank">
announced</a> on 18-Dec-2015, stating that half of the FF would pursue "more 
aggressive returns" (i.e., take more risk) for an initial 10-year period from 
1-Jan-2016, by becoming part of the EF's "Long Term Growth Portfolio" (<strong>LTGP</strong>), 
including private equities and on-HK investment properties. The other half is 
invested by the EF as normal.</p>
<p>The announcement stated that "a structural deficit could surface within 
a decade or so should government expenditure growth keep exceeding Gross 
Domestic Product and revenue growth". This clearly contemplates a deliberate 
double-breach of
<a href="https://www.basiclaw.gov.hk/en/basiclaw/chapter5.html" target="_blank">
Basic Law Article 107</a> which states:</p>
<blockquote>"107. The [HKSAR] shall follow the principle of <em>keeping the 
expenditure within the limits of revenues</em> in drawing up its budget, and strive 
to achieve a fiscal balance, avoid deficits and <em>keep the budget commensurate 
with the growth rate of its gross domestic product</em>." (our italics)</blockquote>
<p>Investment income on the FF is retained as a liability of the EF rather than 
booked to the Land Fund. Effective 1-Jul-2016, HK$4.8bn of the reserve of the 
General Revenue Account
<a href="https://www.info.gov.hk/gia/general/201605/31/P201605310732.htm" target="_blank">
was allocated</a> to the FF as a "top-up".</p>
<p>In 2020, HK$19.5bn (US$2.5bn) of the LF's portion of the FF, plus HK$38.865m 
(US$5m) of expenses,
<a href="https://www.hkexnews.hk/listedco/listconews/sehk/2020/0619/2020061901236.pdf" target="_blank">
was used</a> to bail out <a href="orgdata.asp?p=385">Cathay Pacific Airways Ltd</a> 
(0293.HK) from losses largely inflicted by Government pandemic policies, with an 
issue of Preference shares and Warrants to <a href="orgdata.asp?p=24620622">
Aviation 2020 Ltd</a>.</p>
<p>On 26-Feb-2020, together with the 2020-21 Budget Speech, the Financial 
Secretary
<a href="https://www.info.gov.hk/gia/general/202002/26/P2020022600468.htm" target="_blank">
announced</a> that 10% of the FF would be invested in "projects with a Hong Kong 
nexus" as a "Hong Kong Growth Portfolio", thereby including HK within the scope 
of the FF for the first time, following recommendations by a 4-man
<a href="officers.asp?p=27759553">Group of Experienced Leaders</a> led by <a href="positions.asp?p=57">Victor Fung Kwok 
King</a>. A
<a href="officers.asp?p=25235323">Governance Committee</a>, including Mr Fung, 
was established on 30-Sep-2020. On 3-Sep-2021, the Government
<a href="https://www.info.gov.hk/gia/general/202109/03/P2021090300263.htm" target="_blank">
announced</a> that 3 unnamed private equity firms had been appointed, followed 
by another 5
<a href="https://www.info.gov.hk/gia/general/202112/30/P2021123000158.htm" target="_blank">
announced</a> on 30-Dec-2021. We filed an Information Request asking for the 
names of these firms, but the Government refused to tell us.</p>
<h3>The Exchange Fund</h3>
<p>In the official accounts, the rate at which income is credited from the EF to the fiscal reserves is 
based on an arbitrary formula determined by the Financial Secretary, and has 
changed over the years. The remaining surplus/deficit is held by the EF, which 
is owned by the Government. So you only get a full picture if you add the 
surplus/deficit of the EF to the official accounts, which we do. The EF has a 
December year-end, so we use that in the Government's following March accounts. 
From calendar 2000 to 2003, the HK Monetary Authority did not publish group 
accounts before resuming in 2004, so we add the attributable profits of 
subsidiaries for 2000-2002 to the Fund-only accounts, and make a final 
adjustment in 2002 (accounting year Mar-2003) to bring the accumulated 
consolidated surplus into line.</p>
<h3>Sources and methods</h3>
<p>The Government has begun releasing its accounts in machine-readable format, 
but these only go back to the year ended 31-Mar-2015. We've managed to add 16 
years to that. For the GRA's revenue, 
expenses by-head and by-component, we went through all the 
online
<a href="https://www.try.gov.hk/internet/eharch_annual.html" target="_blank">
Government Accounts</a> PDFs for 12 years, starting with the year ended 31-Mar-2003, converting 
them by hand and importing them. Then we went to the
<a href="https://www.budget.gov.hk/2022/eng/previous.html" target="_blank">
Budget Estimates</a> and compiled data on 4 more years, back to the year 
beginning 1-Apr-1998, the first complete fiscal year after the Handover of 
sovereignty.</p>
<p>Over that long period, government bureaux and departments (<strong>B&amp;Ds</strong>) 
have been merged and split numerous times. We show the current arrangement of 
the B&amp;Ds, with any defunct B&amp;Ds underneath them, to provide, as near as 
possible, comparable accounts for revenue and expenditure over time.</p>
<p>For the Capital Works Reserve Fund, we imported 
machine-readable data back to 2014-15 and added data from PDFs back to 2007-08, which is why there is more detail form 
that year onwards, down to individual projects. Want to see the expenditure on 
mountain bike trails in Lantau? It's <a href="govac.asp?t=0&amp;i=3383">in there</a>. 
Before 2007-08, the PDFs 
combined English and Chinese text into one file, so extracting the data would be more 
tedious and we haven't done it.</p>
<p>We also found some summary accounts in the online
<a href="https://www.gld.gov.hk/egazette/english/index.html">Gazette</a>  back to 
2000, which includes the comparative year to 31-Mar-1999.</p>
<p>We added detail from other sources, including 
the Inland Revenue Department's <a href="https://www.ird.gov.hk/eng/ppr/are.htm" target="_blank">annual reports</a>, 
so for example, we have a history of
<a href="govac.asp?i=1021">daytime horse race Betting Duty</a> back to 1998-99.</p>
<p>We sourced a breakdown of <a href="govac.asp?t=0&amp;i=623" target="_blank">
Social Security Allowances</a> from the "<a href="https://www.swd.gov.hk/storage/asset/section/296/en/swdfig2021(Fast_web_view).pdf" target="_blank">Social 
Welfare Services in Figures</a>"" leaflets, including those rescued from 
archive.org, as SWD only keeps the latest year on its website. The one-off 
allowances since 2010-11 are not included in the main line for CSSA/SSA, they are 
in the "<a href="govac.asp?t=0&amp;i=626" target="_blank">General Non-recurrent</a>" 
line. We have filed an information request for a breakdown of the allowances in 
the recurrent and non-recurrent lines.</p>
<p>We obtained a breakdown of revenue from "dutiable commodities" under an 
Information Request from the Customs and Excise Department. For example, you can 
see <a href="govac.asp?t=0&amp;i=5970" target="_blank">duty on cigars</a>, but 
this was only available on a gross basis, so the figures are slightly larger 
than the net totals after refunds. The department only kept data for the last 10 
years from 2011-12 onwards.</p>
<p>For some items, the time series stops abruptly because the responsibility has been 
transferred to a different Department or Bureau, or because a dedicated 
off-balance-sheet fund has been endowed to take it forward. In the GRA up to 
2003-04, subventions to various "non-departmental public bodies" were shown under a
<a href="govac.asp?t=0&amp;i=1468">single heading</a>. 
After that, they were transferred to various Bureaus/Departments.</p>
<p>We have not adjusted any of these data for inflation, or for population 
growth (showing per capita figures). Those are 
on our to-do list but relatively easy for you to do with the CSV downloads, so 
it is left as an exercise for the reader. We do provide the option of showing 
results as a share of GDP, keeping in mind <a href="https://www.basiclaw.gov.hk/en/basiclaw/chapter5.html" target="_blank">
Basic Law Article 107</a> which requires the HKSAR to "keep the budget 
commensurate with the growth rate of its gross domestic product". Spoiler alert: 
it hasn't. GDP data are
<a href="https://www.censtatd.gov.hk/en/web_table.html?id=31" target="_blank">
collected from</a> the Census and Statistics Department.</p>
<h3>Limitations</h3>
<p>The Government's cash accounts do not directly show the annual revenue and 
expenditure of various statutory bodies such as the Airport Authority, Housing 
Authority, Urban Renewal Authority and the West Kowloon Cultural District 
Authority, although they do show the cash amounts invested in, granted to, or 
loaned to, such bodies. Being cash accounts, they also do not show the value of 
land transferred to such bodies.</p>
<h3>Search away</h3>
<p>Not sure where to start? The search button at the top of this page lets you 
dive in with a keyword or two to search over 5,000 lines of accounting data.</p>
<!--#include virtual="/templates/footerdb.asp"-->
</body>
</html>
