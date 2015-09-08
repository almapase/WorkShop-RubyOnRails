# Preview all emails at http://localhost:3000/rails/mailers/notification
class NotificationPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/notification/task
  def task
    Notification.task(User.first, User.first.tasks.first)
  end

end
