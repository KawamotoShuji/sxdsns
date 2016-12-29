class CreateOthers < ActiveRecord::Migration
  def change
    create_table :others do |t|
      t.string :title
      t.text :body
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
