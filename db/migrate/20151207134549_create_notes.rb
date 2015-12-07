class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :body
      t.string :tags
      t.string :note_id

      t.timestamps null: false
    end
  end
end
