class Town < ActiveRecord::Base
    has_many :town_attachments
   accepts_nested_attributes_for :town_attachments
   
   
   def self.search(params)
       towns =Town.where(params[:town])
       towns = towns.where(" name like ? ","%#{params[:search]}%") if params[:search].present?
   end
   
end
