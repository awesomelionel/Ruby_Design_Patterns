$LOAD_PATH << File.dirname(__FILE__)
require 'SimpleObserver_example'
require 'SimpleObserver_test'

lionel = Employee.new('Lino', 'Programmer', 1000)
observer = TestObserver.new

lionel.add_observer(observer)

#Now we increase the salary
lionel.salary = 2000

#The observers should be notified automagically
