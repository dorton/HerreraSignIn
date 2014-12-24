require 'test_helper'

class StudentCheckOutsControllerTest < ActionController::TestCase
  setup do
    @student_check_out = student_check_outs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:student_check_outs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create student_check_out" do
    assert_difference('StudentCheckOut.count') do
      post :create, student_check_out: { grade: @student_check_out.grade, parent: @student_check_out.parent, student: @student_check_out.student, teacher: @student_check_out.teacher }
    end

    assert_redirected_to student_check_out_path(assigns(:student_check_out))
  end

  test "should show student_check_out" do
    get :show, id: @student_check_out
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @student_check_out
    assert_response :success
  end

  test "should update student_check_out" do
    put :update, id: @student_check_out, student_check_out: { grade: @student_check_out.grade, parent: @student_check_out.parent, student: @student_check_out.student, teacher: @student_check_out.teacher }
    assert_redirected_to student_check_out_path(assigns(:student_check_out))
  end

  test "should destroy student_check_out" do
    assert_difference('StudentCheckOut.count', -1) do
      delete :destroy, id: @student_check_out
    end

    assert_redirected_to student_check_outs_path
  end
end
