class HomeController < ApplicationController
  def index
    @events = Event.all.order('created_at DESC')
    @event = Event.first
  end
end
