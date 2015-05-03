class Assisting < ActiveRecord::Base
  #include SocializeModel::Socializer

  attr_accessible :user

  belongs_to :event
  belongs_to :user

  socialize_for :event, :user_assisting_ids
end
