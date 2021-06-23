require "test_helper"

class JancodesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @jancode = jancodes(:one)
  end

  test "should get index" do
    get jancodes_url
    assert_response :success
  end

  test "should get new" do
    get new_jancode_url
    assert_response :success
  end

  test "should create jancode" do
    assert_difference('Jancode.count') do
      post jancodes_url, params: { jancode: { categoryno: @jancode.categoryno, item: @jancode.item, jancode: @jancode.jancode } }
    end

    assert_redirected_to jancode_url(Jancode.last)
  end

  test "should show jancode" do
    get jancode_url(@jancode)
    assert_response :success
  end

  test "should get edit" do
    get edit_jancode_url(@jancode)
    assert_response :success
  end

  test "should update jancode" do
    patch jancode_url(@jancode), params: { jancode: { categoryno: @jancode.categoryno, item: @jancode.item, jancode: @jancode.jancode } }
    assert_redirected_to jancode_url(@jancode)
  end

  test "should destroy jancode" do
    assert_difference('Jancode.count', -1) do
      delete jancode_url(@jancode)
    end

    assert_redirected_to jancodes_url
  end
end
