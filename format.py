"""
    Rae Adimer

    Formats Final_FY23_Base_Pay.txt into a csv
    Note that this uses ; as the delimiter, not commas

    STEPS BEFORE RUNNING:    
    1) Download .pdf from https://www.uvm.edu/sites/default/files/UVM-Office-of-Institutional-Research-and-Assessment/Final_FY23_Base_Pay.pdf
    2) Convert to .txt with Xpdf pdftotext
    3) Save in the same directory as this .py file as "Final_FY23_Base_Pay.txt"
"""

def parse_data():
    # Parses data from Final_FY23_Base_Pay.txt and stores it as a list of tuples of name, title, pay.
    data_list = []
    with open('Final_FY23_Base_Pay.txt', 'r') as file:
        line_counter = 0
        for line in file:
            if line[:2].isspace() == True and line[:3].isspace() == False:
                parsed = line.strip().split('  ')
                counter = 0
                for n in parsed:
                    if n.strip() != '':
                        if counter == 0:
                            name = n.strip()
                            counter += 1
                        elif counter == 1:
                            title = n.strip()
                            counter += 1
                        elif counter == 2:
                            pay = n.strip().replace('$','').replace(',','')
                line_to_add = (name, title, pay)
                data_list.append(line_to_add)
    return data_list

def output_data(data_list):
    # Outputs the data to Final_FY23_Base_Pay.csv
    with open('Final_FY23_Base_Pay.csv', 'w') as file:
        # Note that this uses ; as the separator, not commas, due to the format of names
        file.write('Name;Title;Pay;is_prof;is_lect\n')
        for n in data_list:
            is_lect = 0
            is_prof = 0
            if 'Professor' in n[1]:
                is_prof = 1
            if 'Lecturer' in n[1]:
                is_lect = 1
            file.write(f'{n[0]};{n[1]};{n[2]};{is_prof};{is_lect}\n')

def main():
    output_data(parse_data()) 

if __name__ == "__main__":
    main()