class GroupsController < ApplicationController
  def index
    @groups = Group.all
  end

 def new
   @group = Group.new
 end
end

   def show
     @group = Group.find(params[:id])
   end

   def edit
     @group = Group.find(params[:id])
   end

   def new
     @group = Group.new
   end




      def destroy
        @group = Group.find(params[:id])
        @group.destroy
        flash[:alert] = "Group deleted"
        redirect_to groups_path
      end

    private

    def group_params
      params.require(:group).permit(:title, :description)
    end
