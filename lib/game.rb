#!/usr/bin/env ruby
require_relative 'init'
run = true
puts 'Welcome to Being Lucky!'
while (run)
  puts '----------------------------------'
  puts 'How many dice are you rolling? [5]'
  dice = gets.to_i
  dice = 5 if dice < 1
  being_lucky = BeingLucky.new(dice)
  puts '----------------------------------'
  puts "You rolled: #{being_lucky.result}"
  puts "Your score is: #{being_lucky.score}"
  puts '----------------------------------'
  puts "Roll again? (Y/n) ?"
  again = gets
  if again.include?('N') || again.include?('n')
    run = false
  end
end
