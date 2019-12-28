s = str (input());
s1 = "bomb"
s2 = "knife"
s3 = "terror"
s4 = "gun"
count_s1 = 0;
count_s2 = 0;
count_s3 = 0;
count_s4 = 0;
f = 0;
print('0100000','0','0')
print('1100000','0','0')
b = 0;
for i in range(0, len(s)):
 print('00',end='')
 b = ord(s[i])-96;
 if s[i] == ' ' :
  b = 30
 print("{0:05b}".format(b), end = ' ')
 if count_s1 < len(s1) - 1 :
  if s[i] == s1[count_s1]:
   count_s1 = count_s1 + 1
 if count_s1 == len(s1)-1 :
  if s[i] == s1[count_s1] :
   print('1', '1')
   print('10',end='')
   print("{0:05b}".format(b), end = ' ')
   print('1', '0')
   f = 1
   count_s1 = count_s1 + 1
 if count_s2 < len(s2) - 1 :
  if s[i] == s2[count_s2] :
   count_s2 = count_s2 + 1
 if count_s2 == len(s2)-1:
  if s[i] == s2[count_s2] :
   print('1', '1')
   print('10',end='')
   print("{0:05b}".format(b), end = ' ')
   print('1', '0')
   f = 1
   count_s2 = count_s2 + 1
 if count_s3 < len(s3) - 1 :
  if s[i] == s3[count_s3]: 
   count_s3 = count_s3 + 1
 if count_s3 == len(s3)-1:
  if s[i] == s3[count_s3] :
   print('1', '1')
   print('10',end='')
   print("{0:05b}".format(b), end = ' ')
   print('1', '0')
   f = 1
   count_s3 = count_s3 + 1
 if count_s4 < len(s4) - 1 :
  if s[i] == s4[count_s4]:
   count_s4 = count_s4 + 1
 if count_s4 == len(s4)-1:
  if s[i] == s4[count_s4]:  
   print('1', '1')
   print('10',end='')
   print("{0:05b}".format(b), end = ' ')
   print('1', '0')
   f = 1
   count_s4 = count_s4 + 1 
 if f == 0 :
  print('0', '1')
  print('10',end='')
  print("{0:05b}".format(b), end = ' ')
  print('0', '0')
 else :
  f = 0
