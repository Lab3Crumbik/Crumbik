# Preview all emails at http://localhost:3000/rails/mailers/campaign_mailer
class CampaignMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/campaign_mailer/new_campaign
  def new_campaign
    CampaignMailer.new_campaign
  end

end
