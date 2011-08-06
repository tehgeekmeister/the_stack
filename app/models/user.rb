class User < ActiveRecord::Base
  attr_accessible :email, :password, :password_confirmation
  has_secure_password
  validates_presence_of :password, :on => :create
  has_and_belongs_to_many :lists
  
  PASSWORD_INVALID = "Looks like you'll have to pick a few more berries yet. (Did you remember to wash your berries?)"
  ERROR_MESSAGE_MISSING = "404, jam not found."
  EMAIL_UNREGISTERED = ERROR_MESSAGE_MISSING
end
