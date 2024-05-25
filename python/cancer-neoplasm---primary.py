# David Reeves, David A Springate, Darren M Ashcroft, Ronan Ryan, Tim Doran, Richard Morris, Ivan Olier, Evangelos Kontopantelis, 2024.

import sys, csv, re

codes = [{"code":"B304400","system":"readv2"},{"code":"B442.00","system":"readv2"},{"code":"B161000","system":"readv2"},{"code":"B123.00","system":"readv2"},{"code":"B151000","system":"readv2"},{"code":"B212.00","system":"readv2"},{"code":"B11..11","system":"readv2"},{"code":"B03z.00","system":"readv2"},{"code":"Byu..00","system":"readv2"},{"code":"B497.00","system":"readv2"},{"code":"B062100","system":"readv2"},{"code":"B303500","system":"readv2"},{"code":"B525.00","system":"readv2"},{"code":"B03..00","system":"readv2"},{"code":"B135.00","system":"readv2"},{"code":"B516.00","system":"readv2"},{"code":"B304300","system":"readv2"},{"code":"B304200","system":"readv2"},{"code":"B063.00","system":"readv2"},{"code":"B510400","system":"readv2"},{"code":"B55y200","system":"readv2"},{"code":"B18y300","system":"readv2"},{"code":"B55y000","system":"readv2"},{"code":"B550300","system":"readv2"},{"code":"B453.00","system":"readv2"},{"code":"B301.00","system":"readv2"},{"code":"B056.00","system":"readv2"},{"code":"B308200","system":"readv2"},{"code":"B550200","system":"readv2"},{"code":"B313100","system":"readv2"},{"code":"B221100","system":"readv2"},{"code":"B300C00","system":"readv2"},{"code":"B241000","system":"readv2"},{"code":"B307200","system":"readv2"},{"code":"B308100","system":"readv2"},{"code":"B480.00","system":"readv2"},{"code":"B441.00","system":"readv2"},{"code":"B48y000","system":"readv2"},{"code":"B303000","system":"readv2"},{"code":"B512000","system":"readv2"},{"code":"B307000","system":"readv2"},{"code":"B510500","system":"readv2"},{"code":"B071000","system":"readv2"},{"code":"B306200","system":"readv2"},{"code":"B545000","system":"readv2"},{"code":"B121.00","system":"readv2"},{"code":"B550400","system":"readv2"},{"code":"B500100","system":"readv2"},{"code":"B300B00","system":"readv2"},{"code":"B0z1.00","system":"readv2"},{"code":"B517300","system":"readv2"},{"code":"B485.00","system":"readv2"},{"code":"B307100","system":"readv2"},{"code":"B211.00","system":"readv2"},{"code":"B162.00","system":"readv2"},{"code":"B308300","system":"readv2"},{"code":"B510300","system":"readv2"},{"code":"B443.00","system":"readv2"},{"code":"B306000","system":"readv2"},{"code":"ByuC800","system":"readv2"},{"code":"B174.00","system":"readv2"},{"code":"B520000","system":"readv2"},{"code":"B054.00","system":"readv2"},{"code":"B550000","system":"readv2"},{"code":"B241200","system":"readv2"},{"code":"B142000","system":"readv2"},{"code":"B306100","system":"readv2"},{"code":"B42..00","system":"readv2"},{"code":"B062200","system":"readv2"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('cancer-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["cancer-neoplasm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["cancer-neoplasm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["cancer-neoplasm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
