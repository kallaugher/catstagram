class AddColumnsToPhotos < ActiveRecord::Migration[5.0]
  def change
    change_table :photos do |t|
      t.attachment :image
    end
  end
end
