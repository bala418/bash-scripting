from threading import *
def welcome():
    print("Hello World...")
print("\tSingle Thread")

# creating object for single thread
t1=Thread(target=welcome, name="Thread 1")
# start the thread by calling start method
t1.start()