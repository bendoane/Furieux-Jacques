class Tag < ActiveRecord::Base

has_many :notes, through: taggings

end
