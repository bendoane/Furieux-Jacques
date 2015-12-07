class TaggingSerializer < ActiveModel::Serializer
  attributes :id, :note_id, :tag_id
end
