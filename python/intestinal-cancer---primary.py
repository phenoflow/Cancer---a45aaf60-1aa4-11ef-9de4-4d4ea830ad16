# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B471z00","system":"readv2"},{"code":"B471.00","system":"readv2"},{"code":"B58y600","system":"readv2"},{"code":"B575z00","system":"readv2"},{"code":"B574z00","system":"readv2"},{"code":"B12z.00","system":"readv2"},{"code":"B47z.12","system":"readv2"},{"code":"B470z00","system":"readv2"},{"code":"B12..00","system":"readv2"},{"code":"B575.00","system":"readv2"},{"code":"B574.00","system":"readv2"},{"code":"B47z.00","system":"readv2"},{"code":"B470.00","system":"readv2"},{"code":"B124.00","system":"readv2"},{"code":"B471100","system":"readv2"},{"code":"B470300","system":"readv2"},{"code":"B47..00","system":"readv2"},{"code":"B62x500","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["intestinal-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["intestinal-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["intestinal-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
