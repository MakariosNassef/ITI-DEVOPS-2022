""" Write a function that accepts two arguments (length, start) to
generate an array of a specific length filled with integer numbers increased by one from start."""


lst =[]
def arr_values(length, start):
    if isinstance(length, int) and isinstance(start, int):
        for i in range(start, length+start):
            lst.append(start)
            start+=1
        print(lst)
        return lst

arr_values(10, 6)

