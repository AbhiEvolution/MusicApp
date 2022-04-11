require "test_helper"

class MusicAlbumsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get music_albums_index_url
    assert_response :success
  end
end
