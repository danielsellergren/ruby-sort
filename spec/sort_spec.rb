# Iterates through all Ruby files in the main project directory and 
# creates a spec to test each of them with a randomized array.
files = Dir.glob('**.rb')
files.each do |file|
  next if file.include? 'verbose'

  # Use the filename to generate human and class versions for use in spec.
  name_snake = file.chomp('.rb')
  name_human = name_snake.split('_').map{|i| i.capitalize}.join(' ')
  name_class = name_human.gsub(' ', '')

  # Require the file.
  require_relative "../#{name_snake}"

  # Create the specification.
  RSpec.describe name_human do

    # Generate a randomized array.
    before do
      @unsorted = (0..9).to_a.sort{ rand() - 0.5 }[0..9]
    end

    # Get the class from our name_class string and call its sort method.
    it 'sorts a given array' do
      sorted = Kernel.const_get(name_class).send(:sort, @unsorted)
      expect(sorted).to eq(@unsorted.sort)
    end
  end
end