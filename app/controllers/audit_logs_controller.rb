class AuditLogsController < ApplicationController

  def index
    #The order is different like in post_controller because you need to instanciate the value that you are passing to the policy, in this case the @audit_logs
    @audit_logs = AuditLog.page(params[:page]).per(10)
    authorize @audit_logs
  end

  def confirm
    audit_log = AuditLog.find(params[:id])
    authorize audit_log
    audit_log.confirmed!
    redirect_to root_path, notice: "Thank you for your confirmation"
  end
end
