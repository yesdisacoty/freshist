class AddHarvestToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :harvest_id, :integer
  end
end
