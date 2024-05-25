# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B62y100","system":"readv2"},{"code":"B620800","system":"readv2"},{"code":"B64..11","system":"readv2"},{"code":"B620100","system":"readv2"},{"code":"B601500","system":"readv2"},{"code":"B623100","system":"readv2"},{"code":"B625800","system":"readv2"},{"code":"B602100","system":"readv2"},{"code":"B620500","system":"readv2"},{"code":"B61z800","system":"readv2"},{"code":"B62y800","system":"readv2"},{"code":"B601100","system":"readv2"},{"code":"B6z0.00","system":"readv2"},{"code":"B641.11","system":"readv2"},{"code":"B62y500","system":"readv2"},{"code":"B61z100","system":"readv2"},{"code":"B61z500","system":"readv2"},{"code":"B614800","system":"readv2"},{"code":"B621500","system":"readv2"},{"code":"B621800","system":"readv2"},{"code":"B602500","system":"readv2"},{"code":"B615100","system":"readv2"},{"code":"B600100","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["lymphatic-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["lymphatic-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["lymphatic-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
