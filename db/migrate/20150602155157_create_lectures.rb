class CreateLectures < ActiveRecord::Migration
  def change
    create_table :lectures do |t|
      t.string :subject
      t.belongs_to :instructor, index: true
      t.belongs_to :student, index: true
      t.integer :instructor_id
      t.integer :student_id
    end
  end
end
