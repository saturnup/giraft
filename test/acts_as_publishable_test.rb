require 'test_helper'

class ActsAsPublishableTest < ActiveSupport::TestCase
  def test_publish!
    book = RecipeBook.create(name: "Recipes")
    assert_equal false, book.published?
    book.publish!
    assert_equal true, book.published?
  end
end
