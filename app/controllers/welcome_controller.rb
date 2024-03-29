class StaticController < ApplicationController

  def index
    if admin_types.include?(current_user.type)
      @pending_approvals = Post.submitted
      @recent_audit_items = AuditLog.includes(:user).last(10)
    else
      @pending_audit_confirmations = current_user.audit_logs
    end
  end
end
