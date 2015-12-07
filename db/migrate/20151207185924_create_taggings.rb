class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.string :note_id
      t.string :tag_id

      t.timestamps null: false
    end
  end
end
