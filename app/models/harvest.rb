class Harvest < ActiveRecord::Base
    mount_uploaders :harvest_photos, HarvestPhotoUploader
    validates :name, :description, :price, presence: true
    validates :price, numericality: { greater_than: 0 }
    belongs_to :user
    has_many :orders
end
