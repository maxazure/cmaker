require 'test_helper'

class BricksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brick = bricks(:one)
  end

  test "should get index" do
    get bricks_url, as: :json
    assert_response :success
  end

  test "should create brick" do
    assert_difference('Brick.count') do
      post bricks_url, params: { brick: { api_path: @brick.api_path, name: @brick.name, name_plural: @brick.name_plural, parent_dir: @brick.parent_dir, table_type: @brick.table_type } }, as: :json
    end

    assert_response 201
  end

  test "should show brick" do
    get brick_url(@brick), as: :json
    assert_response :success
  end

  test "should update brick" do
    patch brick_url(@brick), params: { brick: { api_path: @brick.api_path, name: @brick.name, name_plural: @brick.name_plural, parent_dir: @brick.parent_dir, table_type: @brick.table_type } }, as: :json
    assert_response 200
  end

  test "should destroy brick" do
    assert_difference('Brick.count', -1) do
      delete brick_url(@brick), as: :json
    end

    assert_response 204
  end
end
