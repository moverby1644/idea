class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def idea
  end
    
  def show 
    @note = Note.find_by_id(params['id'])
    render 'show'
  end
    
  def create
    n = Note.new
    n.title = params['title']
    n.date = params['date']
    n.content = params['content']
    n.picture = params['picture']
    n.save
    redirect_to "/idea/#{ n.id }"
  end
  
  def edit
    @note =  Note.find_by_id(params['id'])
  end
  
  def update
    n = Note.find_by_id(params['id'])
    n.title = params['title']
    n.date = params['date']
    n.content = params['content']
    n.picture = params['picture']
    n.save
    redirect_to "/idea/#{ n.id }"
  end
  
  def destroy
    n = Note.find_by_id(params['id'])
    n.destroy
  end
  
  def index
    @note = Note.all
  end
    
end
end
