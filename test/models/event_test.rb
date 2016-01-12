require 'test_helper'

class EventTest < ActiveSupport::TestCase

  def setup
    @valid_event = Event.new(name: "vodQA", date:"2016-01-22")
  end

  test "Event validity" do
    assert @valid_event.valid?
  end

  test "Event should be invalid if event name is empty" do
    @valid_event.name=""
    assert_not @valid_event.valid?
  end

end
