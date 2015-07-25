class List < ActiveRecord::Base
        
    has_many :list_attachments
    belongs_to :user
    accepts_nested_attributes_for :list_attachments
    belongs_to :category
    
    def self.search(params)
       lists = List.where(params[:list])
       lists = lists.where(" name like ? ","%#{params[:search]}%") if params[:search].present?
    end

end
