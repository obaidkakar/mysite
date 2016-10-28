require 'test_helper'

class StudntsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @studnt = studnts(:one)
  end

  test "should get index" do
    get studnts_url
    assert_response :success
  end

  test "should get new" do
    get new_studnt_url
    assert_response :success
  end

  test "should create studnt" do
    assert_difference('Studnt.count') do
      post studnts_url, params: { studnt: { Address: @studnt.Address, CNIC: @studnt.CNIC, Cell#: @studnt.Cell#, F_name: @studnt.F_name, Gender: @studnt.Gender, Local: @studnt.Local, St_name: @studnt.St_name } }
    end

    assert_redirected_to studnt_url(Studnt.last)
  end

  test "should show studnt" do
    get studnt_url(@studnt)
    assert_response :success
  end

  test "should get edit" do
    get edit_studnt_url(@studnt)
    assert_response :success
  end

  test "should update studnt" do
    patch studnt_url(@studnt), params: { studnt: { Address: @studnt.Address, CNIC: @studnt.CNIC, Cell#: @studnt.Cell#, F_name: @studnt.F_name, Gender: @studnt.Gender, Local: @studnt.Local, St_name: @studnt.St_name } }
    assert_redirected_to studnt_url(@studnt)
  end

  test "should destroy studnt" do
    assert_difference('Studnt.count', -1) do
      delete studnt_url(@studnt)
    end

    assert_redirected_to studnts_url
  end
end
