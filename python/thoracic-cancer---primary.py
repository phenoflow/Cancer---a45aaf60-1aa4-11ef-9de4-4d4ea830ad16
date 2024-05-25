# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B615200","system":"readv2"},{"code":"B61z200","system":"readv2"},{"code":"B2z..00","system":"readv2"},{"code":"B602200","system":"readv2"},{"code":"B62y200","system":"readv2"},{"code":"B2...11","system":"readv2"},{"code":"B625200","system":"readv2"},{"code":"B62z200","system":"readv2"},{"code":"B561z00","system":"readv2"},{"code":"B313300","system":"readv2"},{"code":"B601200","system":"readv2"},{"code":"B613200","system":"readv2"},{"code":"Byu2300","system":"readv2"},{"code":"B302100","system":"readv2"},{"code":"B551200","system":"readv2"},{"code":"Byu2.00","system":"readv2"},{"code":"B614200","system":"readv2"},{"code":"B101.00","system":"readv2"},{"code":"B561.00","system":"readv2"},{"code":"B2...00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["thoracic-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["thoracic-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["thoracic-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
