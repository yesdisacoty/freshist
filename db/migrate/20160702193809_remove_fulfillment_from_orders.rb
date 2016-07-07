class RemoveFulfillmentFromOrders < ActiveRecord::Migration
  def change
    remove_column :order, :fulfillment
  end
end
