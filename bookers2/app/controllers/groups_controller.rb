class GroupsController < ApplicationController
  def new
    @group = Group.new
    @group.users << current_user
  end

  def create
    @group = Group.new(group_params)
    @group.owner_id = current_user
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

  end

  def update

  end

  def destroy

  end

  private
  def group_params
    params.require(:group).permit(:name,:introduction,:image)
  end

end
