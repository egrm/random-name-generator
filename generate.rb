require_relative 'lib/name_generator'

generator = NameGenerator.new

if ARGV.empty?
  puts generator.generate
else
  names_amount = ARGV[0].to_i
  raise "Amount of names should be a positive number" unless (names_amount > 0)
  names_amount.times do
    puts generator.generate
  end
end
