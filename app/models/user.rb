class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :nickname, presence: true
  validates :last_name, presence: true, format: {with:/[^ -~｡-ﾟ]+/}
  validates :first_name, presence: true, format: {with:/[^ -~｡-ﾟ]+/}
  validates :last_name_kana, presence: true, format: {with:/[\p{katakana}　ー－]+/}
  validates :first_name_kana, presence: true, format: {with:/[\p{katakana}　ー－]+/}
  validates :birthday, presence: true
  validates :encrypted_password,:password,:password_confirmation,format:{with: /(?=.*[a-zA-Z])(?=.*\d)[a-zA-Z\d]{6,}/}

end
