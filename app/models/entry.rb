class Entry < ActiveRecord::Base
  belongs_to :blogger

  validates_presence_of :blogger_id

  acts_as_taggable
end
