# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  post_id    :integer          not null
#
# Indexes
#
#  index_comments_on_post_id  (post_id)
#

class Comment < ApplicationRecord
  include ActionView::Helpers::TextHelper
  belongs_to :post

  def body_display
    simple_format(body.html_safe, {}, sanitize: false)
  end
end
