module EventsHelper
  def event_days_to_start event
    @days = (TimeDifference.between(event.date, DateTime.now).in_days).round()
  end
end
