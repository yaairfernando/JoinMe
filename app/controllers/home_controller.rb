class HomeController < ApplicationController
  def index
    @events = Event.all.order('created_at DESC').limit(5)
    @passed_events = Event.passed.paginate(page: params[:passed_page], per_page: 2).order('created_at DESC')
    @upcoming_events = Event.upcoming.paginate(page: params[:upcoming_page], per_page: 2).order('created_at ASC')
  end
end
