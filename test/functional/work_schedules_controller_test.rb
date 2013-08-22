require 'test_helper'

class WorkSchedulesControllerTest < ActionController::TestCase
  setup do
    @work_schedule = work_schedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:work_schedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create work_schedule" do
    assert_difference('WorkSchedule.count') do
      post :create, work_schedule: { date: @work_schedule.date, descrepancy: @work_schedule.descrepancy, employeeId: @work_schedule.employeeId, endTime: @work_schedule.endTime, loginTime: @work_schedule.loginTime, logoutTime: @work_schedule.logoutTime, startTime: @work_schedule.startTime }
    end

    assert_redirected_to work_schedule_path(assigns(:work_schedule))
  end

  test "should show work_schedule" do
    get :show, id: @work_schedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @work_schedule
    assert_response :success
  end

  test "should update work_schedule" do
    put :update, id: @work_schedule, work_schedule: { date: @work_schedule.date, descrepancy: @work_schedule.descrepancy, employeeId: @work_schedule.employeeId, endTime: @work_schedule.endTime, loginTime: @work_schedule.loginTime, logoutTime: @work_schedule.logoutTime, startTime: @work_schedule.startTime }
    assert_redirected_to work_schedule_path(assigns(:work_schedule))
  end

  test "should destroy work_schedule" do
    assert_difference('WorkSchedule.count', -1) do
      delete :destroy, id: @work_schedule
    end

    assert_redirected_to work_schedules_path
  end
end
