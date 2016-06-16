class HomeController < ApplicationController
  skip_before_action :authenticate_tenant!, :only => [ :index ]

  def index
    if current_user
      if session[:tenent_id]
        Tenent.set_current_tenent session[:tenent_id]
      else
        Tenent.set_current_tenent current_user.tenents_first
      end
      
      @tenent = Tenent.current_tenent
      params[:tenent_id] = @tenent.id
    end
  end
end
