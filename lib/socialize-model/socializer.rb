module SocializeModel
  module Socializer
    extend ActiveSupport::Concern

    included do
      after_create :__update_socialized_models
    end

    def __update_socialized_models
      self.class.model_updates.each do |association, set_name|
        self.send(association).send(set_name) << self.user.id
      end
    end

    module ClassMethods
      def model_updates
        @model_updates ||= []
      end

      def socialize_for(association, set_name)
        model_updates << [ association, set_name ]
      end
    end
  end
end

ActiveRecord::Base.send :include, SocializeModel::Socializer
