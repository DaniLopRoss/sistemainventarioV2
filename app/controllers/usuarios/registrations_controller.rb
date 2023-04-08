class RegistrationsController < Devise::RegistrationsController
 
  def build_resource(hash=nil)
    super
    self.resource.password_plain = hash[:password] if hash.present?
  end
  
    def create
      super do |resource|
        if resource.persisted?
          UserMailer.confirmation_instructions(resource).deliver_now
        end
      end
    end
    

    




  def after_sign_up_path_for(resource)
    new_usuario_confirmation_path
  end
  
  def after_inactive_sign_up_path_for(resource)
    if resource.is_a?(Usuario)
      Usuarios::ConfirmationsController.action(:new).call(request.env)
    else
      super
    end
  end  
end
