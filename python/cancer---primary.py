# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B62F100","system":"readv2"},{"code":"B627.11","system":"readv2"},{"code":"B61C.00","system":"readv2"},{"code":"B630400","system":"readv2"},{"code":"B628.00","system":"readv2"},{"code":"B677.00","system":"readv2"},{"code":"B62F200","system":"readv2"},{"code":"B640000","system":"readv2"},{"code":"B1z0.11","system":"readv2"},{"code":"B61..11","system":"readv2"},{"code":"B671.11","system":"readv2"},{"code":"B22z.11","system":"readv2"},{"code":"B10z.11","system":"readv2"},{"code":"B641000","system":"readv2"},{"code":"B590.00","system":"readv2"},{"code":"B62F000","system":"readv2"},{"code":"B595.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
