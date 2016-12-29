class CreateTeaches < ActiveRecord::Migration
  def change
    create_table :teaches do |t|
      t.string :title
      t.text :body

      t.timestamps null: false
    end
  end
end
