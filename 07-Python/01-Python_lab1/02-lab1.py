#Fill an array of 5 elements from the user, Sort it in descending and ascending orders then display the output.

lst = []
n = int(input("Enter number of elements : "))
for i in range(0, n):
	ele = int(input())
  #this to add a input from user to list
	lst.append(ele)

lst.sort()
print(lst)
lst.sort(reverse = True)
print(lst)

