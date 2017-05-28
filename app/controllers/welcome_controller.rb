class WelcomeController < ApplicationController

  def index
    @pending_approvals = Post.where(status: 'submitted').includes(:user)
    @recent_audit_items = AuditLog.includes(:user).last(10)
  end
end
