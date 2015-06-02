class Instructor < ActiveRecord::Base
  has_many :lectures
  has_many :students, through: :lectures

  def full_name
    "#{first_name} #{last_name}"
  end
  
end
