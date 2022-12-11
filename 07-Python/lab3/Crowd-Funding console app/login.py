import json
from registeration import read_file, check_mail

user_id = ""


def login():
    login_email = check_mail()
    login_password = input("Enter your password")
    login_data(login_email, login_password)


def login_data(login_email, login_password):
    global user_id
    data = read_file()
    for user in data:
        if user['email'] == login_email and user['password'] == login_password:
            print("successfully login")
            user_id = user['user_id']
            break
    else:
        print("Wrong login")
        login()