class Task < ActiveRecord::Base
  belongs_to :group
  belongs_to :user

  validates :group, presence: true
  validates :title, presence: true
  validates :user, presence: true

  after_create :send_mail

  private
    def send_mail
      Notification.task(self.user, self)
    end

end
