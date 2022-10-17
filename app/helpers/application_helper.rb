module ApplicationHelper
  def active_class(path)
    if request.path.include? path
      return 'active'
    else 
      return ''
    end
  end

  def friendly_date(datetime)
    datetime.strftime('%d-%m-%Y %H:%M %p')
  end
end