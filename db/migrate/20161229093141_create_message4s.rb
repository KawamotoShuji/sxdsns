class CreateMessage4s < ActiveRecord::Migration
  def change
    create_table :message4s do |t|
      t.references :user, index: true, foreign_key: true
      t.references :opinion, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
