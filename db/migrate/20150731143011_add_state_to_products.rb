class AddStateToProducts < ActiveRecord::Migration
  def change
    add_column :products, :state, :string, limit: 10
  end
end
