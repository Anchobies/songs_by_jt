class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table :reviews do |t|
      t.integer :rating
      t.string :comment
      t.belongs_to :song, null: false, foreign_key: true
      t.belongs_to :super_fan, null: false, foreign_key: true
      t.timestamps
    end
  end
end
