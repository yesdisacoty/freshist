class AddHarvestPhotosToHarvests < ActiveRecord::Migration
  def change
    add_column :harvests, :harvest_photos, :json
  end
end
