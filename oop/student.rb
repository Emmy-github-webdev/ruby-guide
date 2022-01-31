class Student
  @first_name
  @last_name
  @email
  @username
  @password

  def to_s
    "First name is #{@first_name}"
  end
end

student1 = Student.new
puts student1