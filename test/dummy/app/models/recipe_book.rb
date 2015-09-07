class RecipeBook < ActiveRecord::Base
  validates :name, presence: true

  has_many :recipes

  acts_as_publishable

  def publishable_validations
    [
      {
        message: "Must contain at least one Recipe",
        assertion: ->(book) { book.recipes.count > 0 }
      }
    ]
  end
end
