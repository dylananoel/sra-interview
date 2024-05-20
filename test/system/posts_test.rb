require 'application_system_test_case'

class PostsTest < ApplicationSystemTestCase
  setup do
    @post = posts(:one)
  end

  test 'destroying a Post' do
    visit posts_url
    page.accept_confirm do
      click_on 'Destroy', match: :first
    end

    assert_text 'Post was successfully destroyed'
    assert_raises ActiveRecord::RecordNotFound do
      @post.reload
    end
  end

  test 'displays average rating for post' do
    # Implement new feature
    @post.ratings.each(&:destroy!)
    ratings = [
      Rating.new(stars: 1),
      Rating.new(stars: 2),
      Rating.new(stars: 5)
    ]
    @post.ratings << ratings
    @post.save!
    visit post_url(@post)

    assert_text '2.7 Stars'
  end
end
