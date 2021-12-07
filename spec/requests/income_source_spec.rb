require 'rails_helper'

RSpec.describe "IncomeSources", type: :request do
  describe "GET /index" do
    it 'is expected to return http 200' do
      get '/income_sources/'
      expect(response).to have_http_status(:ok)
    end

    it 'is expected to return http 200' do
      get '/income_sources/'
      expect(response).to render_template(:index)
    end
  end
end
