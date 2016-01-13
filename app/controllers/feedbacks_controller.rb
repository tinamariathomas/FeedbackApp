class FeedbacksController < ApplicationController
  def index
  @talk = Talk.find(params[:talk_id])
  @feedbacks = @talk.feedbacks
  end

  def create
    @talk = Talk.find(params[:talk_id])
    @feedback = @talk.feedbacks.build(feedback_params)
    @feedback.save
    redirect_to event_talks_path
  end

  def new
    @event = Event.find(params[:event_id])
    @talk = @event.talks.find(params[:talk_id])
    @feedback = @talk.feedbacks.new
  end

  def show

  end

  private
  def feedback_params
    params[:feedback].permit(:name,:comments,:rating)
  end
end
