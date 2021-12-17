require 'rails_helper'

RSpec.describe "Mains", type: :request do
  describe "GET /index" do
    
    let(:brands) { create_list :brand, 3}
    let(:products) { create_list :product, 8}
    
    before { get root_path }
    
    context 'required output per page' do
      it 'render to index template' do
        is_expected.to render_template :index
      end
      it 'instance var brands include only brands' do
        expect(assigns(:brands)).to match_array(brands)
      end
      it 'instance var hits include only brands' do
        expect(assigns(:products)).to match_array(products)
      end
    end
  end
end
