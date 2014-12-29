class Organization < ActiveRecord::Base
	has_many :departments
  has_many :positions 
  has_many :users
end
