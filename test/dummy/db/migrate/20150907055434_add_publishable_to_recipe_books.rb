class AddPublishableToRecipeBooks < ActiveRecord::Migration
  def change
    add_column :recipe_books, :published, :boolean, null: false, default: false
    add_column :recipe_books, :published_at, :datetime
  end
end
