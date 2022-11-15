class Usuario < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

         validates :rfc, format: { with: /[A-ZÑ&]{3,4}\d{6}(?:[A-Z\d]{3})/,
    message: "Formato no compatible" }

end
