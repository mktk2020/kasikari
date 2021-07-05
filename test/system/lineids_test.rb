require "application_system_test_case"

class LineidsTest < ApplicationSystemTestCase
  setup do
    @lineid = lineids(:one)
  end

  test "visiting the index" do
    visit lineids_url
    assert_selector "h1", text: "Lineids"
  end

  test "creating a Lineid" do
    visit lineids_url
    click_on "New Lineid"

    fill_in "Flag", with: @lineid.flag
    fill_in "Line", with: @lineid.line_id
    click_on "Create Lineid"

    assert_text "Lineid was successfully created"
    click_on "Back"
  end

  test "updating a Lineid" do
    visit lineids_url
    click_on "Edit", match: :first

    fill_in "Flag", with: @lineid.flag
    fill_in "Line", with: @lineid.line_id
    click_on "Update Lineid"

    assert_text "Lineid was successfully updated"
    click_on "Back"
  end

  test "destroying a Lineid" do
    visit lineids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lineid was successfully destroyed"
  end
end
