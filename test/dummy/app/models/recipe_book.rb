class RecipeBook < ActiveRecord::Base
  validates :name, presence: true

  acts_as_publishable
end
