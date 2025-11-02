# PRIMARY DIRECTIVE: EXACT REPLICATION

**CRITICAL: This overrides all other considerations**

## The Rule

When migrating ASP pages to Flask, **REPLICATE THE ORIGINAL WEBB-SITE.COM EXACTLY AS IT WAS**.

- If it was on webb-site.com, it goes in the Flask version
- Don't ask "should we include X?" - YES, include it
- Don't question whether shutdown notes, warnings, or any text should be included
- Don't suggest "we probably shouldn't..." - JUST REPLICATE IT
- Match the HTML structure, CSS classes, links, formatting, everything
- Match column order, data formatting, decimal places, everything
- If ASP uses 3 decimals, Flask uses 3 decimals
- If ASP links to officers.asp, Flask links to officers.asp
- If ASP shows shutdown-note.asp, Flask shows the shutdown note

## Migration Status

**The migration deadline (October 31, 2025) was met successfully.** Original webb-site.com shut down as scheduled.

**For remaining stub implementations:**
- Use archived ASP content from `Webb-site ASP files/` directory
- Reference archived outputs in `tests/ground_truth/` and `archive/` directories
- Exact replication principle still applies
- Match functionality, appearance, and behavior of original site

**Note:** Live ASP comparison no longer possible. Use archived content as source of truth for exact replication.

## After Replication

Only AFTER exact replication is complete can we discuss adjustments or improvements.

## Why This Matters

The user has stated this requirement multiple times. Questioning it or suggesting variations wastes time and causes frustration. Speed and accuracy of replication are paramount to preserve 35 years of Hong Kong financial data access.

## Examples

- ❌ "Should we include the shutdown note since Flask is the new platform?"
- ✅ Include the shutdown note exactly as shown on original webb-site.com

- ❌ "We could simplify this by..."
- ✅ Copy it exactly as the ASP version does it

- ❌ "The age column might look better without decimals"
- ✅ Use format(age, '.3f') because that's what ASP does with FormatNumber(age, 3)

- ❌ "We can't test this route because webb-site.com is shut down"
- ✅ Use archived ASP files and ground truth outputs to replicate exactly
