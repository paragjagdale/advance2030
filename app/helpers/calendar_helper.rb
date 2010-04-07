module CalendarHelper
  def calendar_day_url(date)
    calendar_url :year => date.year, :month => date.month, :day => date.day
  end
  def current_calendar_url
    calendar_day_url(Date.today)
  end
  
  def previous_calendar_url(date)
    calendar_day_url(date.last_month)
  end

  def next_calendar_url(date)
    calendar_day_url(date.next_month)
  end
end
