class LinkContainer < ApplicationRecord
  validate :title, presense: true
  
  belongs_to :user
  has_many :links
end
