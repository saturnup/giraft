module Giraft
  module Publishable
    class PublishableValidator < ActiveModel::Validator
      def validate(record)
        if record.published_changed? && record.published?
          record.publishable_validations.each do |validation|
            unless validation[:assertion].call(record)
              record.errors.add(:base, validation[:message])
            end
          end
        end
      end
    end
  end
end
