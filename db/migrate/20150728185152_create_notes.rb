class CreateNotes < ActiveRecord::Migration
  def change
    create_table :notes do |t|
      t.string :title
      t.string :date
      t.string :content
      t.string :picture

      t.timestamps null: false
    end
  end
end
