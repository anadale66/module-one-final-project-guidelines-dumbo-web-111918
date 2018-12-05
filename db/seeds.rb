User.destroy_all
Meal.destroy_all
Food.destroy_all
MealFood.destroy_all

chicken = Food.create(food_name: "Chicken", calories: 200)
bob_sam = User.create(user_name: "Bob Sam")
meal1 = Meal.create(name: "dinner", user: bob_sam)
meal_food1 = MealFood.create(food: chicken, meal: meal1)
