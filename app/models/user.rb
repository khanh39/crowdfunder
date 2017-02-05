class User < ApplicationRecord
  authenticates_with_sorcery!
  has_many :pledges

  has_many :projects

    validates :email, uniqueness: true
    validates :password, length: { minimum: 3 }, if: -> { new_record? || changes[:crypted_password] }
    validates :password, confirmation: true, if: -> { new_record? || changes[:crypted_password] }
    validates :password_confirmation, presence: true, if: -> { new_record? || changes[:crypted_password] }
    validates :name, presence: true
    validates :name,  format: { with: /\A[a-zA-Z]+\z/, alert: "only allows letters" }

end
