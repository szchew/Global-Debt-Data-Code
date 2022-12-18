clear
use "C:\Users\chews\Downloads\Global Debt Monitor\1 global\1 global.dta"

merge 1:1 date sector using "C:\Users\chews\Downloads\Global Debt Monitor\2a global\2a global.dta"
drop _merge

merge 1:1 date sector using "C:\Users\chews\Downloads\Global Debt Monitor\3a global\3a global.dta"
drop _merge

merge m:1 date using "C:\Users\chews\Downloads\Global Debt Monitor\4 global\4 global.dta"
drop _merge

merge m:1 date using "C:\Users\chews\Downloads\Global Debt Monitor\9 global\9 global.dta"
drop _merge

merge m:1 date using "C:\Users\chews\Downloads\Global Debt Monitor\10 global\10 global.dta"
drop _merge

save "C:\Users\chews\Downloads\Global Debt Monitor\Global Level Data.dta"