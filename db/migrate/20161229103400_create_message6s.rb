class CreateMessage6s < ActiveRecord::Migration
  def change
    create_table :message6s do |t|
      t.references :user, index: true, foreign_key: true
      t.references :teach, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
