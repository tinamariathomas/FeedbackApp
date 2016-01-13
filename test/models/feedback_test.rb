require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase

  def setup
    @event = Event.new(name:'Vodqa2016')
    @talk = @event.talks.build(title: "Agile Testing", presenters: "C3PO")
    @feedback_without_name_field = @talk.feedbacks.build(comments: "It was a great talk", rating: 2)
  end

  test "Feedback should be valid if it associated with a talk" do
    assert @feedback_without_name_field.valid?
  end

  test "If name is empty, default name should be anonymous" do
    assert @feedback_without_name_field.valid?
    assert_equal("Anonymous", @feedback_without_name_field.name)
  end

  test "rating should be between 1 and 5" do
    @feedback_without_name_field.rating = 6
    assert_not @feedback_without_name_field.valid?
  end
end
