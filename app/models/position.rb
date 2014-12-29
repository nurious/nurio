class Position < ActiveRecord::Base
  belongs_to :department
  belongs_to :organization
  has_many :categories
end
