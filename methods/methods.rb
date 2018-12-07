def welcome
  system "clear"
  puts "🥦 🍎 💫 WELCOME TO MEALMAKER 💫 🍎 🥦"
  sleep 1
  prompt = TTY::Prompt.new
  name =  prompt.ask('What is your name?') 
  return name
  # User.create(:user_name => name)
end




def main_menu
  prompt = TTY::Prompt.new
  choice = prompt.select("What would you like to do?", ["Add Meal", "See/Edit Meals", "Exit Program"])
  return choice
end

def delegate_main_menu(choice, userObj)
  if choice == "See/Edit Meals"
    show_meals(userObj)
    wantToEdit = userObj.ask_to_edit
    if wantToEdit == "Yes" && userObj.meals.size > 0
      meal_id = select_meals_to_edit(userObj)
      edit_meal(meal_id)
      loop_menu(userObj)
    elsif wantToEdit == "Yes" && userObj.meals.size == 0
      puts "You haven't eaten any meals!"
      loop_menu(userObj)
    elsif wantToEdit == "No"
      puts "Well, that sucks"
      loop_menu(userObj)
    end
      
  elsif choice == "Add Meal"
    add_meal(userObj)
    loop_menu(userObj)
  elsif choice == "Exit Program"
    puts "HAVE A GREAT DAY!!"
  end
end


  def loop_menu(userObj)
    system "clear"
    userObj.reload
    choice = main_menu()
    delegate_main_menu(choice, userObj)
  end




def add_meal(userObj)
  meal_name = ask_meal_name
  meal = Meal.create(user: userObj, name:meal_name)
  #meal is the object
  food_array = food_choices
  #food_array = [1,2,3] of food ids
  userObj.add_meal(meal, food_array)
  puts "You consumed #{meal.add_calories} calories!"
end
  


#HELPER METHODS FOR ADDING/EDITING A MEAL ----------
def ask_meal_name 
  prompt = TTY::Prompt.new
  meal_name = prompt.ask("WHAT IS THE NAME OF YOUR MEAL?")
  return meal_name
end

def food_choices  
  prompt = TTY::Prompt.new
  food_names = Food.all.map{|food| {food.food_name => food.id}}
  selected_options = prompt.multi_select("Select Your Foods?", food_names)
  return selected_options
end

#HELPER METHODS FOR ADDING/EDITING A MEAL ----------











  def show_meals(userObj)
    table = TTY::Table.new ["#{userObj.user_name}'s meals!", "Calories", "Foods"], userObj.meal_arrays
    puts table.render(:ascii)
  end

  def select_meals_to_edit(userObj)
    prompt = TTY::Prompt.new
    meal_id = prompt.select("Which would you like to edit?", userObj.meal_names)
    return meal_id
  end

  def edit_meal(meal_id)
    mealObj = Meal.find(meal_id)
    meal_name = ask_meal_name
  #meal is the object
    food_array = food_choices
    mealObj.name = meal_name
    mealObj.food_ids = food_array
    mealObj.save
  end