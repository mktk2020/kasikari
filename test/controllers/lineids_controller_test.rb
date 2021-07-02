require "test_helper"

class LineidsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lineid = lineids(:one)
  end

  test "should get index" do
    get lineids_url
    assert_response :success
  end

  test "should get new" do
    get new_lineid_url
    assert_response :success
  end

  test "should create lineid" do
    assert_difference('Lineid.count') do
      post lineids_url, params: { lineid: { flag: @lineid.flag, line_id: @lineid.line_id } }
    end

    assert_redirected_to lineid_url(Lineid.last)
  end

  test "should show lineid" do
    get lineid_url(@lineid)
    assert_response :success
  end

  test "should get edit" do
    get edit_lineid_url(@lineid)
    assert_response :success
  end

  test "should update lineid" do
    patch lineid_url(@lineid), params: { lineid: { flag: @lineid.flag, line_id: @lineid.line_id } }
    assert_redirected_to lineid_url(@lineid)
  end

  test "should destroy lineid" do
    assert_difference('Lineid.count', -1) do
      delete lineid_url(@lineid)
    end

    assert_redirected_to lineids_url
  end
end
