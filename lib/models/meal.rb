class Meal < ActiveRecord::Base
    has_many :meal_foods
    belongs_to :user
    has_many :foods, through: :meal_foods

    def add_calories
        calories = self.foods.map {|food| food.calories}.inject(:+)
        if calories
            return calories
        else
            return 0
        end
    end

    def food_names
        self.foods.map {|food| food.food_name}.join(", ")
    end
end

