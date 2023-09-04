/*
	Rae Adimer
	
	Stats for UVM 2022 base pay
*/

// prep data
gen status = 2 if is_prof == 1
replace status = 1 if is_lect == 1
gen prof_pay = pay if is_prof == 1
gen lect_pay = pay if is_lect == 1

// Commands to add/remove non-profs/lects to status
replace status = 0 if is_prof == 0 & is_lect == 0
replace status = . if status == 0

// Frequency histogram all
histogram pay, frequency addlabels

histogram prof_pay, frequency addlabels

// Box plots
univar prof_pay lect_pay
graph hbox pay, over(status)

// twoway hists
twoway (histogram prof_pay, width(5000)) ///
       (histogram lect_pay, width(5000) color(stc2))
twoway (histogram prof_pay if prof_pay <= 200000, freq width(5000)) ///
       (histogram lect_pay if lect_pay <= 200000, freq width(5000) color(stc2))
//

// tests and stuff
ttest pay, by(status)
regress pay is_prof is_lect

// Summary stats
sort is_prof is_lect
by is_prof is_lect: summarize pay
tabulate title if status == 1
tabulate title if status == 2
sort pay

// Pie chart, frequency
graph pie, over(status) plabel(_all per)
// Pie chart, proportion of pay
graph pie pay, over(status) plabel(_all per)

// Pie chart by pay bucket, 0 to 100k, 100k to 200k, 200k and above
gen bucket_status = .
replace bucket_status = 1 if pay < 100000
replace bucket_status = 2 if pay >= 100000 & pay < 200000
replace bucket_status = 3 if pay >= 200000
graph pie, over(bucket_status) plabel(_all per) // all staff
graph pie, over(bucket_status) by(status) plabel(_all sum) // by status

// optional for other analyses
egen total_prof_pay = total(prof_pay)
egen total_lect_pay = total(lect_pay)

// Reformat data for stacked bar graph
egen pay_bucket = cut(pay), at(0(5000)685000)
collapse (sum) n_prof=is_prof n_lect=is_lect, by(pay_bucket)

// Stacked bar graph
graph bar (asis) n_lect n_prof, over(pay_bucket) stack


// More specific data by academic rank? - maybe later





