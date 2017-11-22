# Short-Circuit Evaluation
def login
  current_session || login_user
end

# With Short-Circuit Evaluation, if current_session is not nil,
# then the login method would proceed to call the login_user method
# Otherwise, it stops short of login_user and never reads that half
# of the OR expression

# conditional assignment
a ||= 2

# if variable a has yet to have been assigned a value, set it equal to 2

p true ^ true


# Options Hash: used to store multiple optional arguments that a method
# might take.
# Options Hashes are so common in Ruby that you can leave out the Hash
# braces when inputting their values as arguments. The Ruby Parser will
# automatically include it.

def trial(primary, options = {})
  p options
end

trial("stuff", stuff1: "apple", stuff2: "ark")
