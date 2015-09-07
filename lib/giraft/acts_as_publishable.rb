module Giraft
  module ActsAsPublishable
    extend ActiveSupport::Concern

    def publish!
      self.published = true
      save!
    end

    def unpublish!
      self.published = false
      save!
    end

    module ClassMethods
      def acts_as_publishable(options = {})

      end
    end
  end
end

ActiveRecord::Base.send :include, Giraft::ActsAsPublishable
