# coding=GB18030

with open('西游记s.txt', 'r', encoding='utf-8') as f:
	#lines = f.read().splitlines()
	lines = f.readlines()

# if statement
"""
if f.closed:
	print('file is closed')
else:
	f.close
	print('close file')
"""

"""
for s in lines:
	print(s)
"""

with open('西游记python.txt', 'w', encoding='utf-8') as f:
	for s in lines:
		if s.lower().find('shubao2s') == -1: # not found shubao2s
			f.write(s)
			f.write('\n')
