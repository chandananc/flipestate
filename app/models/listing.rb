class Listing < ActiveRecord::Base
 
  has_many :listing_attachments
   accepts_nested_attributes_for :listing_attachments
   
   def self.search(params)
       listings = Listing.where(params[:listing])
       listings = listings.where(" name like ? ","%#{params[:search]}%") if params[:search].present?
   end
end


 