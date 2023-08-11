# David A Springate, Darren M Aschroft, Evangelos Kontopantelis, Tim Doran, Ronan Ryan, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"16162","system":"gprdproduct"},{"code":"24365","system":"gprdproduct"},{"code":"269","system":"gprdproduct"},{"code":"29","system":"gprdproduct"},{"code":"30915","system":"gprdproduct"},{"code":"30991","system":"gprdproduct"},{"code":"32595","system":"gprdproduct"},{"code":"32917","system":"gprdproduct"},{"code":"34522","system":"gprdproduct"},{"code":"34607","system":"gprdproduct"},{"code":"34975","system":"gprdproduct"},{"code":"35592","system":"gprdproduct"},{"code":"39914","system":"gprdproduct"},{"code":"40639","system":"gprdproduct"},{"code":"43470","system":"gprdproduct"},{"code":"43880","system":"gprdproduct"},{"code":"44859","system":"gprdproduct"},{"code":"45279","system":"gprdproduct"},{"code":"662","system":"gprdproduct"},{"code":"729","system":"gprdproduct"},{"code":"749","system":"gprdproduct"},{"code":"8310","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ca-channel-blocker-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ca-channel-blocker-125mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ca-channel-blocker-125mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ca-channel-blocker-125mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
