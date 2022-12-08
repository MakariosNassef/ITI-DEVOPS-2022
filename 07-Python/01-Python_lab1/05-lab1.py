""" Write a program that prints the locations of "i" character in any string you added."""

location=1

text=input("please inter your word to git locations :")
for val in text:
  if val not in "i":
    location+=1


print("text after remove vowels=",location)
