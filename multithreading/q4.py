from threading import *
import threading
def m1():
    tname=threading.currentThread().getName()
    print("Current Thread\t: ",tname)
    print("Good Morning...")

def m2():
    tname=threading.currentThread().getName()
    print("Current Thread\t: ",tname)
    print("Good Evening...")

def m3():
    tname=threading.currentThread().getName()
    print("Current Thread\t: ",tname)
    print("Good Night...")
    
# main thread
print("\tFinding Current Thread - Multithreading")
# creating objects for multiple threads
t1=Thread(target=m1,name="Morning")
t2=Thread(target=m2,name="Evening")
t3=Thread(target=m3,name="Night")
# start threads
t1.start()
t2.start()
t3.start()
print("End of the main thread...")