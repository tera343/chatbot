# encoding: utf-8
require './unmo.rb'
require './responder.rb'
require './dictionary.rb'

def prompt(unmo)
	return ("#{unmo.name}:#{unmo.responder_name}>")
end

puts ("Unmo System prototype : akari")
akari = Unmo.new("akari")
while true
	print(">")
	input = gets
	input.chomp!
	break if input == ""

	response = akari.dialogue(input)
	puts("#{prompt(akari)}#{response}")
end