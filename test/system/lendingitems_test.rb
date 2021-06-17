require "application_system_test_case"

class LendingitemsTest < ApplicationSystemTestCase
  setup do
    @lendingitem = lendingitems(:one)
  end

  test "visiting the index" do
    visit lendingitems_url
    assert_selector "h1", text: "Lendingitems"
  end

  test "creating a Lendingitem" do
    visit lendingitems_url
    click_on "New Lendingitem"

    fill_in "Category", with: @lendingitem.category
    fill_in "Days", with: @lendingitem.days
    fill_in "Image name", with: @lendingitem.image_name
    fill_in "Item", with: @lendingitem.item
    fill_in "Jancode", with: @lendingitem.jancode
    fill_in "Memo", with: @lendingitem.memo
    fill_in "Price", with: @lendingitem.price
    click_on "Create Lendingitem"

    assert_text "Lendingitem was successfully created"
    click_on "Back"
  end

  test "updating a Lendingitem" do
    visit lendingitems_url
    click_on "Edit", match: :first

    fill_in "Category", with: @lendingitem.category
    fill_in "Days", with: @lendingitem.days
    fill_in "Image name", with: @lendingitem.image_name
    fill_in "Item", with: @lendingitem.item
    fill_in "Jancode", with: @lendingitem.jancode
    fill_in "Memo", with: @lendingitem.memo
    fill_in "Price", with: @lendingitem.price
    click_on "Update Lendingitem"

    assert_text "Lendingitem was successfully updated"
    click_on "Back"
  end

  test "destroying a Lendingitem" do
    visit lendingitems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lendingitem was successfully destroyed"
  end
end
