class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :caption
      t.string :file
      t.integer :user_id
      t.integer :votes

      t.timestamps
    end
  end
end
