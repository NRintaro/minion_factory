require 'test_helper'

class MinionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @minion = minions(:one)
  end

  test "should get index" do
    get minions_url, as: :json
    assert_response :success
  end

  test "should create minion" do
    assert_difference('Minion.count') do
      post minions_url, params: { minion: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show minion" do
    get minion_url(@minion), as: :json
    assert_response :success
  end

  test "should update minion" do
    patch minion_url(@minion), params: { minion: {  } }, as: :json
    assert_response 200
  end

  test "should destroy minion" do
    assert_difference('Minion.count', -1) do
      delete minion_url(@minion), as: :json
    end

    assert_response 204
  end
end
