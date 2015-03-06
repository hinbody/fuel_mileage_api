require 'test_helper'

class EntriesControllerTest < ActionController::TestCase
  setup do
    @entry = entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:entries)
  end

  test "should create entry" do
    assert_difference('Entry.count') do
      post :create, entry: { gallons: @entry.gallons, price_per_gallon: @entry.price_per_gallon, current_mileage: @entry.current_mileage, vehicle_name: @entry.vehicle_name }
    end

    assert_response 201
  end
end
