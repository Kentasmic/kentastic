require "test_helper"

class RubyTipsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ruby_tip = ruby_tips(:one)
  end

  test "should get index" do
    get ruby_tips_url
    assert_response :success
  end

  test "should get new" do
    get new_ruby_tip_url
    assert_response :success
  end

  test "should create ruby_tip" do
    assert_difference("RubyTip.count") do
      post ruby_tips_url, params: { ruby_tip: { content: @ruby_tip.content, title: @ruby_tip.title } }
    end

    assert_redirected_to ruby_tip_url(RubyTip.last)
  end

  test "should show ruby_tip" do
    get ruby_tip_url(@ruby_tip)
    assert_response :success
  end

  test "should get edit" do
    get edit_ruby_tip_url(@ruby_tip)
    assert_response :success
  end

  test "should update ruby_tip" do
    patch ruby_tip_url(@ruby_tip), params: { ruby_tip: { content: @ruby_tip.content, title: @ruby_tip.title } }
    assert_redirected_to ruby_tip_url(@ruby_tip)
  end

  test "should destroy ruby_tip" do
    assert_difference("RubyTip.count", -1) do
      delete ruby_tip_url(@ruby_tip)
    end

    assert_redirected_to ruby_tips_url
  end
end
