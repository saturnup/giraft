require 'test_helper'

class ActsAsPublishableTest < ActiveSupport::TestCase
  def test_publish_updates_published
    book = RecipeBook.create(name: "Recipes")
    assert_equal false, book.published?
    book.publish!
    assert_equal true, book.published?
  end

  def test_unpublish_updates_published
    book = RecipeBook.create(name: "Recipes")
    book.publish!
    assert_equal true, book.published?
    book.unpublish!
    assert_equal false, book.published?
  end
end
