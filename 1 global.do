clear
frame create global_debt_pct_gdp
frame rename default global_debt_usd_trillion

import excel "C:\Users\chews\Downloads\Global Debt Monitor\1 global\Global sectoral debt, USD trillion.xlsx", sheet("Sheet1") firstrow                 // edit
ren * sec*
rename secA date
reshape long sec, i(date) j(sector) string
rename sec gsd_usd_trillion   //edit                                                                                           
label variable gsd_usd_trillion "Global sectoral debt(USD trillion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\1 global\Global sectoral debt, USD trillion.dta"   
                                                    //edit
frame change global_debt_pct_gdp   //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\1 global\Global sectoral debt, % of GDP.xlsx", sheet("Sheet1") firstrow // edit
ren * sec*
rename secA date
reshape long sec, i(date) j(sector) string
rename sec gsd_pct_gdp   // edit
label variable gsd_pct_gdp "Global sectoral debt(% of GDP)"  // edit
save "C:\Users\chews\Downloads\Global Debt Monitor\1 global\Global sectoral debt, % of GDP.dta"   // edit

frame change global_debt_usd_trillion //edit
cd "C:\Users\chews\Downloads\Global Debt Monitor\1 global" // edit
merge m:1 date sector using "Global sectoral debt, % of GDP"
drop _merge

gen date2 = quarterly(substr(date, 2, .), "QY")
drop date
gen date = date2
drop date2
order date
tsset date, quarterly

save "C:\Users\chews\Downloads\Global Debt Monitor\1 global\1 global.dta" // edit