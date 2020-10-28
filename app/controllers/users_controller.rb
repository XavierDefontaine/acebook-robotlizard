class UsersController < ApplicationController
  
  def new
    @user = User.new
    @profile = Profile.create
  end

  def create
    @user = User.create(user_params)
    UserMailer.with(user: @user).welcome_email.deliver_now
    format.html { redirect_to(@user, notice: 'User was created.') }
    format.json { render json: @user, status: :created, location: @user }
  end

  def show
    @post = Post.new
    @user = User.find(params[:id])
    @posts = Post.all
    @comment = Comment.new(post_id: params[:post_id])
  end

  # def self.lizard_photo
  #   first_image = MiniMagick::Image.new(url_for(@user.avatar.variant(resize: "400x400")))
  #   second_image = MiniMagick::Image.new("app/assets/images/Purple-Lizard-PNG-Transparent-Picture.png")
  #   result = first_image.composite(second_image) do |c|
  #   c.compose "Over"   
  #   c.geometry "+20+20" 
  #   end
  #   result.write "output.jpg"
  # end

  def index
    @users = User.all
  end

  private

  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :bio, :avatar)
  end
end
