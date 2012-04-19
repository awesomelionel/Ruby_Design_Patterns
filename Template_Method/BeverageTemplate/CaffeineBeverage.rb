#This class is supposed to be an "abstract" class, but since there's no such thing in Ruby
#I'll just make this the base class

class CaffeineBeverage
	def initialize
		@title = "This is a Beverage"
	end

	def makeBeverage
		boilwater
		brew
		pourInCup
		addCondiments
	end

	def boilwater
		#All CaffeineBeverages need to have hot water unless the 
		#subclass says otherwise
		puts('Boiling Water')
	end

	def brew
		#We'll let the subclass implement this
	end

	def pourInCup
		puts('Pour in Cup')
	end

	def addCondiments
		#We'll let the subclass implement this	
	end
end
