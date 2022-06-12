from threading import *
from time import sleep
# user defined function 1
def m1():
    for i in range(3):
        print("Good Morning...")
        sleep(2)
# user defined function 2
def m2():
    for i in range(3):
        print("Good Evening...")
# user defined function 3
def m3():
    for i in range(3):
        print("Good Night...")
print("\tDaemon Thread")
t1=Thread(target=m1,name="Morning", daemon=True)
t2=Thread(target=m2,name="Evening")
t3=Thread(target=m3,name="Night")
# start the thread by calling start method
t1.start()
t2.start()
t3.start()