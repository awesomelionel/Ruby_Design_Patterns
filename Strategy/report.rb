#The nitty gritty way Ruby implements the Strategy is instead of 
#using base classes for a certain strategy and subclassing the base class,
#since it is dynamically typed, ruby uses Proc and lamda.
#
#Sample Proc
#hello = lambda do
# 	puts('Hello')
# 	puts('I am inside a proc')
#end
#
#by running:
#hello.call 
#we get "Hello"
# 		"I am inside a proc"
#
#multiply = lambda {|x,y| x*y}
#=> #<Proc:0x0000010182d7d0@(irb):2 (lambda)> 
#ruby-1.9.2-p180 :003 > multiply.call(2,3)
#=> 6 

class Report
	attr_reader :title, :text 
	attr_accessor :formatter

	#the init is expecting a chunk of code "&"
	def initialize(&formatter) 
		@title = 'Monthly Report' 
		@text = [ 'Things are going', 'really, really well.' ] 
		@formatter = formatter
	end

	def output_report
		@formatter.call( self )
	end
end

HTML_FORMATTER = lambda do |context|
  puts('<html>')
  puts('  <head>')
  puts("    <title>#{context.title}</title>")
  puts('  </head>')
  puts('  <body>')
  context.text.each do |line|
    puts("    <p>#{line}</p>" )
  end
  puts('  </body>')
  puts('</html>')
end


PLAIN_FORMATTER = lambda do |context|
  puts("***** #{context.title} *****")
  context.text.each do |line|
    puts(line)
  end
end


