class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    event = params[:event]
    date = Date.new event["date(1i)"].to_i, event["date(2i)"].to_i, event["date(3i)"].to_i
    @event = Event.new(name: event[:name], date: date)
    # debugger
    if @event.save
      redirect_to root_path
    else
      render 'new'
    end
  end

    def index
      @events = Event.all
    end

    def show

    end

  end
