class Student < ActiveRecord::Base
  has_many :lectures
  has_many :instructors, through: :lectures
end
