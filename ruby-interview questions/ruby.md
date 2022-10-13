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

5. Describe the difference between **class** and **instance variables** ruby?

  - Ans: The main difference is the behavior concerning inheritance.Class variables are shared between the class and all its subclasses, while class instance variables only belong to one specific class.

  ```
  class Woof

    @@sound = "woof"

    def self.sound
      @@sound
    end
  end

  Woof.sound  # => "woof"

  class LoudWoof < Woof
    @@sound = "WOOF"
  end

  LoudWoof.sound  # => "WOOF"
  Woof.sound      # => "WOOF" (!)
    ```
6. What are the three levels of access control for ruby methods?
    - Ans - **Public Methods** describe the behavior of the project being created. These methods can be called from outside the scope of the created object.

    ```
      class Cat
      def initialize(name)
        @name = name
      end

      def speak
        puts "I'm #{@name} and I'm 2 years old"
      end
      
      ...
    end

    new_cat = Cat.new("garfield")
    #=> <Cat:0x2321868 @name="garfield">
    
    new_cat.speak
    #=> I'm garfield and I'm 2 years old
    ```
    **Public** keyword is unnecessary, but can be used to escape **private** or **protected**
    ```
    def MyClass
      def first_public_method
      end

      private

      def private_method
      end

      public

      def second_public_method
      end
    end
    ```
    - **Private Method** are not accessible from outside of the object. They are used internally by the object.
    ```
    class Cat
      def initialize(name)
        @name = name
      end

      def speak
        age = calculate_cat_age # here we call the private method 
        puts "I'm #{@name} and I'm #{age} years old"
      end

      private
        def calculate_cat_age
          2 * 3 - 4 
        end
    end

    my_cat = Cat.new("Bilbo")
    my_cat.speak #=> I'm Bilbo and I'm 2 years old
    my_cat.calculate_cat_age #=> NoMethodError: private method `calculate_cat_age' called for #<Cat:0x2321868 @name="Bilbo">
    ```
    - **Protected Methods** are very similar to private methods. They cannot be accessed outside the instance of object in the same way private methods can't be. However, using the _self_ ruby method, protected methods can be called within the context of an object of the same type.

    ```
    class Cat
      def initialize(name, age)
        @name = name
        @age = age
      end

      def speak
        puts "I'm #{@name} and I'm #{@age} years old"
      end

      # this == method allows us to compare two objects own ages. 
      # if both Cat's have the same age they will be considered equal.
      def ==(other)
        self.own_age == other.own_age
      end

      protected
        def own_age
            self.age
        end
    end

    cat1 = Cat.new("ricky", 2)
    => #<Cat:0x007fe2b8aa4a18 @name="ricky", @age=2>

    cat2 = Cat.new("lucy", 4)
    => #<Cat:0x008gfb7aa6v67 @name="lucy", @age=4>

    cat3 = Cat.new("felix", 2)
    => #<Cat:0x009frbaa8V76 @name="felix", @age=2>
    ```
7. What is **RubyGem?** How does it work?

  - Ans: The RubyGems software allows you to easily download, install, and use ruby software packages on your system. The software package is called a “gem” which contains a packaged Ruby application or library.
8. Explain the role of **modules** and **mixins** in Ruby
  - Ans: Both modules and mixins give the application the ability to share the code that can be used with ease in other places. 
  - **Modules:** are a way of grouping together methods, classes, and constants. Modules give you two major benefits.

  1. Modules provide a namespace and prevent name clashes.
  2. Modules implement the mixin facility.
  ```
  # lib/modules/invoice_creator.rb
  module InvoiceCreator
    TAX_FEE = 0.5
  
    def self.generate
      puts "Don't worry! I'll generate the invoice for you at #{TAX_FEE}%"
    end
  
    def invoice_total
      puts "I'll return the invoice total"
      1000
    end
  end
  ```

  The _invoice_total_ is an instance method and to be able to use it we need to include the module to a class, like this:

  ```
  # app/models/invoice.rb
  class Invoice < ApplicationRecord
    include InvoiceCreator # This includes our module in the Invoice class
  
    def calculate_tax
      total = invoice_total # included method from our module
      tax = total * InvoiceCreator::TAX_FEE
      puts "This is the invoice tax: #{tax}"
    end
  end
  ```

  All instance methods from _InvoiceCreator_ becomes available to the Invoice instances, so we can call the _calculate_tax_ method pretty easily:

  ```
  2.5.3 :008 > Invoice.new.calculate_tax
  "I'll return the invoice total"
  "This is the invoice tax: 500.0"
  => nil
  2.5.3 :009 >
  ```

  - **mixins:** are modules that we include in classes where they are needed. One characteristic of Ruby is that it implements the single inheritance mechanism, which means that a class can only inherit from one other class. But this is doable by using the mixins.

9. What is the difference between a **class** and a **module**
  - Ans: Modules are collections of methods and constants. They cannot generate instances. Classes may generate instances (objects), and have per-instance state (instance variables)

10. What are your favourite tools for wriring unit tests and why?
  - Ans: My favourite tools for writing unit tests are **RSpec**, RSpec created for behavior-driven development (BDD). It is the most frequently used testing library for Ruby in production applications. 

11. What is **Assets Pipeline?** 
  - Ans: Asset Pipeline provides a framework to concatenate and minify or compress JavaScript and CSS assets.
12. How would you create **getter** and **setter** methods in Ruby?
  - Ans: Ruby provides **getter** and **setter** methods to ease to access the variables of the class. Getter methods are used to get the data from the variables of the classes and whereas setter methods are used to set the data of the variables of the classes. They can both be used for both instance and class variables.
  ```
  class CSWebsite
  
    # Constructor to initialize
    # the class with a name
    # instance variable
    def initialize(website)
      @website = website
    end
    
    # Classical get method
    def website
      @website
    end
  end
    
  # Creating an object of the class
  gfg = CSWebsite.new "www.geeksforgeeks.org"
  puts gfg.website
  Output :

  www.geeksforgeeks.org
  ```