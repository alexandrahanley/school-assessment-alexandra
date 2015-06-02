class Instructor < ActiveRecord::Base

  has_many :lectures
  has_many :students, through: :lectures do

   def length
     reject(&:marked_for_destruction?).length
   end
 end
 accepts_nested_attributes_for :lectures, allow_destroy: true
 validates :lectures, length: { maximum: 3 }


  def full_name
    "#{first_name} #{last_name}"
  end

end
