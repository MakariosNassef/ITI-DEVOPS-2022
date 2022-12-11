class Queue:
    def __init__(self):
        self.items = []

    def check_empty(self):
        return self.items == []

    def enqueue(self, item):
        self.items.insert(0,item)

    def pop_q(self):
        return self.items.pop()

    def size(self):
        return len(self.items)
q=Queue()	
q.enqueue(1)
q.enqueue(2)
q.enqueue(3)
q.enqueue(4)
print(q.size())
print(q.check_empty())
print(q.pop_q())
print(q.size())
print(q.check_empty())
print(q.pop_q())
print(q.size())
print(q.check_empty())
print(q.pop_q())
print(q.size())
print(q.check_empty())