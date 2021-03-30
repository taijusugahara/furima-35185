class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :nickname
    validates :last_name, format: { with: /[^ -~｡-ﾟ]+/ }
    validates :first_name, format: { with: /[^ -~｡-ﾟ]+/ }
    validates :last_name_kana, format: { with: /[\p{katakana}　ー－]+/ }
    validates :first_name_kana, format: { with: /[\p{katakana}　ー－]+/ }
    validates :birthday
    validates :encrypted_password, :password, :password_confirmation, format: { with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/ }
  end
end
