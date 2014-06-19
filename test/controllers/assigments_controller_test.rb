require 'test_helper'

class AssigmentsControllerTest < ActionController::TestCase
  setup do
    @assignment = assigments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assigment" do
    assert_difference('Assigment.count') do
      post :create, assignment: { date: @assignment.date, description: @assignment.description, due: @assignment.due, title: @assignment.title }
    end

    assert_redirected_to assigment_path(assigns(:assignment))
  end

  test "should show assigment" do
    get :show, id: @assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment
    assert_response :success
  end

  test "should update assigment" do
    patch :update, id: @assignment, assignment: { date: @assignment.date, description: @assignment.description, due: @assignment.due, title: @assignment.title }
    assert_redirected_to assigment_path(assigns(:assignment))
  end

  test "should destroy assigment" do
    assert_difference('Assigment.count', -1) do
      delete :destroy, id: @assignment
    end

    assert_redirected_to assigments_path
  end
end
