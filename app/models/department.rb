class Department < ActiveRecord::Base
  belongs_to :organization
  has_many :positions
end
