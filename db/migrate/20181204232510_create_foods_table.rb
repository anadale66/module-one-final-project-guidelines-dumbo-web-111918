class CreateFoodsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :food_name
      t.integer :calories
    end
  end
end
