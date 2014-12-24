require 'test_helper'

class HisdEmployeesControllerTest < ActionController::TestCase
  setup do
    @hisd_employee = hisd_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hisd_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hisd_employee" do
    assert_difference('HisdEmployee.count') do
      post :create, hisd_employee: { employee_id: @hisd_employee.employee_id, name: @hisd_employee.name, reason: @hisd_employee.reason }
    end

    assert_redirected_to hisd_employee_path(assigns(:hisd_employee))
  end

  test "should show hisd_employee" do
    get :show, id: @hisd_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hisd_employee
    assert_response :success
  end

  test "should update hisd_employee" do
    put :update, id: @hisd_employee, hisd_employee: { employee_id: @hisd_employee.employee_id, name: @hisd_employee.name, reason: @hisd_employee.reason }
    assert_redirected_to hisd_employee_path(assigns(:hisd_employee))
  end

  test "should destroy hisd_employee" do
    assert_difference('HisdEmployee.count', -1) do
      delete :destroy, id: @hisd_employee
    end

    assert_redirected_to hisd_employees_path
  end
end
