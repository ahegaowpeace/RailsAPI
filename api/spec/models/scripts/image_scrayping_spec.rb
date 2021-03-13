require 'rails_helper'

RSpec.describe Scripts::ImageScrayping, type: :model do
  let(:ims) { instance_double('Scripts::ImageScrayping') }

  before do
    allow(ims).to receive(:get_image).and_return(true)
  end

  describe 'methods' do
    describe '#get_image' do
      context 'when scrayping is successed' do
        it 'is correct return' do
          expect(ims.get_image('file_name', 'base_url', 'page_num')).to eq true
        end
      end
      
      context 'when scrayping is failed' do
        it 'is correct return' do
        end
      end
    end
  end
end
