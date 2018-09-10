require '../TextData.rb'

describe TextData do
    file_name = './spec_test.txt'
    let(:data_file){TextData.new(file_name)}

    it 'should be able to take in a file_name to write to' do
        expect(data_file.output_file_name).to be_a(String)
    end

    describe '#write_to' do
        it 'should store the desired data inside the given file.' do
            data_file.write_to('this is a test')
            result = []

            File.open(file_name, 'r'){|file| file.each_line {|line| result << line}}
            expect(result.length).to be > 0
        end
    end

 

end