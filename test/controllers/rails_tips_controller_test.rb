require "test_helper"

class RailsTipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rails_tip = rails_tips(:one)
  end

  test "should get index" do
    get rails_tips_url
    assert_response :success
  end

  test "should get new" do
    get new_rails_tip_url
    assert_response :success
  end

  test "should create rails_tip" do
    assert_difference("RailsTip.count") do
      post rails_tips_url, params: { rails_tip: { content: @rails_tip.content, title: @rails_tip.title } }
    end

    assert_redirected_to rails_tip_url(RailsTip.last)
  end

  test "should show rails_tip" do
    get rails_tip_url(@rails_tip)
    assert_response :success
  end

  test "should get edit" do
    get edit_rails_tip_url(@rails_tip)
    assert_response :success
  end

  test "should update rails_tip" do
    patch rails_tip_url(@rails_tip), params: { rails_tip: { content: @rails_tip.content, title: @rails_tip.title } }
    assert_redirected_to rails_tip_url(@rails_tip)
  end

  test "should destroy rails_tip" do
    assert_difference("RailsTip.count", -1) do
      delete rails_tip_url(@rails_tip)
    end

    assert_redirected_to rails_tips_url
  end
end
