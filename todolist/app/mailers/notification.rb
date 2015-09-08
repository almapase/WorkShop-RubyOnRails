class Notification < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notification.task.subject
  #
  def task(to, _task)
    @to = to
    @task = _task
    mail to: to.email, subject: "Nueva Tarea"
  end
end
