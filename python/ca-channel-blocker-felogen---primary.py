# David A Springate, Darren M Aschroft, Evangelos Kontopantelis, Tim Doran, Ronan Ryan, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"15221","system":"gprdproduct"},{"code":"18379","system":"gprdproduct"},{"code":"20311","system":"gprdproduct"},{"code":"21145","system":"gprdproduct"},{"code":"21773","system":"gprdproduct"},{"code":"25572","system":"gprdproduct"},{"code":"25777","system":"gprdproduct"},{"code":"26460","system":"gprdproduct"},{"code":"30473","system":"gprdproduct"},{"code":"30557","system":"gprdproduct"},{"code":"32590","system":"gprdproduct"},{"code":"32658","system":"gprdproduct"},{"code":"34187","system":"gprdproduct"},{"code":"41693","system":"gprdproduct"},{"code":"45308","system":"gprdproduct"},{"code":"46955","system":"gprdproduct"},{"code":"47331","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ca-channel-blocker-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ca-channel-blocker-felogen---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ca-channel-blocker-felogen---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ca-channel-blocker-felogen---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
