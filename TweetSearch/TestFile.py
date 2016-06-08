import re

line = raw_input()
line = re.sub(r'([^\s\w:./]|_)', '', line)
print line