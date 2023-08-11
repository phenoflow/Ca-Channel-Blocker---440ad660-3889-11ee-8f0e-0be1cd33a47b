# David A Springate, Darren M Aschroft, Evangelos Kontopantelis, Tim Doran, Ronan Ryan, David Reeves, 2023.

import sys, csv, re

codes = [{"code":"14861","system":"gprdproduct"},{"code":"17325","system":"gprdproduct"},{"code":"17566","system":"gprdproduct"},{"code":"20878","system":"gprdproduct"},{"code":"22019","system":"gprdproduct"},{"code":"22217","system":"gprdproduct"},{"code":"2280","system":"gprdproduct"},{"code":"24366","system":"gprdproduct"},{"code":"2521","system":"gprdproduct"},{"code":"26337","system":"gprdproduct"},{"code":"26774","system":"gprdproduct"},{"code":"34093","system":"gprdproduct"},{"code":"34247","system":"gprdproduct"},{"code":"35189","system":"gprdproduct"},{"code":"35304","system":"gprdproduct"},{"code":"36202","system":"gprdproduct"},{"code":"37726","system":"gprdproduct"},{"code":"38434","system":"gprdproduct"},{"code":"40668","system":"gprdproduct"},{"code":"42210","system":"gprdproduct"},{"code":"42912","system":"gprdproduct"},{"code":"43394","system":"gprdproduct"},{"code":"43511","system":"gprdproduct"},{"code":"43515","system":"gprdproduct"},{"code":"45070","system":"gprdproduct"},{"code":"452","system":"gprdproduct"},{"code":"46445","system":"gprdproduct"},{"code":"46715","system":"gprdproduct"},{"code":"5593","system":"gprdproduct"},{"code":"6477","system":"gprdproduct"},{"code":"6856","system":"gprdproduct"},{"code":"71","system":"gprdproduct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('ca-channel-blocker-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["ca-channel-blocker-100mg---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["ca-channel-blocker-100mg---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["ca-channel-blocker-100mg---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
