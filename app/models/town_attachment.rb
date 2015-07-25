class TownAttachment < ActiveRecord::Base
    mount_uploader :image, ImageUploader
   belongs_to :town
end
