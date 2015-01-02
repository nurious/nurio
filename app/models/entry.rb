class Entry < ActiveRecord::Base
  belongs_to :category
  belongs_to :user

  #self.per_page = 5
end
