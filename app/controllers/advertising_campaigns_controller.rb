class AdvertisingCampaignsController < ApplicationController
  before_action :set_advertising_campaign, only: [:show, :edit, :update, :destroy]

  # GET /advertising_campaigns
  # GET /advertising_campaigns.json
  def index
    @advertising_campaigns = AdvertisingCampaign.all
  end

  # GET /advertising_campaigns/1
  # GET /advertising_campaigns/1.json
  def show
    @products = Product.all
  end

  # GET /advertising_campaigns/new
  def new
    @advertising_campaign = AdvertisingCampaign.new
    @products = Product.all
  end

  # GET /advertising_campaigns/1/edit
  def edit
    @products = Product.all
  end

  # POST /advertising_campaigns
  # POST /advertising_campaigns.json
  def create
    @advertising_campaign = AdvertisingCampaign.new(advertising_campaign_params)
    #$client.update_with_media(@advertising_campaign.name,File.read("#{Rails.root}"+"/"+"public"+"/"+@advertising_campaign.avatar.url.at(1..70)+@advertising_campaign.avatar_file_name) )

    respond_to do |format|
      if @advertising_campaign.save
       # User.all.each do |user|
        #  CampaignMailer.new_campaign(user, @advertising_campaign).deliver
       # end
        format.html { redirect_to @advertising_campaign, notice: 'Advertising campaign was successfully created.' }
        format.json { render :show, status: :created, location: @advertising_campaign }
        $client.update_with_media(@advertising_campaign.name , File.new("#{Rails.root}"+"/"+"public"+"/"+@advertising_campaign.avatar.url.at(1..58)+@advertising_campaign.avatar_file_name))

      else
        format.html { render :new }
        format.json { render json: @advertising_campaign.errors, status: :unprocessable_entity }
      end
    end

  end

  # PATCH/PUT /advertising_campaigns/1
  # PATCH/PUT /advertising_campaigns/1.json
  def update
    respond_to do |format|
      if @advertising_campaign.update(advertising_campaign_params)

        format.html { redirect_to @advertising_campaign, notice: 'Advertising campaign was successfully updated.' }
        format.json { render :show, status: :ok, location: @advertising_campaign }
      else
        format.html { render :edit }
        format.json { render json: @advertising_campaign.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /advertising_campaigns/1
  # DELETE /advertising_campaigns/1.json
  def destroy
    @advertising_campaign.destroy
    respond_to do |format|
      format.html { redirect_to advertising_campaigns_url, notice: 'Advertising campaign was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_advertising_campaign
      @advertising_campaign = AdvertisingCampaign.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def advertising_campaign_params
      params.require(:advertising_campaign).permit(:name, :info, :date, :image, :product_id, :avatar)
    end
end
