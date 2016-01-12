require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
  test "root path" do
    get root_path
    assert_template 'events/index'
  end
  test "invalid event creation" do
    get new_event_path
    before_count = Event.count
    post events_path, event: {"name"=>"", "date(1i)"=>"2016", "date(2i)"=>"1", "date(3i)"=>"12"};
    after_count = Event.count
    assert_equal before_count,after_count
    assert_template 'events/new'
  end
end
