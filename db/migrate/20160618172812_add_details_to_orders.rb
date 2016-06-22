class AddDetailsToOrders < ActiveRecord::Migration
  def change
    add_column :orders, :fulfillment, :string
  end
end
