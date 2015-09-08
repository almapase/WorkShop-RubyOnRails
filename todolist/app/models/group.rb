class Group < ActiveRecord::Base
  

  # def tasks
  #   Task.where(group_id: id)
  # end

  has_many :tasks, dependent: :destroy
  # Todas las tareas asociadas las destruye



end
