module Api
  module Script
    class ImageScraypingsController < ActionController::API
      def update
        p params['arguments']['argument1']
        system('bash ./lib/scripts/image-scrayping-lancher.sh')
      end
    end
  end
end
