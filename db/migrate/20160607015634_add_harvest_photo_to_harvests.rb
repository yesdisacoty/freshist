class AddHarvestPhotoToHarvests < ActiveRecord::Migration
  def self.up
    add_attachment :harvests, :harvest_photo
  end

  def self.down
    remove_attachment :harvests, :harvest_photo
  end
end
