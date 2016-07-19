class RacesandgamesController < ApplicationController
add_breadcrumb "Home", :static_pages_home_url
add_breadcrumb "Races And Games", :racesandgames_url
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new
add_breadcrumb "create", new_racesandgame_url 
 end

 def formula
add_breadcrumb "formula", racesandgames_formula_url
 end

 def problems
add_breadcrumb "problems", racesandgames_problems_url
   @posts = Racesandgame.paginate(:page => params[:page], :per_page => 2)
 end

 

 def getfortest
  render :json => Racesandgame.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Races And Game Test", racesandgames_test_url
 

end
 
 def show
 @post = Racesandgame.find(params[:id])
 end

 def index
 end

 def create
 @post = Racesandgame.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
add_breadcrumb "Edit problem", edit_racesandgame_url
 @post = Racesandgame.find(params[:id])
 end
 
 def update
 @post = Racesandgame.find(params[:id])
 if @post.update(params[:racesandgame].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Racesandgame.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end
