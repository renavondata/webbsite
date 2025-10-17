**Notes on iplog Schema**

This is a schema resident on the Webb-site server (not the master). I
have included a structure dump which you can restore to the server.

If you don’t care about scrapers overloading the site, and if you don’t
need the contact-us form, then you don’t need this schema.

**The visitors table**

Various popular pages (example: ccass/chistory.asp) call a function in
dbpub/ functions1.asp called “BotChk”, and if they hit the limit
(currently 100) then a Google Captcha is displayed (you will need your
own keys for this, stored in the mailvote.keys table). If the Captcha is
solved then the day-count resets to zero.

The relevant data are stored in the visitors table.

I think Captcha is increasingly easy to bypass either with AI or
low-cost human labour, so you may just modify the script to impose a
hard daily limit instead.

Google Captcha is about to become a paid service anyway (above a certain
limit).

**The submit table**

This is used by contact/default.asp to check how many messages have been
submitted by an IP address today. We set a limit because of spammers
using the form to send us junk mail (particularly from Russia). Captchas
each time did not deter them – again, they are increasingly useless.

DMW
