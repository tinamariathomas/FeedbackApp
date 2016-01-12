require 'test_helper'

class TalkTest < ActiveSupport::TestCase
  def setup
    @event = events(:vodqa)
    @talk = @event.talks.build(title: "Agile Testing", presenters: "C3PO")
  end

  test "Talk should be valid if it associated with a proper Event" do
    assert @talk.valid?
  end

  test "Talk should be invalid if it is not associated with a proper event" do
    @talk.event_id =nil
    assert_not @talk.valid?
  end

  test "Talk title should not be blank" do
    @talk.title=nil
    assert_not @talk.valid?
  end

  test "Talk presenters should not be blank" do
    @talk.presenters=nil
    assert_not @talk.valid?
  end
end
