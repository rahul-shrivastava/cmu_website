require 'date'
module ApplicationHelper
  def ret_yes_no(val)
    if val
      return "Yes"
    else
      return "No"
    end
  end
end
