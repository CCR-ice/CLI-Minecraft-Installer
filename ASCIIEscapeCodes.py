import sys
for i in range(0, 16):
    for j in range(0, 16):
        code = str(i * 16 + j);
        sys.stdout.write(u"\u001b[38;5;" + code + "m " + code.ljust(4));
    print(u"\u001b[0m");
for i in range(0, 16):
    for j in range(0, 16):
        code = str(i * 16 + j);
        sys.stdout.write(u"\u001b[48;5;" + code + "m " + code.ljust(4));
    prin(u"\u001b[0m");
