require_relative 'lib/name_generator'

generator = NameGenerator.new

if ARGV.empty?
  puts generator.generate
else
  names_count = ARGV[0].to_i
  raise Exception unless names_count.is_a? Fixnum
  names_count.times do
    puts generator.generate
  end
end
