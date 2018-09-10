require 'httparty'
require 'nokogiri'
require 'pry'

class Scraper
    attr_accessor :url, :css_selector
    attr_reader :selected_content
    def initialize(url, css_selector='')
        @url = url
        @css_selector = css_selector
    end

    def get_page
        @unparsed_page = HTTParty.get(url)
    end

    def parse_page
        @parsed_page = Nokogiri::HTML(get_page)
        @selected_content = @parsed_page.css(css_selector) if css_selector.length > 0
    end


end