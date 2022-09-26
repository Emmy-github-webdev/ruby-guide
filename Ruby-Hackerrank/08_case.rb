def identify_class(obj)
  # write your case control structure here
  case obj.class.to_s
      when 'Hacker', 'Submission', 'TestCase', 'Contest'
          puts "It's a #{obj.class.to_s}!"
      else
           puts "It's an unknown model"
  end
end