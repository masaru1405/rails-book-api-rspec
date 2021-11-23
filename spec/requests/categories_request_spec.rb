require 'rails_helper'

RSpec.describe "Categories", type: :request do

   describe 'GET /categories' do
      #make HTTP request before each example
      before {get "/categories"}

      it 'returns categories' do
         expect(response.body).not_to be_empty
      end

      it 'returns status code 200' do
         expect(response).to have_http_status(:ok)
      end
   end

   describe 'POST /categories' do
      let(:valid_name) {{name: 'Horror'}}
      before {post '/categories', params: valid_name, as: :json}

      context 'when the request is valid' do
         it 'create a category' do
            data = JSON.parse(response.body)
            expect(data['name']).to eq('Horror')
         end

         it 'return status code 201' do
            expect(response).to have_http_status(:created)
         end

      end

   end
end
