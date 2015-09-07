require_relative 'publishable'

module Giraft
  module ActsAsPublishable
    extend ActiveSupport::Concern

    module ClassMethods
      def acts_as_publishable(options = {})
        self.include(Publishable)
      end
    end
  end
end

ActiveRecord::Base.send :include, Giraft::ActsAsPublishable
