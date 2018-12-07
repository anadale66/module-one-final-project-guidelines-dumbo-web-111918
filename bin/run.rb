require_relative '../config/environment'

# table = TTY::Table.new ['UserName'], [['a1'], ['b1']]
# puts table.render(:ascii)

#this will return the user object and then saves it to the variable
user_name = welcome()
# userObj = User.all.find {|user|  user.user_name == user_name  }
userObj = User.find_by(user_name: user_name)
# find_or_create_by 
if userObj
    # check to see if user exists
    puts "Welcome back #{userObj.user_name}"
    loop_menu(userObj)

else 

    userObj = User.create(:user_name => user_name)
    puts "Hey #{userObj.user_name}"
    loop_menu(userObj)


    # add_meal(new_user)
    # puts "Thank you for storing your meal with MEALMAKER"
end
# user_choice = show_main_menu
# if user_choice == "add A meal"
#     add_meal(userObj)
# elsif
#     user_choice == "show calories"
#     userObj.show_calories



# binding.pry
# user.show_main_menu
# after_login(user)
# calories 
# chicken = Food.new("Chicken",400)

# puts "This is the calorie count for your meal: #{choices}" 

# meal_calories
# prompt = TTY::Prompt.new
# prompt.ask('What is your name?') do |q| 
#     q.required true
# end

# prompt.ask("How many calories would you like to eat in this meal?")

# choices = %w(Jam Soup Water Egg)
# prompt.multi_select("Select Your Foods?", choices)
# binding.pry