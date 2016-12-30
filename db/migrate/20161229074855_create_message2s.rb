class CreateMessage2s < ActiveRecord::Migration
  def change
    create_table :message2s do |t|
      t.references :user, index: true, foreign_key: true
      t.references :find_work, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
