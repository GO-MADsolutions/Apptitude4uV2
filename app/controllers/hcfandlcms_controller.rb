class HcfandlcmsController < ApplicationController
before_action :authenticate_user!, except: [:problems, :index, :formula, :test, :getfortest]

 def new 
 end

 def formula
 end

 def problems

   @posts = Hcfandlcm.paginate(:page => params[:page], :per_page => 2)
 end

 

  def getfortest
  render :json => Hcfandlcm.limit(5).order('RANDOM()')
  
 end

def test

add_breadcrumb "Hcf And Lcm Test", hcfandlcms_test_url
 

end
 
 def show
 @post = Hcfandlcm.find(params[:id])
 end

 def index
 end

 def create
 @post = Hcfandlcm.new(post_params)
 if@post.save
   redirect_to @post
 else
   render 'new'
 end
 end

 def edit
 @post = Hcfandlcm.find(params[:id])
 end
 
 def update
 @post = Hcfandlcm.find(params[:id])
 if @post.update(params[:hcfandlcm].permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer))
 redirect_to @post
 else 
  render 'edit'
 end
 end


 def destroy
 @post = Hcfandlcm.find(params[:id]) 
 @post.destroy
 render 'index'
 end
 private
  def post_params
   params.require(:post).permit(:question, :solution, :optionA, :optionB, :optionC, :optionD, :answer)
  end
end
