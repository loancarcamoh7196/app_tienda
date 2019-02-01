require 'test_helper'

class BransControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bran = brans(:one)
  end

  test "should get index" do
    get brans_url
    assert_response :success
  end

  test "should get new" do
    get new_bran_url
    assert_response :success
  end

  test "should create bran" do
    assert_difference('Bran.count') do
      post brans_url, params: { bran: { description: @bran.description, icon: @bran.icon, name: @bran.name } }
    end

    assert_redirected_to bran_url(Bran.last)
  end

  test "should show bran" do
    get bran_url(@bran)
    assert_response :success
  end

  test "should get edit" do
    get edit_bran_url(@bran)
    assert_response :success
  end

  test "should update bran" do
    patch bran_url(@bran), params: { bran: { description: @bran.description, icon: @bran.icon, name: @bran.name } }
    assert_redirected_to bran_url(@bran)
  end

  test "should destroy bran" do
    assert_difference('Bran.count', -1) do
      delete bran_url(@bran)
    end

    assert_redirected_to brans_url
  end
end
