""" Write a program that generate a multiplication table from 1 to the number passed. """

lst =[]
endnum = input("write the number passed :")
if endnum.isdigit():
    endnum=int(endnum)+1
    for i in range(1, endnum):
      endlist=[]
      for x in range(1, i+1):
        endlist.append(x*i)
      lst.append(endlist)
      
print(lst)