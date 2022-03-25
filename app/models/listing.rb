class Listing < ApplicationRecord
  belongs_to :user
  has_one :warehouse
  accepts_nested_attributes_for :warehouse
end
