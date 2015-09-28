# encoding: utf-8
require './config/ruby_code/unmo.rb'
require './config/ruby_code/responder.rb'
require './config/ruby_code/dictionary.rb'

def prompt(unmo)
	return ("#{unmo.name}:#{unmo.responder_name}>")
end

#puts ("Unmo System prototype : akari")
#while true
def chatbot(input)
	akari = Unmo.new("akari")
	#print(">")
	#input = gets
	#input.chomp!
	#break if input == ""
	p "=============Warning!!!=============="
	puts "#{prompt(akari)}"
	p "=============Warning!!!=============="
	response = akari.dialogue(input)
	#puts("#{prompt(akari)}#{response}")
	return response
end
#end