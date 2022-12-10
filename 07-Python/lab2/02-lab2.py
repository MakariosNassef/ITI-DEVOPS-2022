"""write a function that takes a number as an argument and if the number divisible by 3 return "Fizz" 
and if it is divisible by 5 return "buzz" and if is is divisible by both return "FizzBuzz"""


def fizzBuzz(number):
    if isinstance(number, int):
        if number % 3 == 0 and number % 5 == 0:
            print("FizzBuzz")
        elif number % 3 == 0:
            print("Fizz")
        elif number % 5 == 0:
            print("Buzz")
        else:
            print("somthin_else")


number = input("Please enter a num: ")
number = int(number)
fizzBuzz(number)

