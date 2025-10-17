**Suggest run times for VB.net maintenance code**

We run our code either daily, weekly or continuously depending on how
often the source data updates. The table below has suggested runtimes.
We have changed these a bit from what we use, and you should too,
because if multiple teams are updating data simultaneously then it may
overload the source. So be sensible – if you find your code is choking
then change the runtime.

| **Code** | **Suggested run time** |
|----|:---|
| BuyBacks | 10:45 every weekday. The data are still in old-format .XLS files, so you will need to be “logged in” for the code to work. See comments in the code. |
| CCASS | 04:00 Tues-Sat (capturing previous-day changes) |
| CR | 18:30 every weekday (the HK Companies Registry files are published weekly) |
| GetFinancialReports | 02:30 every Mon-Sat (capturing annual/ interim/ quarterly results and reports filings from HKEX filed the previous day. Note that HKEX has a cut-off of 23:00 for filings, none are allowed on Saturday, and it reopens on Sunday evenings for filing. |
| HKEXdata | 17:00 Mon-Fri |
| HKflights | Hourly |
| HKlawSoc | 23:00 Mon-Fri |
| HKMA | 18:15 Mon-Fri |
| housing | 20:00 every Friday |
| ImmD | 11:30 daily |
| LandReg | 18:30 Mon-Fri |
| Listing | 18:20 Mon-Fri |
| Quarantine | 19:00 daily |
| Quotes | 22:00 Mon-Fri |
| SDI | 18:00 Mon-Fri |
| SFC | 03:00 Tues-Sat |
| Transport | 19:00 Mon-Fri |
| Treasury | Never. This module is used manually to update the Government Accounts Explorer, which is complicated and depends on having files from try.gov.hk (Govt Accounts and Budget Estimates) loaded into the correct folders on your machine. I built this system to cover the detailed Government accounts from 1998-2024, supplemented with requests to IRD and Customs & Excise under the Code on Access to Information. Hopefully someone will take it forward! |
| UKCH | Hourly if not running: the code looks for the 14,160 oldest records and updates those (which takes about an hour), then checks for new companies, then repeats. |
