class Task < ActiveRecord::Base
  # belongs_to :group --> indica la realación con el modelo group
  belongs_to :group
  #where
  scope :all_done, -> {where(done: true)}

  after_save :send_mail

  #consultar datos de la tabla relacionada
  delegate :name, to: :group, prefix: true, allow_nil: true

  def send_mail
    puts "envio mail"
  end

  def set_done
    self.done = true
  end

  def set_done!
    self.done = true
    self.save
  end
end
