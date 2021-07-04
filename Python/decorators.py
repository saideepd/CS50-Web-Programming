# Decorator function
# It is like a wrapper around another function
# that'll announce before & after executing a function
# with optionally additional functionalities

def announce(f):
    def wrapper():
        print("About the run the function...")
        f()
        print("Done with the function.")
    return wrapper

# Add/call the announce decorator
@announce
def hello():
    print("Hello, World!")

# Call the hello function
hello()