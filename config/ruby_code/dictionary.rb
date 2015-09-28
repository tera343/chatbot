# encoding: utf-8
class Dictionary
	def initialize
		@random = []
		#open("dictionary/random.txt") do |file|
		open("config/ruby_code/dictionary/random.txt") do |file|
			file.each do |line|
				line.chomp!
				next if line.empty?
				@random << line
			end
		end

		@pattern = []
		#open("dictionary/pattern.txt") do |file|
		open("config/ruby_code/dictionary/pattern.txt") do |file|
			file.each do |line|
				pattern, phrases = line.chomp.split("\t")
				next if pattern.nil? or phrases.nil?
				@pattern << {"pattern" =>pattern, "phrases"=>phrases}
			end
		end
	end

	def study(input)
		return if @random.include?(input)
		@random << input
	end

	def save
		#open("dictionary/random.txt","w") do |file|
		open("config/ruby_code/dictionary/random.txt","w") do |file|
			file.puts(@random)
		end
	end
	
	attr_reader :random, :pattern
end