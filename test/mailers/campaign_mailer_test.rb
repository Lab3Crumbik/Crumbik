require 'test_helper'

class CampaignMailerTest < ActionMailer::TestCase
  test "new_campaign" do
    mail = CampaignMailer.new_campaign
    assert_equal "New campaign", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
