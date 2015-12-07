class Note < ActiveRecord::Base

has_many :tags, through: :taggings

end
