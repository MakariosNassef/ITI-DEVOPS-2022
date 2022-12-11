from registeration import *
from login import login

def register_menu():
    print("1 - register")
    print("2 - Login")
    choice = (input("Enter your choice : "))

    if choice.isdigit():
        if choice == '1':
            register_inputs()
        elif choice == '2':
            login()
        else:
            print("wrong choice")
            register_menu()
    else:
        print("Must be a number")
        register_menu()

register_menu()
