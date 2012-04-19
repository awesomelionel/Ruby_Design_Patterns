# This is the concrete observer
class TestObserver
	attr_reader :subjects

	def initialize
		@subjects = []
	end

	def update(subject)
		@subjects << subject
	end
end
