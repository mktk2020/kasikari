require "application_system_test_case"

class JancodesTest < ApplicationSystemTestCase
  setup do
    @jancode = jancodes(:one)
  end

  test "visiting the index" do
    visit jancodes_url
    assert_selector "h1", text: "Jancodes"
  end

  test "creating a Jancode" do
    visit jancodes_url
    click_on "New Jancode"

    fill_in "Categoryno", with: @jancode.categoryno
    fill_in "Item", with: @jancode.item
    fill_in "Jancode", with: @jancode.jancode
    click_on "Create Jancode"

    assert_text "Jancode was successfully created"
    click_on "Back"
  end

  test "updating a Jancode" do
    visit jancodes_url
    click_on "Edit", match: :first

    fill_in "Categoryno", with: @jancode.categoryno
    fill_in "Item", with: @jancode.item
    fill_in "Jancode", with: @jancode.jancode
    click_on "Update Jancode"

    assert_text "Jancode was successfully updated"
    click_on "Back"
  end

  test "destroying a Jancode" do
    visit jancodes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Jancode was successfully destroyed"
  end
end
