require 'test_helper'

class AdvertisingCampaignsControllerTest < ActionController::TestCase
  setup do
    @advertising_campaign = advertising_campaigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:advertising_campaigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create advertising_campaign" do
    assert_difference('AdvertisingCampaign.count') do
      post :create, advertising_campaign: { date: @advertising_campaign.date, image: @advertising_campaign.image, info: @advertising_campaign.info, name: @advertising_campaign.name, product_id: @advertising_campaign.product_id }
    end

    assert_redirected_to advertising_campaign_path(assigns(:advertising_campaign))
  end

  test "should show advertising_campaign" do
    get :show, id: @advertising_campaign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @advertising_campaign
    assert_response :success
  end

  test "should update advertising_campaign" do
    patch :update, id: @advertising_campaign, advertising_campaign: { date: @advertising_campaign.date, image: @advertising_campaign.image, info: @advertising_campaign.info, name: @advertising_campaign.name, product_id: @advertising_campaign.product_id }
    assert_redirected_to advertising_campaign_path(assigns(:advertising_campaign))
  end

  test "should destroy advertising_campaign" do
    assert_difference('AdvertisingCampaign.count', -1) do
      delete :destroy, id: @advertising_campaign
    end

    assert_redirected_to advertising_campaigns_path
  end
end
