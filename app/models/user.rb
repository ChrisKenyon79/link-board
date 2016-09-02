class User < ApplicationRecord

  validates :email, 
  presence: true, 
  uniqueness: {case_sensitive: false}

  has_secure_password

  #more validates can go here
  #use password NOT password_digest
  #length takes a range
  validates :password, 
  length: { in: 8..72 }, 
  on: :create


  validates :name, 
  length: { in: 2..20 }, 
  on: :create


  #this will either return false, or the user info
  def self.authenticate(params)
    User.find_by_email(params[:email]).try(:authenticate, params[:password])
  end

end
