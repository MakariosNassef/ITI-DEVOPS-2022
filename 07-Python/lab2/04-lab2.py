""" Ask the user for his name then confirm that he has entered his name(not an empty string/integers).
then proceed to ask him for his email and print all this data (Bonus) check if it is a valid email or not """


import re
regex = re.compile(r'([A-Za-z0-9]+[.-_])*[A-Za-z0-9]+@[A-Za-z0-9-]+(\.[A-Z|a-z]{2,})+')
def info():
    while True:
        name=input("Enter your name: ")
        if name.isalpha():
            break
        else:
            print("Enter valid Name")
        
    while True:
        email=input("Enter your email: ")
        if(re.fullmatch(regex,email)):
            break
        else:
            print("Enter valid email")
    print("your name is: "+name+"\nyour email is: "+email)


info()

