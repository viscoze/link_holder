class Link < ApplicationRecord
  validates :title, presence: true
  belongs_to :link_list
end
