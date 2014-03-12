require 'bcrypt'

class User
  include Mongoid::Document
  include Mongoid::Timestamps

  attr_accessor :password, :password_confirmation

  before_save :encrypt_password

  field :email, type: String
  field :salt, type: String
  field :fish, type: String

  def encrypt_password
  end

end