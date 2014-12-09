class MatrixReader
  def initialize(file_path)
    @file # Initialize code goes here
  end

  def parse
    # Your code goes here
  end
end


require 'pry'
matrix = MatrixReader.new('infile.csv').parse
binding.pry