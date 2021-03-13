require 'open3'

module Api
  module Script
    class ImageScraypingsController < ActionController::API
      def update
        target_image_params
        ims = Scripts::ImageScrayping.new
        ims.get_image(@file_name, @base_url, @page_num) # ステータスからは基本エラー判別難しそう
      end

      private

      def target_image_params
        @file_name = params['arguments']['file_name']
        @base_url = params['arguments']['base_url']
        @page_num = params['arguments']['page_num']
      end
    end
  end
end
