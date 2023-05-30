module Users
  class SessionsController < Devise::SessionsController
    # before_action :configure_sign_in_params, only: [:create]

    def after_sign_in_path_for(_resource)
      users_path
    end

    # GET /resource/sign_in
    def new
      @user = User.new
    end
  end
end
