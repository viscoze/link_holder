class Link < ApplicationRecord
  validate :title, presense: true
  belongs_to :link_holder
end
