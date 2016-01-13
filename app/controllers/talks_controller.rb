class TalksController < ApplicationController
  def new
    @event = Event.find(params[:event_id])
    @talk = @event.talks.new
  end

  def index
    @event = Event.find(params[:event_id])
    @talks = @event.talks
  end

  def create
    @event = Event.find(params[:event_id])
    @talk = @event.talks.build(talk_params)
    @talk.save
    redirect_to event_talks_path

  end
  private
  def talk_params
    params[:talk].permit(:title,:presenters)
  end
end
