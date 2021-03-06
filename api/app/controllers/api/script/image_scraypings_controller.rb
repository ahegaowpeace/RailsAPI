module Api
  module Script
    class ImageScraypingsController < ActionController::API
      def update
        p params['arguments']['argument1']
      end
    end
  end
end
