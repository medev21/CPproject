require 'test_helper'

class PiersControllerTest < ActionController::TestCase
  setup do
    @pier = piers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:piers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pier" do
    assert_difference('Pier.count') do
      post :create, pier: { course: @pier.course, fullname: @pier.fullname, professor: @pier.professor, rate: @pier.rate, year: @pier.year }
    end

    assert_redirected_to pier_path(assigns(:pier))
  end

  test "should show pier" do
    get :show, id: @pier
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pier
    assert_response :success
  end

  test "should update pier" do
    patch :update, id: @pier, pier: { course: @pier.course, fullname: @pier.fullname, professor: @pier.professor, rate: @pier.rate, year: @pier.year }
    assert_redirected_to pier_path(assigns(:pier))
  end

  test "should destroy pier" do
    assert_difference('Pier.count', -1) do
      delete :destroy, id: @pier
    end

    assert_redirected_to piers_path
  end
end
