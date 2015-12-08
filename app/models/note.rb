class Note < ActiveRecord::Base

has_many :taggings
has_many :tags, through: :taggings
validates_presence_of :title, :body


end
