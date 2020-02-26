class HomeController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]

  def index
    if current_user
      if session[:tenant_id]
        Tenant.set_current_tenant session[:tenant_id]
      else
        Tenant.set_current_tenant current_user.tenants.first
      end
      
      @tenant = Tenant.current_tenant
<<<<<<< HEAD
      @projects = Project.by_user_plan_and_tenant(@tenant.id, current_user)
      params[:tenant_id] = @tenant.id
    end
  end
end
=======
      @projects = Project.by_plan_and_tenant(@tenant.id, current_user)
      params[:tenant_id] = @tenant.id
    end
  end
end
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
