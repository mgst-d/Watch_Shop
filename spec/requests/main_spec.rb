require 'rails_helper'

RSpec.describe "Mains", type: :request do
  describe "GET /index" do
    #pending "add some examples (or delete) #{__FILE__}"
    before { get root_path }
    
    context 'required output per page' do
      it 'render to index template' do
        is_expected.to render_template :index
      end
    end
  end
end
