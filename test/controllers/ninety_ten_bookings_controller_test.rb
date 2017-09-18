require 'test_helper'

class NinetyTenBookingsControllerTest < ActionController::TestCase
  setup do
    @ninety_ten_booking = ninety_ten_bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ninety_ten_bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ninety_ten_booking" do
    assert_difference('NinetyTenBooking.count') do
      post :create, ninety_ten_booking: { comments: @ninety_ten_booking.comments, date: @ninety_ten_booking.date, firstName: @ninety_ten_booking.firstName, lastName: @ninety_ten_booking.lastName, noOfGuests: @ninety_ten_booking.noOfGuests, phoneNumber: @ninety_ten_booking.phoneNumber, status: @ninety_ten_booking.status, time: @ninety_ten_booking.time, username: @ninety_ten_booking.username }
    end

    assert_redirected_to ninety_ten_booking_path(assigns(:ninety_ten_booking))
  end

  test "should show ninety_ten_booking" do
    get :show, id: @ninety_ten_booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ninety_ten_booking
    assert_response :success
  end

  test "should update ninety_ten_booking" do
    patch :update, id: @ninety_ten_booking, ninety_ten_booking: { comments: @ninety_ten_booking.comments, date: @ninety_ten_booking.date, firstName: @ninety_ten_booking.firstName, lastName: @ninety_ten_booking.lastName, noOfGuests: @ninety_ten_booking.noOfGuests, phoneNumber: @ninety_ten_booking.phoneNumber, status: @ninety_ten_booking.status, time: @ninety_ten_booking.time, username: @ninety_ten_booking.username }
    assert_redirected_to ninety_ten_booking_path(assigns(:ninety_ten_booking))
  end

  test "should destroy ninety_ten_booking" do
    assert_difference('NinetyTenBooking.count', -1) do
      delete :destroy, id: @ninety_ten_booking
    end

    assert_redirected_to ninety_ten_bookings_path
  end
end
