class User < ActiveRecord::Base
  
  # Associations 
  has_many :to_dos

  # Validations
  validates :email, presence: true
  validates :email, format: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end
