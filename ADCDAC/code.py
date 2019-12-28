print('01000000000','000000000','000000000')
print('11000000000','000000000','000000000')
for i in range(0,16):
 for j in range(0,16):
  for k in range(0,5):
    print("011", end = '')
    print("{0:04b}".format(i), end = '')
    print("{0:04b}".format(j), end = ' ')
    c = i*j
    print("{0:08b}".format(c), end = '')
    print("000000000", end = ' ')
    print('1')
    print("001", end = '')
    print("{0:04b}".format(i), end = '')
    print("{0:04b}".format(j), end = ' ')
    c = i*j
    print("{0:08b}".format(c), end = '')
    print("000000000", end = ' ')
    print('1')


