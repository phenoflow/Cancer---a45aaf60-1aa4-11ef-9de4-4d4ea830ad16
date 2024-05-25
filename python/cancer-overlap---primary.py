# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"ByuA300","system":"readv2"},{"code":"B074.00","system":"readv2"},{"code":"Byu5A00","system":"readv2"},{"code":"B017.00","system":"readv2"},{"code":"B26..00","system":"readv2"},{"code":"B106.00","system":"readv2"},{"code":"B347.00","system":"readv2"},{"code":"B51y200","system":"readv2"},{"code":"B432.00","system":"readv2"},{"code":"B138.00","system":"readv2"},{"code":"B48y200","system":"readv2"},{"code":"B182.00","system":"readv2"},{"code":"B117.00","system":"readv2"},{"code":"B45X.00","system":"readv2"},{"code":"B225.00","system":"readv2"},{"code":"B52W.00","system":"readv2"},{"code":"B524600","system":"readv2"},{"code":"B1z2.00","system":"readv2"},{"code":"B32y000","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-overlap---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-overlap---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-overlap---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
