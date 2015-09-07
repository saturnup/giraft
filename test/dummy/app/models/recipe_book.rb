class RecipeBook < ActiveRecord::Base
  validates :name, presence: true

  has_many :recipes

  acts_as_publishable
end
