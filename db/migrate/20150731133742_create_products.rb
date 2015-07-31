class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :features
      t.text :description
      t.timestamps
    end
  end
end
