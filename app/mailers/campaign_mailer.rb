class CampaignMailer < ApplicationMailer

  def new_campaign(user, advertising_campaign)
    @advertising_campaign = advertising_campaign
    @r= @advertising_campaign.avatar.url
    attachments.inline["image.png"] = File.read("#{Rails.root}"+"/"+"public"+"/"+@r.at(1..58)+@advertising_campaign.avatar_file_name)
    mail(to: user.email, subject:@advertising_campaign.name)
  end
end


