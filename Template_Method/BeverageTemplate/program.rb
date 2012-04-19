
$LOAD_PATH << File.dirname(__FILE__)
require 'Coffee'
require 'Tea'

tea = Tea.new
coffee = Coffee.new

tea.description
tea.makeBeverage
coffee.description
coffee.makeBeverage
