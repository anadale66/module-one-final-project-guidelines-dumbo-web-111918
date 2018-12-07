User.destroy_all
Meal.destroy_all
MealFood.destroy_all
Food.destroy_all

Food.create(:food_name => "🍗 CHICKEN ", :calories => 400)
Food.create(:food_name => "🥔 POTATO ", :calories => 500)
Food.create(:food_name => "🍞 BREAD ", :calories => 500)
Food.create(:food_name => "🥛 MILK", :calories => 600)
soup = Food.create(:food_name => "🍵 SOUP", :calories => 700)


# chickan = Meal.create(:name => "chicken ala chicken", :user_id => bob.id)
MealFood.create(:food_id => soup.id, :meal_id => soup.id)
puts "SEEDED"

 