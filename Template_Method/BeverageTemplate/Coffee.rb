require 'CaffeineBeverage'

class Coffee < CaffeineBeverage
	def initialize
		@type = "Coffee"
	end

	def description
		puts("I am a #{@type} beverage")
	end

	def brew
		puts('Dripping Coffee through filter')	
	end

	def addCondiments
		puts('Adding Sugar and Milk')
	end
end
