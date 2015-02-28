require 'test_helper'

class VehiclesControllerTest < ActionController::TestCase
  setup do
    @vehicle = vehicles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vehicles)
  end

  test "should create vehicle" do
    assert_difference('Vehicle.count') do
      post :create, vehicle: { name: @vehicle.name, make: @vehicle.make, model: @vehicle.model}
    end

    assert_response 201
  end
end
