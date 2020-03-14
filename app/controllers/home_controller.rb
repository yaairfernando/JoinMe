class HomeController < ApplicationController
  def index
    @events = Event.all.order('created_at DESC').limit(5)
    @passed_events = Event.all.passed.order('created_at DESC').paginate(page: params[:page], per_page: 2)
    @upcoming_events = Event.all.upcoming.order('created_at DESC').paginate(page: params[:page], per_page: 2)
  end
end
