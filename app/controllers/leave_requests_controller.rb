class LeaveRequestsController < ApplicationController

  def new
    @leave_request = LeaveRequest.new
  end
  def create
    @leave_request = LeaveRequest.new(user_params)
    if @leave_request.save
      flash[:success] = "Leave request saved"
      redirect_to "/user/show"
    else
      render 'new'
    end
  end
  
  private

  def user_params
    params.require(:user).permit(:user_id,:start_date,:end_date,:reason)
  end

end
