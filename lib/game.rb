#!/usr/bin/env ruby
require_relative 'being_lucky'
require 'forwardable'
require_relative 'game/die'
require_relative 'game/roll'
require_relative 'game/calculator'

run = true
while (run)
  puts 'How many dice are you rolling?'
  dice = gets.to_i
  puts "Your score is: #{BeingLucky.new(dice).score}"
  puts "Roll again? (Y/n) ?"
  again = gets
  if again.include?('N') || again.include?('n')
    run = false
  end
end
