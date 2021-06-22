require "test_helper"

class LendingitemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lendingitem = lendingitems(:one)
  end

  test "should get index" do
    get lendingitems_url
    assert_response :success
  end

  test "should get new" do
    get new_lendingitem_url
    assert_response :success
  end

  test "should create lendingitem" do
    assert_difference('Lendingitem.count') do
      post lendingitems_url, params: { lendingitem: { category: @lendingitem.category, days: @lendingitem.days, image_name: @lendingitem.image_name, item: @lendingitem.item, jancode: @lendingitem.jancode, memo: @lendingitem.memo, price: @lendingitem.price } }
    end

    assert_redirected_to lendingitem_url(Lendingitem.last)
  end

  test "should show lendingitem" do
    get lendingitem_url(@lendingitem)
    assert_response :success
  end

  test "should get edit" do
    get edit_lendingitem_url(@lendingitem)
    assert_response :success
  end

  test "should update lendingitem" do
    patch lendingitem_url(@lendingitem), params: { lendingitem: { category: @lendingitem.category, days: @lendingitem.days, image_name: @lendingitem.image_name, item: @lendingitem.item, jancode: @lendingitem.jancode, memo: @lendingitem.memo, price: @lendingitem.price } }
    assert_redirected_to lendingitem_url(@lendingitem)
  end

  test "should destroy lendingitem" do
    assert_difference('Lendingitem.count', -1) do
      delete lendingitem_url(@lendingitem)
    end

    assert_redirected_to lendingitems_url
  end
end
