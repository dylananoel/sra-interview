# == Schema Information
#
# Table name: ratings
#
#  id         :integer          not null, primary key
#  stars      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#
# Indexes
#
#  index_ratings_on_post_id  (post_id)
#

require 'test_helper'

class RatingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
