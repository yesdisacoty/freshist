class Harvest < ActiveRecord::Base
    has_attached_file :harvest_photo, styles: {thumb: "250x250>", full: "500x500>"}
    validates_attachment_content_type :harvest_photo, content_type: /\Aimage\/.*\Z/
end
