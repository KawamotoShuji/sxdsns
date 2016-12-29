class CreateMessage5s < ActiveRecord::Migration
  def change
    create_table :message5s do |t|
      t.references :user, index: true, foreign_key: true
      t.references :other, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
