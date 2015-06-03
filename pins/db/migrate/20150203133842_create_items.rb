class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :user, index: true
      t.string :url
      t.text :description

      t.timestamps null: false
    end
    add_foreign_key :items, :users
  end
end
