class CampaignMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.campaign_mailer.new_campaign.subject
  #
  def new_campaign(user)


    mail(to: user.email, subject:'Nueva campaña')
  end
end
