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
    book.unpublish!
    assert_equal false, book.published?
  end

  def test_publish_sets_published_at
    book = RecipeBook.create(name: "Recipes")
    book.publish!
    assert_in_delta Time.now, book.published_at, 0.1
  end

  def test_unpublish_clears_published_at
    book = RecipeBook.create(name: "Recipes")
    book.publish!
    book.unpublish!
    assert_equal nil, book.published_at
  end
end
