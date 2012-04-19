# The basics of an observer pattern is that you want to keep a list of
# known observers. Observers can register themselves with a subject, 
# that when there are any changes to the subject, all observers will
# be notified.
#
# This is a simple example that uses an Employee as the Subject and 
# the payroll as the observer.
#

# So because there's no multiple inheritance in Ruby, we use Modules instead
# They're like classes, but you can't exactly instantiate them.
# This allows a class to "extend" a certain module so that it can
# inherit some other class.

module Subject
	# There are 4 basic parts of the subject
	# 1. Init
	# 2. Add
	# 3. Remove
	# 4. Notify all
  def initialize
    @observers=[]
  end

  def add_observer(observer)
    @observers << observer
  end

  def delete_observer(observer)
    @observers.delete(observer)
  end

  def notify_observers
    @observers.each do |observer|
      observer.update(self)
    end
  end
end

class Employee 
	# We use the include keyword here to add a module
  include Subject

  attr_reader :name, :address
  attr_reader :salary

  def initialize( name, title, salary)
   # The super key word here is used to init the method
   # in the superclass with no arguements
   super()
   @name = name
   @title = title
   @salary = salary
  end

  def salary=(new_salary)
    @salary = new_salary
    notify_observers
  end
end

