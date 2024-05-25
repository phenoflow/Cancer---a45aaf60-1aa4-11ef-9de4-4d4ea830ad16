# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B62y400","system":"readv2"},{"code":"B614400","system":"readv2"},{"code":"B612400","system":"readv2"},{"code":"B616400","system":"readv2"},{"code":"B563z00","system":"readv2"},{"code":"B551000","system":"readv2"},{"code":"B563.00","system":"readv2"},{"code":"B346.00","system":"readv2"},{"code":"B563000","system":"readv2"},{"code":"B55z.00","system":"readv2"},{"code":"B621400","system":"readv2"},{"code":"B61z400","system":"readv2"},{"code":"B325000","system":"readv2"},{"code":"B202.00","system":"readv2"},{"code":"B313000","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["axillary-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["axillary-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["axillary-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
