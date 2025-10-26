# PRIMARY DIRECTIVE: EXACT REPLICATION

**CRITICAL: This overrides all other considerations**

## The Rule

When migrating ASP pages to Flask, **REPLICATE WEBB-SITE.COM EXACTLY AS IT IS**.

- If it's on webb-site.com, it goes in the Flask version
- Don't ask "should we include X?" - YES, include it
- Don't question whether shutdown notes, warnings, or any text should be included
- Don't suggest "we probably shouldn't..." - JUST REPLICATE IT
- Match the HTML structure, CSS classes, links, formatting, everything
- Match column order, data formatting, decimal places, everything
- If ASP uses 3 decimals, Flask uses 3 decimals
- If ASP links to officers.asp, Flask links to officers.asp
- If ASP shows shutdown-note.asp, Flask shows the shutdown note

## After Replication

Only AFTER exact replication is complete can we discuss adjustments or improvements.

## Why This Matters

The user has stated this requirement multiple times. Questioning it or suggesting variations wastes time and causes frustration. The migration deadline was October 31, 2025. Speed and accuracy of replication are paramount.

## Examples

- ❌ "Should we include the shutdown note since Flask is the new platform?"
- ✅ Include the shutdown note exactly as shown on webb-site.com

- ❌ "We could simplify this by..."
- ✅ Copy it exactly as the ASP version does it

- ❌ "The age column might look better without decimals"
- ✅ Use FormatNumber(age, 3) because that's what ASP does
