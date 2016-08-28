class CreatePhotos < ActiveRecord::Migration[5.0]
  def change
    create_table :photos do |t|
      t.string :caption
      t.string :file
      t.integer :user_id
      t.integer :votes, :default => 0

      t.timestamps
    end
  end
end
