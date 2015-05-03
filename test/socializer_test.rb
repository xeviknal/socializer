require 'test_helper'

class SocializerTest < ActiveSupport::TestCase

  def test_an_socialized_event_should_have_people
    Redis.current.flushdb #must be in test_helper

    event = Event.create
    users = [ "Xavier", "Veronika", "Ferran"].map { |name| User.create! name: name }

    users.each do |user|
      event.assistings.create(user: user)
    end

    assert_equal users.map(&:id), event.user_assisting_ids.members.map(&:to_i)
  end
end
