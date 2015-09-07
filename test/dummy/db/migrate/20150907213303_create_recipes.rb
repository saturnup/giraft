class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.integer :recipe_book_id

      t.timestamps null: false
    end
  end
end
