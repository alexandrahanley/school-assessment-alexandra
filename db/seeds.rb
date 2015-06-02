Instructor.create(first_name: 'Prof', last_name: 'Bill')
Instructor.create(first_name: 'Professor', last_name: 'Jill')

Student.create(first_name: 'Jim', last_name: 'John')
Student.create(first_name: 'Dan', last_name: 'Jones')

Lecture.create(subject: "Science", instructor_id: 1, student_id: 1)
Lecture.create(subject: "Math", instructor_id: 2, student_id: 2)
