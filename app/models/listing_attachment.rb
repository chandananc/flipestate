class ListingAttachment < ActiveRecord::Base
     mount_uploader :image, ImageUploader
     belongs_to :listing
end
