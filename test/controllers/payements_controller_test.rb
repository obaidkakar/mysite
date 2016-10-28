require 'test_helper'

class PayementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @payement = payements(:one)
  end

  test "should get index" do
    get payements_url
    assert_response :success
  end

  test "should get new" do
    get new_payement_url
    assert_response :success
  end

  test "should create payement" do
    assert_difference('Payement.count') do
      post payements_url, params: { payement: { Ammount: @payement.Ammount, Discount: @payement.Discount, Pay_date: @payement.Pay_date, Remaining_fee: @payement.Remaining_fee, Total_fee: @payement.Total_fee, student_id: @payement.student_id } }
    end

    assert_redirected_to payement_url(Payement.last)
  end

  test "should show payement" do
    get payement_url(@payement)
    assert_response :success
  end

  test "should get edit" do
    get edit_payement_url(@payement)
    assert_response :success
  end

  test "should update payement" do
    patch payement_url(@payement), params: { payement: { Ammount: @payement.Ammount, Discount: @payement.Discount, Pay_date: @payement.Pay_date, Remaining_fee: @payement.Remaining_fee, Total_fee: @payement.Total_fee, student_id: @payement.student_id } }
    assert_redirected_to payement_url(@payement)
  end

  test "should destroy payement" do
    assert_difference('Payement.count', -1) do
      delete payement_url(@payement)
    end

    assert_redirected_to payements_url
  end
end
