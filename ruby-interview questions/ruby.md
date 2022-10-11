# Ruby Interview Questions

1. How do you remove **nil** values in array using Ruby?
  - Ans: When you want to remove **nil** elements from Ruby array, you can use two methods: _compact_ or _compact!_. They both remove **nil** elements but, _compact!_ removes them permanently.

  ```
  # create arrays
  arr1 = [1, nil, 2, 3, nil]
  arr2 = ["a", "b", "c"]
  arr3 = [true, false, nil]
  arr4 = ["nil", nil, "true", "false"]

  # remove nil values
  arr1.compact!
  arr2.compact!
  arr3.compact!
  arr4.compact!

  # print the modified arrays
  puts "#{arr1}"
  puts "#{arr2}"
  puts "#{arr3}"
  puts "#{arr4}"
  ```

2. What is the difference between **extend** and **include** in Ruby?
  - Ans: **include** is used to importing module code. While **extend** is also used to importing module code but, extend import them as a class methods. 
  - including Geek in Lord gives instances of Lord access to Geek's methods

  - extending Star with Geek gives the Star access to Geek's methods.
  ```
  # Ruby program of Include and Extend
    
  # Creating a module contains a method
  module Geek
    def geeks
      puts 'GeeksforGeeks!'
    end
  end
    
  class Lord
    
    # only can access geek methods
    # with the instance of the class.
    include Geek
  end
    
  class Star
      
    # only can access geek methods
    # with the class definition.
    extend Geek
  end
  ```

3. What do we need to test in controllers Ruby?
  - Ans: The http requests (Get, Post, Delete, Put)


4. What is the difference between **SQL Injection** and **css Injection?**
  - Ans: **CSS injection** means that an attacker manages to upload malicious CSS code to your website which will run on your visitors browsers. **SQL injection** attacks are used to steal information from databases. **XSS attacks** are used to redirect users to websites where attackers can steal data from them. SQL injection is data-base focused whereas XSS is geared towards attacking end users.
