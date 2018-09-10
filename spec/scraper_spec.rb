require '../Scraper.rb'

describe Scraper do
    let(:scraper){Scraper.new('https://google.com')}
    it 'should be able to take in a url' do
        expect(scraper.url).to be_a(String)
    end
    it 'should be able to take an optional css_selector to search for' do
        expect(scraper.css_selector).to_not be(nil)
    end
  

    describe '#url' do
        it 'should allow me to read the current url' do 
            expect(scraper.url).to eq('https://google.com')
        end

        it 'should allow me to change the url if desired' do
            new_url = 'youtube.com'
            scraper.url = new_url
            expect(scraper.url).to eq(new_url)
        end
    end

    describe '#css_selector' do
        it 'should allow me to read the current selector being searched for' do
            expect(scraper.css_selector).to eq('')
        end
        it 'should allow me to change the current selector being searched for' do
            scraper.css_selector = 'ul > li'
            expect(scraper.css_selector).to eq('ul > li')
        end
    end

    describe '#get_page' do 
        it 'should return an unparsed page from a url' do
            expect(scraper.get_page.length).to be > 0
        end
    end

    describe '#parse_page' do 
        it 'should parse the current page using Nokogiri' do
            scraper.parse_page
            expect(scraper.selected_content.length).to be > 0
        end
    end

end