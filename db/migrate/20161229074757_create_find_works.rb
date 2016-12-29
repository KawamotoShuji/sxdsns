class CreateFindWorks < ActiveRecord::Migration
  def change
    create_table :find_works do |t|
      t.string :title
      t.text :body
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
