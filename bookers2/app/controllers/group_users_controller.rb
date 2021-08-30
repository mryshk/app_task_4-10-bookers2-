class GroupUsersController < ApplicationController
  def create
    @group = Group.find(params[:group_id])
    unless current_user.id == @group.owner_id
      @group_user = GroupUser.new(group_id: @group.id)
      @group_user.user_id = current_user.id
      @group_user.save
      redirect_to group_path(@group)
    end
  end

  def destroy
    @group = Group.find(params[:group_id])
    @group_user =GroupUser.find_by(group_id: @group.id, user_id: current_user.id)
    @group_user.destroy
    redirect_to group_path(@group)
  end
end
