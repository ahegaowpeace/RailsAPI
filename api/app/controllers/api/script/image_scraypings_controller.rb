require 'open3'

module Api
  module Script
    class ImageScraypingsController < ActionController::API
      def update
        system("python ./lib/scripts/image.py 四葉の場合 https://nhentai.net/g/350335/1/ 38", exception: true)
        #system('bash ./lib/scripts/image-scrayping-lancher.sh')
        #kekka = `python3\.6 ./lib/scripts/image.py 四葉の場合 https://nhentai.net/g/350335/1/ 38`
        #p kekka
      end
    end
  end
end
