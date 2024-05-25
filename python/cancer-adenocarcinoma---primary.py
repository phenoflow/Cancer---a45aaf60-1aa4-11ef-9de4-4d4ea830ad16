# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B150300","system":"readv2"},{"code":"B160.11","system":"readv2"},{"code":"B142.11","system":"readv2"},{"code":"B00..11","system":"readv2"},{"code":"B118.00","system":"readv2"},{"code":"B57..12","system":"readv2"},{"code":"B150000","system":"readv2"},{"code":"B141.11","system":"readv2"},{"code":"B4...11","system":"readv2"},{"code":"B107.00","system":"readv2"},{"code":"B141.12","system":"readv2"},{"code":"B119.00","system":"readv2"},{"code":"B3...11","system":"readv2"},{"code":"B161211","system":"readv2"},{"code":"B1...11","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-adenocarcinoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-adenocarcinoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-adenocarcinoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
