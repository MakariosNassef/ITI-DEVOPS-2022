""" Install python interpreter on your machine.
Write a program that counts up the number of vowels [a, e, i, o,
u] contained in the string. """

text=input("please inter your words :")
vowels =0
other =0
for val in text:
  if val in ("a","e","i", "o","u"):
    vowels+=1
  else:
    other+=1
print("vowels=",vowels)
print("other=",other)
