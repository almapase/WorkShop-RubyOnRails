require 'test_helper'

class NotificationTest < ActionMailer::TestCase
  test "task" do
    mail = Notification.task
    assert_equal "Task", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
