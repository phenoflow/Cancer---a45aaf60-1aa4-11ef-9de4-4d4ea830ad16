# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B201.00","system":"readv2"},{"code":"B322z00","system":"readv2"},{"code":"B20..00","system":"readv2"},{"code":"B582400","system":"readv2"},{"code":"B311100","system":"readv2"},{"code":"B20y.00","system":"readv2"},{"code":"B304z00","system":"readv2"},{"code":"B326200","system":"readv2"},{"code":"B322.00","system":"readv2"},{"code":"B201z00","system":"readv2"},{"code":"B310300","system":"readv2"},{"code":"B311200","system":"readv2"},{"code":"B326100","system":"readv2"},{"code":"B304.00","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-forearm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-forearm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-forearm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
