class Recipe < ActiveRecord::Base
  validates :name, presence: true

  belongs_to :recipe_book
end
