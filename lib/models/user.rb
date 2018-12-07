class User < ActiveRecord::Base
    has_many :meals

    # def show_main_menu
    #     prompt = TTY::Prompt.new
    #     prompt.select("What would you like to do, #{self.user_name?}", ["choice1", "choice2", "choice3"])
    # end

    def add_meal(mealObj, food_ids)
        food_ids.each do |f_id|   # get all of our food_id's for this particular meal and 
            MealFood.create(meal: mealObj, food_id: f_id)  # create a new meal_food with that food_id
        end
        # this should create different meal_foods for each food_id in that meal
    #     1 1
    #     1 2
    #     1 4
    end

    def meal_arrays
        self.meals.map do |meal|
            [meal.name, meal.add_calories, meal.food_names]
        end
    end

    def ask_to_edit
        prompt = TTY::Prompt.new
        prompt.select("Would you like to edit these meals?", ["No", "Yes"])
    end

    def meal_names
        meals.map {|meal| {meal.name => meal.id}}
    end

end
