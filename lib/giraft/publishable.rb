require_relative 'publishable/publishable_validator'

module Giraft
  module Publishable
    extend ActiveSupport::Concern

    included do
      validates_with PublishableValidator
    end

    def publish!
      self.published = true
      self.published_at = Time.now
      save!
    end

    def unpublish!
      self.published = false
      self.published_at = nil
      save!
    end

    def publishable_validations
      []
    end
  end
end
