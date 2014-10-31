class Entry < ActiveRecord::Base
  belongs_to :user
  acts_as_taggable
  self.per_page = 10
end
