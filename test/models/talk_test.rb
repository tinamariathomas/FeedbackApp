require 'test_helper'

class TalkTest < ActiveSupport::TestCase
  def setup
    @event = events(:vodqa)
    @talk = Talk.new(title: "Agile Testing",presenters: "C3PO",event_id:@event.id);
  end

  test "Talk should be valid if it associated with a proper Event" do
    assert @talk.valid?
  end

  test "Talk should be invalid if it is not associated with a proper event" do
    @talk.event_id =nil
    assert_not @talk.valid?
  end
end
