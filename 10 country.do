clear
frame reset
frame create public_all
frame create public_usd
frame create non_fin_all
frame create non_fin_usd
frame create fin_all
frame create fin_usd
frame create sov_all
frame rename default sov_usd

frame change public_all //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Public, financial and non-financial corporates All Currencies.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(country) string
rename cty lmp_pfnc_all_cur //edit                                                                                           
label variable lmp_pfnc_all_cur "Loan Maturity Profile - Public, financial and non-financial corporates, All curr (USD billion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Public, financial and non-financial corporates All Currencies.dta" //edit

frame change public_usd //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Public, financial and non-financial corporates USD.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(country) string
rename cty lmp_pfnc_usd //edit                                                                                           
label variable lmp_pfnc_usd "Loan Maturity Profile - Public, financial and non-financial corporates, USD (USD billion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Public, financial and non-financial corporates USD.dta" //edit

frame change non_fin_all //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\non-financial corporates all currencies.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(country) string
rename cty lmp_nfc_all //edit                                                                                           
label variable lmp_nfc_all "Loan Maturity Profile - non-financial corporates, All curr (USD billion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\non-financial corporates all currencies.dta" //edit

frame change non_fin_usd //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\non-financial corporates USD.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(country) string
rename cty lmp_nfc_usd //edit                                                                                           
label variable lmp_nfc_usd "Loan Maturity Profile - non-financial corporates, USD (USD billion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\non-financial corporates USD.dta" //edit

frame change fin_all //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\financial corporates all currencies.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(country) string
rename cty lmp_fc_all //edit                                                                                           
label variable lmp_fc_all "Loan Maturity Profile - financial corporates, All curr (USD billion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\financial corporates all currencies.dta" //edit

frame change fin_usd //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\financial corporates USD.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(country) string
rename cty lmp_fc_usd //edit                                                                                           
label variable lmp_fc_usd "Loan Maturity Profile - financial corporates, USD (USD billion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\financial corporates USD.dta" //edit



frame change sov_all //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\sovereign all currencies.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(country) string
rename cty lmp_sov_all //edit                                                                                           
label variable lmp_sov_all "Loan Maturity Profile - sovereign, All curr (USD billion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\sovereign all currencies.dta" //edit

frame change sov_usd //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\sovereign usd.xlsx", sheet("Sheet1") firstrow                 // edit
ren * cty*
rename ctyA date
reshape long cty, i(date) j(country) string
rename cty lmp_sov_usd //edit                                                                                           
label variable lmp_sov_usd "Loan Maturity Profile - sovereign, USD (USD billion)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\sovereign USD.dta" //edit





frame create lmf_total_pfnf_usd
frame create lmf_total_pfnf_all
frame create lmf_total_nfc_usd
frame create lmf_total_nfc_all
frame create lmf_total_fc_usd
frame create lmf_total_fc_all
frame create lmf_total_sov_usd
frame create lmf_total_sov_all

clear
frame change lmf_total_pfnf_usd //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total Public, financial and non-financial corporates USD (2022 to 2028).xlsx", sheet("Sheet1") firstrow //edi
gen seqnum=_n
order seqnum     
ren * cty*
rename ctyseqnum row
reshape long cty, i(row) j(country) string
drop row
rename cty lmf_total_pfnf_usd //edit                                                                                           
label variable lmf_total_pfnf_usd "LMP -Total Public,financial & NF corporates USD in USD Bil(2022 to 2028)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total Public, financial and non-financial corporates USD (2022 to 2028).dta" //edit

clear
frame change lmf_total_pfnf_all //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total Public, financial and non-financial corporates all currencies (2022 to 2028).xlsx", sheet("Sheet1") firstrow //edi
gen seqnum=_n
order seqnum     
ren * cty*
rename ctyseqnum row
reshape long cty, i(row) j(country) string
drop row
rename cty lmf_total_pfnf_all //edit                                                                                           
label variable lmf_total_pfnf_all "LMP - Total Public,financial & NF corporates All Curr in USD Bil(2022 to 2028)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total Public, financial and non-financial corporates all currencies (2022 to 2028).dta" //edit

clear
frame change lmf_total_nfc_usd //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total non-financial corporates USD (2022 to 2028).xlsx", sheet("Sheet1") firstrow //edi
gen seqnum=_n
order seqnum     
ren * cty*
rename ctyseqnum row
reshape long cty, i(row) j(country) string
drop row
rename cty lmf_total_nfc_usd //edit                                                                                           
label variable lmf_total_nfc_usd "LMP - Total non-financial corporates USD in USD Bil(2022 to 2028)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total non-financial corporates USD (2022 to 2028).dta" //edit

clear
frame change lmf_total_nfc_all //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total non-financial corporates all currencies (2022 to 2028).xlsx", sheet("Sheet1") firstrow //edi
gen seqnum=_n
order seqnum     
ren * cty*
rename ctyseqnum row
reshape long cty, i(row) j(country) string
drop row
rename cty lmf_total_nfc_all //edit                                                                                           
label variable lmf_total_nfc_all "LMP - Total non-financial corporates All Curr in USD Bil(2022 to 2028)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total non-financial corporates all currencies (2022 to 2028).dta" //edit

clear
frame change lmf_total_fc_usd //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total financial corporates USD (2022 to 2028).xlsx", sheet("Sheet1") firstrow //edi
gen seqnum=_n
order seqnum     
ren * cty*
rename ctyseqnum row
reshape long cty, i(row) j(country) string
drop row
rename cty lmf_total_fc_usd //edit                                                                                           
label variable lmf_total_fc_usd "LMP - Total financial corporates USD in USD Bil(2022 to 2028)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total financial corporates USD (2022 to 2028).dta" //edit

clear
frame change lmf_total_fc_all //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total financial corporates all currencies (2022 to 2028).xlsx", sheet("Sheet1") firstrow //edi
gen seqnum=_n
order seqnum     
ren * cty*
rename ctyseqnum row
reshape long cty, i(row) j(country) string
drop row
rename cty lmf_total_fc_all //edit                                                                                           
label variable lmf_total_fc_all "LMP - Total financial corporates All Curr in USD Bil(2022 to 2028)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total financial corporates all currencies (2022 to 2028).dta" //edit

clear
frame change lmf_total_sov_usd //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total sovereigns USD (2022 to 2028).xlsx", sheet("Sheet1") firstrow //edi
gen seqnum=_n
order seqnum     
ren * cty*
rename ctyseqnum row
reshape long cty, i(row) j(country) string
drop row
rename cty lmf_total_sov_usd //edit                                                                                           
label variable lmf_total_sov_usd "LMP - Total sovereigns USD in USD Bil(2022 to 2028)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total sovereigns USD (2022 to 2028).dta" //edit

clear
frame change lmf_total_sov_all //edit
import excel "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total sovereigns all currencies (2022 to 2028).xlsx", sheet("Sheet1") firstrow //edi
gen seqnum=_n
order seqnum     
ren * cty*
rename ctyseqnum row
reshape long cty, i(row) j(country) string
drop row
rename cty lmf_total_sov_all //edit                                                                                           
label variable lmf_total_sov_all "LMP - Total sovereigns All Curr in USD Bil(2022 to 2028)"          //edit
save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\Total sovereigns all currencies (2022 to 2028).dta" //edit


frame change public_all
cd "C:\Users\chews\Downloads\Global Debt Monitor\10 country"
merge 1:1 date country using "Public, financial and non-financial corporates USD.dta"
drop _merge
merge 1:1 date country using "non-financial corporates all currencies.dta"
drop _merge
merge 1:1 date country using "non-financial corporates USD.dta"
drop _merge
merge 1:1 date country using "financial corporates all currencies.dta"
drop _merge
merge 1:1 date country using "financial corporates USD.dta"
drop _merge
merge 1:1 date country using "sovereign all currencies.dta"
drop _merge
merge 1:1 date country using "sovereign USD.dta"
drop _merge
merge n:1 country using "Total Public, financial and non-financial corporates USD (2022 to 2028).dta"
drop _merge
merge n:1 country using "Total Public, financial and non-financial corporates all currencies (2022 to 2028).dta"
drop _merge
merge n:1 country using "Total non-financial corporates USD (2022 to 2028).dta"
drop _merge
merge n:1 country using "Total non-financial corporates all currencies (2022 to 2028).dta"
drop _merge
merge n:1 country using "Total financial corporates USD (2022 to 2028).dta"
drop _merge
merge n:1 country using "Total financial corporates all currencies (2022 to 2028).dta"
drop _merge
merge n:1 country using "Total sovereigns USD (2022 to 2028).dta"
drop _merge
merge n:1 country using "Total sovereigns all currencies (2022 to 2028).dta"
drop _merge

gen date2 = qofd(date)
drop date
gen date = date2
drop date2
order date
tsset date, quarterly


save "C:\Users\chews\Downloads\Global Debt Monitor\10 country\10 country.dta" // edit



