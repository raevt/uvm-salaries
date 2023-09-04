# Visualizing the data

## Visualizations


Frequency histogram of all pay data:
![Frequency histogram of all pay data](/graphs%20and%20tables/freq%20histogram%20all%20data.svg)

Density histogram separated by professors/lecturers:
![Density histogram separated by professors/lecturers](/graphs%20and%20tables/density%20histogram%20separated.svg)

Frequency histogram under 200k, separated by professors/lecturers:
![Frequency histogram under 200k, separated by professors/lecturers](/graphs%20and%20tables/freq%20histogram%20separated%20under%20200k.svg)

Lecturers/professors box and whisker plots:
![Lecturers/professors box and whisker plots](/graphs%20and%20tables/lect%20prof%20box%20and%20whisker%20plots.svg)

Lecturer and professor pay summary statistics:
![Lecturer and professor pay summary statistics](/graphs%20and%20tables/univar%20results%20prof_pay%20lect_pay.png)

Regression on binary variables for professors/lecturers:
![Regression on binary variables for professors/lecturers](/graphs%20and%20tables/pay%20is_prof%20is_lect%20regression.png)

All staff by pay bucket:
![All staff by pay bucket](/graphs%20and%20tables/pie%20staff%20by%20pay%20bucket.svg)

Pay bucket by status:
![Pay bucket by status](/graphs%20and%20tables/pay%20bucket%20by%20status.svg)

Lecturer titles:
![Lecturer titles](/graphs%20and%20tables/lecturers%20tabulated.png)

Professor titles:
![Professor titles](/graphs%20and%20tables/professors%20tabulated.png)

Pie chart for lecturers/professors as a % of teaching population:
![Pie chart for lecturers/professors as a % of teaching population](/graphs%20and%20tables/pie%20percent%20of%20teaching%20pop.svg)

Pie chart for lecturers/professors as a % of total pay of teaching population:
![Pie chart for lecturers/professors as a % of total pay of teaching population](/graphs%20and%20tables/pie%20percent%20of%20pay.svg)

## Some thoughts

It would be useful to be able to sort this data by part-time and full-time staff. Doing some spot-checking on the hundreds of professors with pay from 25,000 to 35,000, it seems most if not all are medical staff, which is presumably reflective only of their teaching income. 

I _could_ make an arbitrary cut-off at some point in that range, but that would not necessarily be accurate, especially for the many full-time non-teaching staff making barely above minimum wage, for whom that is their entire income. What is clear is that there are spikes in low-paid part-time professors and lecturers which skew analyses.

It could also be useful to sort this by specific academic rank, further than the simple lecturer/professor distinction. Though there is a large jump from a lecturer title to a tenure-track position, in theory it is a ranking system, and of course those on lower ranks will be paid less. This system does not, however, reflect the reality of many academics spending their entire career as lecturers. To this end, it would also be interesting to make note of how long people have been in their role, and the roles they held previously. There is data back to 2008 on the UVM site, and back to 1999 on openpayrolls.com, so this may be an interesting project to continue with an analysis focused on the time series aspect: moves from lecturer to professor, increases in pay by professor/lecturer, turnover rates, pay disparity changes, etc.