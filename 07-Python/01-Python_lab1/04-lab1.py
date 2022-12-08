""" Write a program that remove all vowels from the input word and generate a brief version of it. """


txt=""
text=input("please inter your words :")
for val in text:
  if val not in ("a","e","i", "o","u"):
    txt=txt+val

print("text after remove vowels=",txt)
