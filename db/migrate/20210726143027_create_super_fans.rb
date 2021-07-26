class CreateSuperFans < ActiveRecord::Migration[6.1]
  def change
    create_table :super_fans do |t|
      t.string :name
      t.integer :years_of_fandom
      t.belongs_to :song, null: false, foreign_key: true
      # t.integer :song_id
      t.timestamps
    end
  end
end
