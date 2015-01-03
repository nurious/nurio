class Organization < ActiveRecord::Base
	has_many :departments, dependent: :destroy
  has_many :positions, dependent: :destroy
  has_many :users
  has_many :requests, dependent: :destroy
end
