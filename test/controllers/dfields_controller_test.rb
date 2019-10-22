require 'test_helper'

class DfieldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @dfield = dfields(:one)
  end

  test "should get index" do
    get dfields_url, as: :json
    assert_response :success
  end

  test "should create dfield" do
    assert_difference('Dfield.count') do
      post dfields_url, params: { dfield: { api: @dfield.api, brick_id: @dfield.brick_id, field_ame: @dfield.field_ame, field_type: @dfield.field_type, is_editable: @dfield.is_editable, is_required: @dfield.is_required, is_show_in_list: @dfield.is_show_in_list } }, as: :json
    end

    assert_response 201
  end

  test "should show dfield" do
    get dfield_url(@dfield), as: :json
    assert_response :success
  end

  test "should update dfield" do
    patch dfield_url(@dfield), params: { dfield: { api: @dfield.api, brick_id: @dfield.brick_id, field_ame: @dfield.field_ame, field_type: @dfield.field_type, is_editable: @dfield.is_editable, is_required: @dfield.is_required, is_show_in_list: @dfield.is_show_in_list } }, as: :json
    assert_response 200
  end

  test "should destroy dfield" do
    assert_difference('Dfield.count', -1) do
      delete dfield_url(@dfield), as: :json
    end

    assert_response 204
  end
end
