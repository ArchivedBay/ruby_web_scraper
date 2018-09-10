class TextData
    attr_accessor :output_file_name
    def initialize(output_file_name)
        @output_file_name = output_file_name
    end

    def write_to(content)
        File.open(output_file_name, 'a+') { |file| puts file.write(content) }
    end
end