class Order < ActiveRecord::Base
    belongs_to :harvest
    belongs_to :buyer, class_name: "User"
    belongs_to :seller, class_name: "User"
end
