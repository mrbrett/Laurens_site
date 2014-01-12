require 'test_helper'

class HomepageTilesControllerTest < ActionController::TestCase
  setup do
    @homepage_tile = homepage_tiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:homepage_tiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create homepage_tile" do
    assert_difference('HomepageTile.count') do
      post :create, homepage_tile: { text: @homepage_tile.text }
    end

    assert_redirected_to homepage_tile_path(assigns(:homepage_tile))
  end

  test "should show homepage_tile" do
    get :show, id: @homepage_tile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @homepage_tile
    assert_response :success
  end

  test "should update homepage_tile" do
    patch :update, id: @homepage_tile, homepage_tile: { text: @homepage_tile.text }
    assert_redirected_to homepage_tile_path(assigns(:homepage_tile))
  end

  test "should destroy homepage_tile" do
    assert_difference('HomepageTile.count', -1) do
      delete :destroy, id: @homepage_tile
    end

    assert_redirected_to homepage_tiles_path
  end
end
