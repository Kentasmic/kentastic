require "application_system_test_case"

class RailsTipsTest < ApplicationSystemTestCase
  setup do
    @rails_tip = rails_tips(:one)
  end

  test "visiting the index" do
    visit rails_tips_url
    assert_selector "h1", text: "Rails tips"
  end

  test "should create rails tip" do
    visit rails_tips_url
    click_on "New rails tip"

    fill_in "Content", with: @rails_tip.content
    fill_in "Title", with: @rails_tip.title
    click_on "Create Rails tip"

    assert_text "Rails tip was successfully created"
    click_on "Back"
  end

  test "should update Rails tip" do
    visit rails_tip_url(@rails_tip)
    click_on "Edit this rails tip", match: :first

    fill_in "Content", with: @rails_tip.content
    fill_in "Title", with: @rails_tip.title
    click_on "Update Rails tip"

    assert_text "Rails tip was successfully updated"
    click_on "Back"
  end

  test "should destroy Rails tip" do
    visit rails_tip_url(@rails_tip)
    click_on "Destroy this rails tip", match: :first

    assert_text "Rails tip was successfully destroyed"
  end
end
