class CreateSearches < ActiveRecord::Migration
  def change
    create_table :searches do |t|
      t.string :show

      t.timestamps null: false
    end
  end
end
