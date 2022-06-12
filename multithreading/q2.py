from threading import *
def m1():
    for i in range(3):
        print("Good Morning...")
def m2():
    for i in range(3):
        print("Good Evening...")
def m3():
    for i in range(3):
        print("Good Night...")
print("\tMultithreading")
# creating objects for multiple threads
t1=Thread(target=m1,name="Morning")
t2=Thread(target=m2,name="Evening")
t3=Thread(target=m3,name="Night")
# start the threads by calling start method
t1.start()
t2.start()
t3.start()