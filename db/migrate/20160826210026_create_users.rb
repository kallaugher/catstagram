class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :bio
      t.string :photo

      t.timestamps
    end
  end
end
