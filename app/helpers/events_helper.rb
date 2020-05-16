module EventsHelper
  def event_days_to_start event
    @days = (TimeDifference.between(event.date, DateTime.now).in_days).round()
  end

  def update_icon_url(value)
    @event = Event.last
    @event.image = value['url']
    @event.save
  end
end
