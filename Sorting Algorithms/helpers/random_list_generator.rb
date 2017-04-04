module RandomListGenerator

  class << self
    def random_numbers_list(size = 10)
      list = []
      size.times { list << rand }
      list
    end

    def random_strings_list(size = 10, length = 8)
      list = []
      size.times { list << random_string(length) }
      list
    end

    private

    def random_string(length = 8)
      (1..length).inject("") { |memo, n| memo << (rand(93) + 33) }
    end
  end

end
