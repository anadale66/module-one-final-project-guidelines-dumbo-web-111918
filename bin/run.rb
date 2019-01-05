require_relative '../config/environment'

user_name = welcome

userObj = User.find_by(user_name: user_name)

if userObj
    # check to see if user exists
    print "."
    sleep 0.5
    puts "Welcome back!! #{userObj.user_name}!"
    puts " "
    welcome_back
    loop_menu(userObj)
else 
    userObj = User.create(:user_name => user_name)
    puts "Hello #{userObj.user_name}!"
    loop_menu(userObj)
end

