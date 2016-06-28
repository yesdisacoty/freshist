class AddFulfillmentToHarvests < ActiveRecord::Migration
  def change
    add_column :harvests, :fulfillment, :string
  end
end
