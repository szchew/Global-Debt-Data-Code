clear
frames reset
frame create mm_sec_agg_pct_gdp
frame rename default mm_sec_agg_usd_trillion

import excel "C:\Users\chews\Downloads\Global Debt Monitor\2a global\MM-Sectoral Aggregates, USD trillion.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(sector) string
rename cty mm_sec_agg_usd_trillion  //edit                                                                                           
label variable mm_sec_agg_usd_trillion "MM-Sectoral Aggregates(USD trillion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\2a global\MM-Sectoral Aggregates, USD trillion.dta"   
                                                    //edit
frame change mm_sec_agg_pct_gdp   //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\2a global\MM-Sectoral Aggregates, % of GDP.xlsx", sheet("Sheet1") firstrow // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(sector) string
rename cty mm_sec_agg_pct_gdp   // edit
label variable mm_sec_agg_pct_gdp "MM-Sectoral Aggregates(% of GDP)"  // edit
save "C:\Users\chews\Downloads\Global Debt Monitor\2a global\MM-Sectoral Aggregates, % of GDP.dta"   // edit

frame change  mm_sec_agg_usd_trillion //edit
cd "C:\Users\chews\Downloads\Global Debt Monitor\2a global" // edit
merge m:1 date sector using "MM-Sectoral Aggregates, % of GDP"
drop _merge

gen date2 = quarterly(substr(date, 2, .), "QY")
drop date
gen date = date2
drop date2
order date
tsset date, quarterly

save "C:\Users\chews\Downloads\Global Debt Monitor\2a global\2a global.dta" // edit