require_relative "module"

class Student
  include Crud
  attr_accessor :first_name, :last_name, :email, :username, :password

  def initialize(first_name, last_name, email, username, password)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @username = username
    @password = password
  end

  def to_s
    "I am #{@first_name} #{last_name} with email address #{email}. My credentials includes #{username} and #{password}"
  end
end

student1 = Student.new("Emmanuel", "Ogah", "Emmanuel.ogah@example.com", "Emmanuel1", "123")
student2 = Student.new("John", "Doe", "john.doe@example.com", "john1", "123")

hashed_password = student1.create_hash_digest(student1.password)

puts hashed_password