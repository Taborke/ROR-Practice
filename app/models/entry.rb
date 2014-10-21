class Entry < ActiveRecord::Base
  belongs_to :blogger
  has_many :tags
end
