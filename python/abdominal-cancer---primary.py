# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B600300","system":"readv2"},{"code":"B613300","system":"readv2"},{"code":"B623300","system":"readv2"},{"code":"B602300","system":"readv2"},{"code":"B62y300","system":"readv2"},{"code":"B562z00","system":"readv2"},{"code":"B621300","system":"readv2"},{"code":"B314000","system":"readv2"},{"code":"B620300","system":"readv2"},{"code":"B610300","system":"readv2"},{"code":"B62z300","system":"readv2"},{"code":"B614300","system":"readv2"},{"code":"B624300","system":"readv2"},{"code":"B102.00","system":"readv2"},{"code":"B562.00","system":"readv2"},{"code":"B601300","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["abdominal-cancer---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["abdominal-cancer---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["abdominal-cancer---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
