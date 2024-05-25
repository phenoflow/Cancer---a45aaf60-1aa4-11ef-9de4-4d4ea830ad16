# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B32..00","system":"readv2"},{"code":"B323500","system":"readv2"},{"code":"B325700","system":"readv2"},{"code":"B32z.00","system":"readv2"},{"code":"Byu4.00","system":"readv2"},{"code":"B327000","system":"readv2"},{"code":"B325300","system":"readv2"},{"code":"B327500","system":"readv2"},{"code":"B323100","system":"readv2"},{"code":"B327200","system":"readv2"},{"code":"B327600","system":"readv2"},{"code":"B322000","system":"readv2"},{"code":"B324100","system":"readv2"},{"code":"B327800","system":"readv2"},{"code":"B323300","system":"readv2"},{"code":"B327700","system":"readv2"},{"code":"B326300","system":"readv2"},{"code":"B325600","system":"readv2"},{"code":"B323200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-melanoma---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-melanoma---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-melanoma---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
