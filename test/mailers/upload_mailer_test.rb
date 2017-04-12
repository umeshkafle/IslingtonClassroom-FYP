require 'test_helper'

class UploadMailerTest < ActionMailer::TestCase
  test "new_upload" do
    mail = UploadMailer.new_upload
    assert_equal "New upload", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
