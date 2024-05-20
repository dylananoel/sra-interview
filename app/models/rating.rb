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

class Rating < ApplicationRecord
  belongs_to :post
end
