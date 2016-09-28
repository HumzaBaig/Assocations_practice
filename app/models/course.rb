class Course < ActiveRecord::Base
  belongs_to :instructor,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :User

  has_many :enrollments,
    primary_key: :id,
    foreign_key: :course_id,
    class_name: :Enrollment

  has_many :students,
    through: :enrollments,
    source: :student

  belongs_to :prereq,
    primary_key: :id,
    foreign_key: :prereq_id,
    class_name: :Course

  has_many :postreqs,
    primary_key: :id,
    foreign_key: :prereq_id, 
    class_name: :Course
end
