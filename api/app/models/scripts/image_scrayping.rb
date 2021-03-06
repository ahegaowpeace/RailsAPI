require 'open-uri'
require 'nokogiri'
require 'fileutils'

module Scripts
  class ImageScrayping
    # rubocop:disable Security/Open
    def get_image(file_name, base_url, page_num)
      FileUtils.mkdir_p("app/models/scripts/contents/#{file_name}")

      page_num.to_i.times do |n|
        n += 1
        html = URI.open("#{base_url}#{n}").read
        doc = Nokogiri::HTML.parse(html)
        doc2 = doc.xpath('//div[@id="content"]/section[@id="image-container"]/a/img')
        img_src = doc2.attribute('src')
        download_image(file_name, n, img_src)
      end
    end
    # rubocop:enable Security/Open

    private

    # rubocop:disable Security/Open
    def download_image(file_name, page, img_src)
      sleep 1
      open("app/models/scripts/contents/#{file_name}/#{page}.jpg", 'wb') do |f|
        f.puts URI.open(img_src).read
      end
    end
    # rubocop:enable Security/Open
  end
end
