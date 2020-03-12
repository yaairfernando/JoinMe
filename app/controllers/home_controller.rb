class HomeController < ApplicationController
  def index
    @events = Event.all.order('created_at DESC').limit(5)
    @event = Event.first
  end
end
