require "test_helper"

class UserLecturesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_lecture = user_lectures(:one)
  end

  test "should get index" do
    get user_lectures_url, as: :json
    assert_response :success
  end

  test "should create user_lecture" do
    assert_difference("UserLecture.count") do
      post user_lectures_url, params: { user_lecture: { lecture_id: @user_lecture.lecture_id, user_id: @user_lecture.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show user_lecture" do
    get user_lecture_url(@user_lecture), as: :json
    assert_response :success
  end

  test "should update user_lecture" do
    patch user_lecture_url(@user_lecture), params: { user_lecture: { lecture_id: @user_lecture.lecture_id, user_id: @user_lecture.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy user_lecture" do
    assert_difference("UserLecture.count", -1) do
      delete user_lecture_url(@user_lecture), as: :json
    end

    assert_response :no_content
  end
end
