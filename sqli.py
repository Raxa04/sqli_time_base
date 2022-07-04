from pydoc import describe


sec_list = []
dsec_list = []
ascii_bin_list = []
dsec_str = ""


with open("log.txt") as f:
            f_log = f.readlines()

for ligne in f_log:
    sec_list.append(int(ligne.split(" ")[3].split(":")[-1]))

for i in range(len(sec_list)-1):
    s = sec_list[i+1]-sec_list[i]
    if s < 0:
        s += 60
    dsec_list.append(s)
    if (i+1)%4 == 0 and i != 0:
        match s:
            case 2:
                dsec_str += "0"
            case 4:
                dsec_str += "1"
        dsec_str += " "
    else:
        match s:
            case 0:
                dsec_str += "00"
            case 2:
                dsec_str += "01"
            case 4:
                dsec_str += "10"
            case 6:
                dsec_str += "11"
  
ascii_bin_list = dsec_str.split(" ")
#ascii_bin_list.pop(0)

#print(sec_list)
print(dsec_list)
print(dsec_str)
print(ascii_bin_list)

