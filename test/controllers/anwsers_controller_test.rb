require 'test_helper'

class AnwsersControllerTest < ActionController::TestCase
  setup do
    @anwser = anwsers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:anwsers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create anwser" do
    assert_difference('Anwser.count') do
      post :create, anwser: { content: @anwser.content, question_id: @anwser.question_id, user_id: @anwser.user_id }
    end

    assert_redirected_to anwser_path(assigns(:anwser))
  end

  test "should show anwser" do
    get :show, id: @anwser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @anwser
    assert_response :success
  end

  test "should update anwser" do
    patch :update, id: @anwser, anwser: { content: @anwser.content, question_id: @anwser.question_id, user_id: @anwser.user_id }
    assert_redirected_to anwser_path(assigns(:anwser))
  end

  test "should destroy anwser" do
    assert_difference('Anwser.count', -1) do
      delete :destroy, id: @anwser
    end

    assert_redirected_to anwsers_path
  end
end
