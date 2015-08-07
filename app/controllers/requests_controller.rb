class RequestsController < InheritedResources::Base
  before_filter :authenticate_user!
    def show
      @request = Request.includes(:user).find(params[:id])
    end
    
    def request_params
      params.require(:request).permit(:employee_name, :start_date, :end_date, :leave_type, :user_id)
    end
end

