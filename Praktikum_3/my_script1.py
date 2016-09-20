import fileinput

for line_idx, line in enumerate(fileinput.input()):
    print(line_idx+1, line)

