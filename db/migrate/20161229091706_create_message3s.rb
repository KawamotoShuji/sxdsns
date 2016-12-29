class CreateMessage3s < ActiveRecord::Migration
  def change
    create_table :message3s do |t|
      t.references :user, index: true, foreign_key: true
      t.references :lab, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
