require 'test_helper'

class StHasDepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @st_has_dep = st_has_deps(:one)
  end

  test "should get index" do
    get st_has_deps_url
    assert_response :success
  end

  test "should get new" do
    get new_st_has_dep_url
    assert_response :success
  end

  test "should create st_has_dep" do
    assert_difference('StHasDep.count') do
      post st_has_deps_url, params: { st_has_dep: { department_id: @st_has_dep.department_id, student_id: @st_has_dep.student_id } }
    end

    assert_redirected_to st_has_dep_url(StHasDep.last)
  end

  test "should show st_has_dep" do
    get st_has_dep_url(@st_has_dep)
    assert_response :success
  end

  test "should get edit" do
    get edit_st_has_dep_url(@st_has_dep)
    assert_response :success
  end

  test "should update st_has_dep" do
    patch st_has_dep_url(@st_has_dep), params: { st_has_dep: { department_id: @st_has_dep.department_id, student_id: @st_has_dep.student_id } }
    assert_redirected_to st_has_dep_url(@st_has_dep)
  end

  test "should destroy st_has_dep" do
    assert_difference('StHasDep.count', -1) do
      delete st_has_dep_url(@st_has_dep)
    end

    assert_redirected_to st_has_deps_url
  end
end
