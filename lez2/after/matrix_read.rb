class MatrixReader
  def initialize(file_path)
    @file = File.open(file_path).read
    @file.gsub!(/\r\n?/, "\n") # Normalize linefeeds
  end

  def self.parse(*args)
    new(*args).parse
  end

  def parse
    matrix = []
    @file.each_line do |line|
      cells = []
      line.each_char { |chr| cells << to_value(chr) unless chr == "\n" }
      matrix << cells
    end
    matrix
  end

  private

  def to_value(char)
    case char
    when '-'
      ''
    else
      char
    end
  end
end


require 'pry'
matrix = MatrixReader.parse('infile.csv')
binding.pry