"""Write a function which has an input of a string from user then it will return the same string reversed."""


lst =[]
def rev():
    revesStr=input("Please enter a string: ")
    for val in revesStr:
        lst.append(val)

    lst.reverse()
    return "".join(lst)

print(rev())

