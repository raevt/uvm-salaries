# Preparing data

Steps:
1. Download the [base pay .pdf file](https://www.uvm.edu/sites/default/files/UVM-Office-of-Institutional-Research-and-Assessment/Final_FY23_Base_Pay.pdf)
2. Convert to a .txt file with [Xpdf](https://www.xpdfreader.com/) pdftotext, name it "Final_FY23_Base_Pay.txt"
3. Download [format.py](/format.py) to the same directory as the new .txt file
4. Run format.py
5. Import the resulting .csv to Stata. Ensure that Stata interprets ; (semicolon) as the delimiter, not commas
6. Run the first four commands in [analysis.do](/analysis.do)
