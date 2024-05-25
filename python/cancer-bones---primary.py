# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B307z00","system":"readv2"},{"code":"B308z00","system":"readv2"},{"code":"B305z00","system":"readv2"},{"code":"B307.00","system":"readv2"},{"code":"B585.00","system":"readv2"},{"code":"B300900","system":"readv2"},{"code":"B300700","system":"readv2"},{"code":"B300200","system":"readv2"},{"code":"B3z..00","system":"readv2"},{"code":"B305.00","system":"readv2"},{"code":"B3...00","system":"readv2"},{"code":"B585000","system":"readv2"},{"code":"B3y..00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-bones---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-bones---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-bones---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
