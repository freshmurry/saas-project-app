class ConfirmationsController < Milia::ConfirmationsController
  def update
    if @confirmable.attempt_set_password(user_params)

      # this section is patterned off of devise 3.2.5 confirmations_controller#show
<<<<<<< HEAD

      self.resource = resource_class.confirm_by_token(params[:confirmation_token])
      yield resource if block_given?

=======
  
      self.resource = resource_class.confirm_by_token(params[:confirmation_token])
      yield resource if block_given?
  
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
      if resource.errors.empty?
        log_action( "invitee confirmed" )
        set_flash_message(:notice, :confirmed) if is_flashing_format?
          # sign in automatically
        sign_in_tenanted_and_redirect(resource)
<<<<<<< HEAD
        
=======
          
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
      else
        log_action( "invitee confirmation failed" )
        respond_with_navigational(resource.errors, :status => :unprocessable_entity){ render :new }
      end
<<<<<<< HEAD

    else
      log_action( "invitee password set failed" )
      prep_do_show()  # prep for the form
      respond_with_navigational(resource.errors, :status => :unprocessable_entity){ render :show }
=======
      
      else
        log_action( "invitee password set failed" )
        prep_do_show()  # prep for the form
        respond_with_navigational(resource.errors, :status => :unprocessable_entity){ render :show }
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
    end  # if..then..else passwords are valid
  end
  
  def show
    if @confirmable.new_record?  ||
       !::Milia.use_invite_member || 
       @confirmable.skip_confirm_change_password
<<<<<<< HEAD

      log_action( "devise pass-thru" )
      self.resource = resource_class.confirm_by_token(params[:confirmation_token])
      yield resource if block_given?
      
      if resource.errors.empty?
        set_flash_message(:notice, :confirmed) if is_flashing_format?
      end
      
=======
  
      log_action( "devise pass-thru" )
      self.resource = resource_class.confirm_by_token(params[:confirmation_token])
      yield resource if block_given?
        
      if resource.errors.empty?
        set_flash_message(:notice, :confirmed) if is_flashing_format?
      end
        
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
      if @confirmable.skip_confirm_change_password
        sign_in_tenanted_and_redirect(resource)
      end
    else
      log_action( "password set form" )
      flash[:notice] = "Please choose a password and confirm it"
      prep_do_show()  # prep for the form
    end
<<<<<<< HEAD
    # else fall thru to show template which is form to set a password
    # upon SUBMIT, processing will continue from update
  end
  
  def after_confirmation_path_for(resource_name, resource)
    if user_signed_in?
      root_path
=======
      # else fall thru to show template which is form to set a password
      # upon SUBMIT, processing will continue from update
  end
    
  def after_confirmation_path_for(resource_name, resource)
    if user_sign_in?
     root_path
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
    else
      new_user_session_path
    end
  end
<<<<<<< HEAD

  private
=======
  
  private 
>>>>>>> eff0416e2aa769ee2885a41d4ec1ab475e8c8198
  
  def set_confirmable()
    @confirmable = User.find_or_initialize_with_error_by(:confirmation_token, params[:confirmation_token])
  end
end