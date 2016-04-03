class CampaignMailer < ApplicationMailer

  def new_campaign(user, advertising_campaign)
    @campa = advertising_campaign
    @r= @campa.avatar.url
    attachments.inline["image.png"] = File.read("#{Rails.root}"+"/"+"public"+"/"+@r.at(1..45)+@campa.avatar_file_name)
    mail(to: user.email, subject:@campa.name)
  end
end


