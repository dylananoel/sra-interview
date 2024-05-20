require 'application_system_test_case'

class RatingsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
    @rating = ratings(:one)
  end

  test 'creating a Rating' do
    visit new_rating_url(post_id: @post)
    click_on 'Create Rating'

    assert_text 'Rating was successfully created'
  end
end
