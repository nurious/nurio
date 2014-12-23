class Position < ActiveRecord::Base
  belongs_to :department
  has_many :categories
end
