#Source: Design Patterns in Ruby by Russ Olsen (2008)
#Note: This is a simple template pattern. 
#We have a few methods below where it has been defined (but not implemented)
#and the subclasses are allowed to implement what they do.
#The Template method is just a fancy way of saying that we want to vary
#an algorithm. We code the invariant part in the base class, and allow the sub
#classes to supply the implementation of certain methods that vary alot.

class Report
	def initialize
		@title = 'Monthly Report'
		@text = ['Things are going', 'really, really well.']
	end
	
	#This is an important method to be inherited by all sub-classes	
	def output_report
		output_start
		output_head
		output_body_start
		output_body
		output_body_end
		output_end
	end	

	def output_body
		@text.each do |line|
			output_line(line)
		end
	end

	def output_start
		#We allow the subclasses to define this method
	end

	def output_head
		raise 'Called abstract method: output_head'
	end

	def output_body_start
		#We allow the subclasses to define this method
	end

	def output_line(line)
		raise 'Called abstract method: output_line'
	end

	def output_body_end
		#We allow the subclasses to define this method
	end

	def output_end
		#We allow the subclasses to define this method
	end
end

