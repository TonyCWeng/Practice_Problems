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
