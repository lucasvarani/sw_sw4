module ApplicationHelper 
  
  def show_boolean(value)
    if value
      return "Sim"
    else
      return "Não"
    end
  end
  
  def show_age(age)
    case age
      when 1 then return "0 - 2"
      when 2 then return "3 +"
    end
  end
  
  def paginate(collection, params= {})
    will_paginate collection, params.merge(:renderer => RemoteLinkPaginationHelper::LinkRenderer, :previous_label =>"<", :next_label => ">")
  end  
      
end
