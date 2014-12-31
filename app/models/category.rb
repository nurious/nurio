class Category < ActiveRecord::Base
  belongs_to :position
  has_many :entries, dependent: :destroy
end
