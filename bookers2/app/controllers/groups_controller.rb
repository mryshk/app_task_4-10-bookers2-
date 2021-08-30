class GroupsController < ApplicationController
  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    @group.owner_id = current_user.id
    @group.save
    redirect_to groups_path
  end

  def show
    @group = Group.find(params[:id])
    @book_s = Book.new
    @user = User.find(current_user.id)
  end

  def index
    @groups = Group.all
    @book_s = Book.new
    @user = User.find(current_user.id)
  end

  def edit
    @group = Group.find(params[:id])
  end

  def update
    @group = Group.find(params[:id])
    @group.update(group_params)
    redirect_to groups_path
  end

  def destroy
     @group = Group.find(params[:id])
     if owner_id = current_user.id
      @group.destroy
      redirect_to groups_path
     else
       render :index
       @book_s = Book.new
       @user = User.find(current_user.id)
     end
  end

  private
  def group_params
    params.require(:group).permit(:name,:introduction,:image)
  end

end
