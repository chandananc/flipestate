class NetworkController < ApplicationController



  # GET /lists
  # GET /lists.json
  def index
  
  end
  
  def network
       @users = User.all
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    
    @users = User.all
  end


  def new
   

  end
  


  def edit
  end

  

end
