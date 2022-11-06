require "application_system_test_case"

class RubyTipsTest < ApplicationSystemTestCase
  setup do
    @ruby_tip = ruby_tips(:one)
  end

  test "visiting the index" do
    visit ruby_tips_url
    assert_selector "h1", text: "Ruby tips"
  end

  test "should create ruby tip" do
    visit ruby_tips_url
    click_on "New ruby tip"

    fill_in "Content", with: @ruby_tip.content
    fill_in "Title", with: @ruby_tip.title
    click_on "Create Ruby tip"

    assert_text "Ruby tip was successfully created"
    click_on "Back"
  end

  test "should update Ruby tip" do
    visit ruby_tip_url(@ruby_tip)
    click_on "Edit this ruby tip", match: :first

    fill_in "Content", with: @ruby_tip.content
    fill_in "Title", with: @ruby_tip.title
    click_on "Update Ruby tip"

    assert_text "Ruby tip was successfully updated"
    click_on "Back"
  end

  test "should destroy Ruby tip" do
    visit ruby_tip_url(@ruby_tip)
    click_on "Destroy this ruby tip", match: :first

    assert_text "Ruby tip was successfully destroyed"
  end
end
