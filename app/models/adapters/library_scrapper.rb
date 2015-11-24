module Adapters
  class LibraryScraper

    def get_names_by_page(page_num)
      doc = Nokogiri::HTML(open("https://www.javascripting.com/?p=#{page_num}"))
      doc.css('div > h3 > a').map(&:text)
    end

    def collect_pages
      (1..50).each_with_object([]) do |i, array|
        array.push(get_names_by_page(i))
      end.flatten
    end

  end
end
