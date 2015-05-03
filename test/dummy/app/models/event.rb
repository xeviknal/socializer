class Event < ActiveRecord::Base
  include Redis::Objects

  has_many :assistings
  set :user_assisting_ids
end
