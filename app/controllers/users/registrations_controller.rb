module Users
  class RegistrationsController < Devise::RegistrationsController
    def create
      super do |resource|
        resource.name = params[:user][:name]
        resource.save
      end
    end
  end
end
