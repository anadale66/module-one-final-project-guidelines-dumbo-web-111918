User.destroy_all
Meal.destroy_all
MealFood.destroy_all
Food.destroy_all

Food.create(:food_name => "🍗 CHICKEN ", :calories => 435)
Food.create(:food_name => "🥔 POTATO ", :calories => 258)
Food.create(:food_name => "🍞 BREAD ", :calories => 590)
Food.create(:food_name => "🥛 MILK", :calories => 100)
Food.create(:food_name => "🥗 SALAD", :calories => 348)
Food.create(:food_name => "🍔 BURGER", :calories => 722)
Food.create(:food_name => "🥩 STEAK", :calories => 790)
Food.create(:food_name => "🥓 BACON", :calories => 300)
Food.create(:food_name => "🧀 CHEESE", :calories => 120)
Food.create(:food_name => "🌭 HOTDOG", :calories => 345)
Food.create(:food_name => "🥯 BAGEL", :calories => 444)
Food.create(:food_name => "🍝 PASTA", :calories => 426)
Food.create(:food_name => "🥪 SANDWICH", :calories => 244)
Food.create(:food_name => "🍕 PIZZA", :calories => 340)
Food.create(:food_name => "🚬 CIGARETTE", :calories => -50)
Food.create(:food_name => "🌯 BURRITO", :calories => 730)
Food.create(:food_name => "🥞 SALAD", :calories => 177)
Food.create(:food_name => "🍵 SOUP", :calories => 133)
Food.create(:food_name => "🥚 EGG", :calories => 50)
Food.create(:food_name => "🐿 SQUIRREL", :calories => 600)
Food.create(:food_name => "☕️ COFFEE", :calories => 133)
Food.create(:food_name => "💩 POO", :calories => -1044)
Food.create(:food_name => "🍩 DOUGHNUT", :calories => 330)
Food.create(:food_name => "🍪 COOKIE", :calories => 230)
Food.create(:food_name => "🍚 RICE", :calories => 92)
Food.create(:food_name => "🍰 CAKE", :calories => 560)
Food.create(:food_name => "🥟 DUMPLINGS", :calories => 112)
Food.create(:food_name => "🍜 NOODLES", :calories => 100)
Food.create(:food_name => "🍭 LOLIPOP", :calories => 22)
Food.create(:food_name => "🍫 CHOCOLATE", :calories => 442)
Food.create(:food_name => "🍘 SUSHI", :calories => 224)
Food.create(:food_name => "💵 CASH", :calories => -57)
Food.create(:food_name => "🍺 BEER", :calories => 140)
Food.create(:food_name => "🍷 WINE", :calories => 110)
Food.create(:food_name => "🍿 POPCORN", :calories => 56)
Food.create(:food_name => "🧶 MEATBALL", :calories => 122)
Food.create(:food_name => "🧠 BRAIN", :calories => 1022)
Food.create(:food_name => "🧦 SOCKS(OLD)", :calories => -27)
Food.create(:food_name => "🦞 LOBSTER", :calories => 644)
Food.create(:food_name => "🎷 ALTO-SAX", :calories => -100)


# soup = Food.create(:food_name => "🍵 SOUP", :calories => 700)


# chickan = Meal.create(:name => "chicken ala chicken", :user_id => bob.id)
# MealFood.create(:food_id => soup.id, :meal_id => soup.id)
puts "SEEDED"

 