class Organization < ActiveRecord::Base
	has_many :departments, dependent: :destroy
  has_many :positions, dependent: :destroy
  has_many :users
end
