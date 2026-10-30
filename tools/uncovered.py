#!/usr/bin/env python3

import re

BANK_SIZE = 0x4000
PADDING = 0xff

with open('pokepuzzle.gbc', 'rb') as file:
	contents = bytearray(file.read())

assert len(contents) % BANK_SIZE == 0
num_banks = len(contents) // BANK_SIZE

covered = [False] * len(contents)

with open('pokepuzzle.map', 'r', encoding='utf-8') as file:
	cur_bank = None
	for line in file:
		if (m := re.match(r'ROM[0X] bank #(\d+):', line)):
			cur_bank = int(m.group(1))
		elif re.match(r'\w+ bank #\d+:', line):
			cur_bank = None
		elif (m := re.match(r'\tSECTION: \$(\w+)-\$(\w+) ', line)) \
			and cur_bank is not None:
			start_addr = int(m.group(1), 16)
			end_addr = int(m.group(2), 16)
			start_offset = cur_bank * BANK_SIZE + (start_addr & 0x3fff)
			end_offset = start_offset + end_addr - start_addr + 1
			for i in range(start_offset, end_offset):
				covered[i] = True

for bank in range(num_banks):
	end_offset = bank * BANK_SIZE - 1
	start_offset = end_offset + BANK_SIZE
	for i in range(start_offset, end_offset, -1):
		if not covered[i] and contents[i] == PADDING:
			covered[i] = True
		else:
			break

def fraction(covered):
	return sum(covered) / len(covered)

for bank in range(num_banks):
	start_offset = bank * BANK_SIZE
	end_offset = start_offset + BANK_SIZE
	bank_covered = covered[start_offset:end_offset]
	print(f'Bank #{bank}: {fraction(bank_covered):.2%}')

print(f'TOTAL: {fraction(covered):.2%}')
