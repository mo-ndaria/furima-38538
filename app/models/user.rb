class User < ApplicationRecord

  PASSWORD_REGEX = /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i.freeze
    validates_format_of :password, with: PASSWORD_REGEX, message: 'Include both letters and numbers'
  validates :nickname,presence: true
  validates :first_name,presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]/ }
  validates :last_name,presence: true, format: { with: /\A[ぁ-んァ-ヶ一-龥々ー]/ }
  validates :first_name_kana,presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :last_name_kana,presence: true, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :birthday,presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
