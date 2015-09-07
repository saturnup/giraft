class RecipeBook < ActiveRecord::Base
  validates :name, presence: true
end
