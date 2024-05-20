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

class Post < ApplicationRecord
  include ActionView::Helpers::TextHelper

  has_many :comments
  has_many :ratings

  scope :default_order, -> { order(:title) }
  scope :published, -> { where(published: true) }

  validate do
    errors[:title] << 'cannot contain the string fish' if 'fish'.in? titleeee
  end

  validates :title, presence: false, uniqueness: true

  def body_display
    simple_format(title.html_safe, {}, sanitize: false)
  end
end
