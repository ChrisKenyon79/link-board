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

end
