class CreateMealfoodsTable < ActiveRecord::Migration[5.0]
  def change
     create_table :meal_foods do |t|
      t.string :food_id
      t.integer :meal_id 
     end
  end
end
