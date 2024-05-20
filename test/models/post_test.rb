# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  title      :string
#  body       :text
#  published  :boolean
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  setup do
    @post = posts(:one)
  end

  test 'title cannot contain the string fish' do
    @post.title = 'A post about fish'
    assert @post.invalid?
  end

  test 'title cannot be empty string' do
    @post.title = ''
    assert @post.invalid?
  end

  test 'body cannot be empty string' do
    @post.body = ''
    assert @post.invalid?
  end

  test 'body_display adds html tags' do
    @post.body = "hello\nworld"
    assert_equal "<p>hello\n<br />world</p>", @post.body_display
  end
end
