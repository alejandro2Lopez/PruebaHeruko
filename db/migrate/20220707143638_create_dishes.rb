class CreateDishes < ActiveRecord::Migration[7.0]
  def change
    create_table :dishes do |t|
      t.string :name
      t.string :description
      t.money :cost
      t.string :isEnable

      t.timestamps
    end
  end
end
