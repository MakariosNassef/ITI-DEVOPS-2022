""" Write a program which repeatedly reads numbers until the user enters “done”.
==Once “done” is entered, print out the total, count, and average of the numbers.
==If the user enters anything other than a number, detect their
mistake, print an error message and skip to the next number. """


def repeatedly_reads_numbers():
    sum=0
    count=0
    number=input("Enter an number or 'done' to exit: ")
    while number!="done":
        while True:
            if number.isdigit():
                sum+=int(number)
                count = count+1
                break
        number=input("Enter an Number or 'done' to exit: ")
        
    print("Total="+str(sum)+"\nCount="+str(count)+"\nAverage="+str(sum/count))

repeatedly_reads_numbers()

