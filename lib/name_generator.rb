class NameGenerator
  def generate
    generate_name
  end

  private

  def generate_syllable
    consonants = %w{ b c d f g h j k l m n p q r s t v w x y z }
    vowels = %w{ a o e u i }

    letters = []
    letters << consonants.sample
    letters << vowels.sample
    letters << consonants.sample if rand < 0.2
    letters.join
  end

  def generate_string
    syllables = []

    10.times do
      syllables << generate_syllable
    end

    syllables.shuffle.join
  end

  def generate_name
    string = generate_string
    random_start = rand(3)
    random_end = rand(random_start + 3..10)
    string[random_start..random_end].capitalize
  end
end
