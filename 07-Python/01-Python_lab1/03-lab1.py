""" Write a program that prints the number of times the string 'iti' occurs in anystring. """


text=input("please inter your string words :")
x = text.split(" ")
vowels =0
for val in x:
  if val in "iti":
    vowels+=1

print("vowels=",vowels)
