""" Write a function that takes a string and prints the longest alphabetical ordered substring occurred For 
example, if the string is 'abdulrahman' then the output is: Longest substring in alphabetical order is: abdu
"""

def longest_alphabetical():
    write_str=input("Enter your string here : ")
    longest = write_str[0]
    current = write_str[0]
    for c in write_str[1:]:
        if c > current[-1]:
            current += c
        if len(current) > len(longest):
            longest = current
    else:
        current = c
    return longest

print ("Longest substring in alphabetical order is:", longest_alphabetical())

