class User < ActiveRecord::Base
  has_many :enrollments,
    primary_key: :id,
    foreign_key: :student_id,
    class_name: :Enrollment

  has_many :courses_taught,
    primary_key: :id,
    foreign_key: :instructor_id,
    class_name: :Course

  has_many :courses_taken,
    through: :enrollments,
    source: :course

end
