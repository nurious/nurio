class Department < ActiveRecord::Base
  belongs_to :organization
  has_many :positions, dependent: :destroy
  has_many :requests, dependent: :destroy
end
