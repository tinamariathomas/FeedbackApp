require 'test_helper'

class EventsTest < ActionDispatch::IntegrationTest
  test "root path" do
    get root_path
    assert_template 'events/index'
  end
end
