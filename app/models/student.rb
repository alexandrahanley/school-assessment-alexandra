class Student < ActiveRecord::Base
  has_many :lectures
  has_many :instructors, through: :lectures

  def full_name
    "#{first_name} #{last_name}"
  end

end
