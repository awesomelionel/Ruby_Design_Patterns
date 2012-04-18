#This class just to output plain text
load 'report.rb'

class PlainTextReport < Report

	def output_head
		puts("*** #{@title} ***")		
	end

	def output_line(line)
		puts line
	end

end

