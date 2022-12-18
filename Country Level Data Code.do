clear
use "C:\Users\chews\Downloads\Global Debt Monitor\2a country\2a country.dta"

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\2b country\2b country.dta"
drop _merge

frame create temp
frame change temp
use "C:\Users\chews\Downloads\Global Debt Monitor\3a country\3a country.dta"
merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\3b country\3b country.dta"
drop _merge
frame change default
frameappend temp, drop

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\4 country\4 country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\5a country\5a country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\5b country\5b country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\6a country\6a country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\6b country\6b country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\7a country\7a country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\7b country\7b country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\8a country\8a country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\8a country\8a country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\8b country\8b country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\8b country\8b country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\9 country\9 country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\10 country\10 country.dta"
drop _merge

merge n:1 country using "C:\Users\chews\Downloads\Global Debt Monitor\Mature and Emerging Markets.dta"
drop _merge

merge n:n date market_type using "C:\Users\chews\Downloads\Global Debt Monitor\11 country\11 country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\12 country\12 country.dta"
drop _merge

merge 1:1 date country using "C:\Users\chews\Downloads\Global Debt Monitor\13 country\13 country.dta"
drop _merge