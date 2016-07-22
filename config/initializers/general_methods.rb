class ActiveRecord::Base
  #Metodo que substitui o destroy
  def newdestroy
    self.active = false
    self.save
  end
    
  private 
  # Metodo para listar somente os ativos (Não "Deletados")
  def self.all_active(ordernar ='')
    order = 'id'
    if !ordernar.blank? 
      order = ordernar
    end
    all(:conditions => ['active =  true'],
        :order => order)
  end
  
  # Metodo para listar todos publicados
  def self.all_published(ordernar ='')
    order = 'id'
    if !ordernar.blank? 
      order = ordernar
    end 
    all(:conditions => ['published =  true and active = true'],
        :order => order)
  end  
  
  def self.find_published(id)
    find_by_id(id, :conditions => ['published =  true and active = true'])
  end
  
end