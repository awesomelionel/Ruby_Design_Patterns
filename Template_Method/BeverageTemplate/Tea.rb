require 'CaffeineBeverage'

class Tea < CaffeineBeverage
	attr_reader :title, :type
	def initialize
		#@title is the super class attribute
		@type = "Tea"
	end

	def description
		puts("I am a #{@type} beverage")
	end

	def brew
		puts('Steeping the tea')	
	end

	def addCondiments
		puts('Adding Lemon')
	end
end
