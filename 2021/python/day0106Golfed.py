# Author: Gauravsingh#6969

import re

a=lambda s:chr(sum(ord(x)for x in s)//len(s))

print(a("Hello"))
print(a("Yes"))
print(a("aaaa"))
print("-----")

b=lambda s:" ".join(re.findall('.[^A-Z]*',s)).capitalize()

print(b("HelloWorld!"))
print(b("HowAreYou?"))
print(b("Simple,Right?"))
print("-----")

s=lambda s:" ".join(sorted(s.split(),key=lambda x:ord(a(x))))

print(s("Hello Yes aaaa"))
