require "test_helper"

class OfflineLicensesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @offline_license = offline_licenses(:one)
  end

  test "should get index" do
    get offline_licenses_url, as: :json
    assert_response :success
  end

  test "should create offline_license" do
    assert_difference("OfflineLicense.count") do
      post offline_licenses_url, params: { offline_license: { hours: @offline_license.hours, lecture_id: @offline_license.lecture_id, user_id: @offline_license.user_id } }, as: :json
    end

    assert_response :created
  end

  test "should show offline_license" do
    get offline_license_url(@offline_license), as: :json
    assert_response :success
  end

  test "should update offline_license" do
    patch offline_license_url(@offline_license), params: { offline_license: { hours: @offline_license.hours, lecture_id: @offline_license.lecture_id, user_id: @offline_license.user_id } }, as: :json
    assert_response :success
  end

  test "should destroy offline_license" do
    assert_difference("OfflineLicense.count", -1) do
      delete offline_license_url(@offline_license), as: :json
    end

    assert_response :no_content
  end
end
