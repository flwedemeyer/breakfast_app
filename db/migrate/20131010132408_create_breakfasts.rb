class CreateBreakfasts < ActiveRecord::Migration
  def change
    create_table :breakfasts do |t|
      t.string :beverage
      t.string :day
      t.string :entree
      t.string :dessert

      t.timestamps
    end
  end
end
