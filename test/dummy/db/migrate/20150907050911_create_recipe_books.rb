class CreateRecipeBooks < ActiveRecord::Migration
  def change
    create_table :recipe_books do |t|
      t.string :name, null: false

      t.timestamps null: false
    end
  end
end
