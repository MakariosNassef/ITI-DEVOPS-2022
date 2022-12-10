""" Word guessing game (hangman)
A list of words will be hardcoded in your program, out of
which the interpreter will choose 1 random word.
The user first must input their names

Ask the user to guess any alphabet. If the random word contains that alphabet, it
○will be shown as the output(with correct placement)
○Else the program will ask you to guess another alphabet.
○Give 7 turns maximum to guess the complete word. """



import random as rdm

name = input("What is your NAME ? ")
words = ['mac', 'apple', 'ibm']
word = rdm.choice(words)
print("Please guess the characters: ")
guesses = ''
turns = 7
while turns > 0:
    failed = 0
    for char in word:
        if char in guesses:
            print(char, end="")
        else:
            print("_", end="")
            failed += 1
    print()

    if failed == 0:
        print(" Winer winer")
        print("The correct word is: ", word)
        break

    try1 = input("try another character:")
    guesses += try1

    if try1 not in word:
        turns -= 1
        print("try Guess")
        print("You have ", + turns, 'more guesses ')

        if turns == 0:
            print("Game Over Try agin")