class ToDo < ActiveRecord::Base
  
  # Associations 
  belongs_to :user

  # Validations
  validates :title, presence: true
  validates :user_id, presence: true

end
