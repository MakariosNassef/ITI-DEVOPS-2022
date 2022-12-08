""" Write a program that build a Mario pyramid :"""

x=input("write the hight of Mario pyramid :")

for i in range(int(x)):
     print(" " * (int(x) - i) + "*" * (i + 1))
