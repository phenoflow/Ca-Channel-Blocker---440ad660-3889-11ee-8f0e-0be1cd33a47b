# David A Springate, Darren M Aschroft, Evangelos Kontopantelis, Tim Doran, Ronan Ryan, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"2811","system":"gprdproduct"},{"code":"3118","system":"gprdproduct"},{"code":"38632","system":"gprdproduct"},{"code":"38818","system":"gprdproduct"},{"code":"38831","system":"gprdproduct"},{"code":"38855","system":"gprdproduct"},{"code":"38865","system":"gprdproduct"},{"code":"38882","system":"gprdproduct"},{"code":"38964","system":"gprdproduct"},{"code":"4852","system":"gprdproduct"},{"code":"517","system":"gprdproduct"},{"code":"793","system":"gprdproduct"},{"code":"8558","system":"gprdproduct"},{"code":"9240","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ca-channel-blocker-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ca-channel-blocker-napppharm---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ca-channel-blocker-napppharm---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ca-channel-blocker-napppharm---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
