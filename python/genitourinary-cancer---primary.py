# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B492.00","system":"readv2"},{"code":"B4...00","system":"readv2"},{"code":"B581.00","system":"readv2"},{"code":"B4z..00","system":"readv2"},{"code":"B494.00","system":"readv2"},{"code":"B49..00","system":"readv2"},{"code":"B4y..00","system":"readv2"},{"code":"B4Ay000","system":"readv2"},{"code":"B49y.00","system":"readv2"},{"code":"Byu9.00","system":"readv2"},{"code":"B581z00","system":"readv2"},{"code":"B490.00","system":"readv2"},{"code":"B4Ay.00","system":"readv2"},{"code":"B493.00","system":"readv2"},{"code":"B49z.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["genitourinary-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["genitourinary-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["genitourinary-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
