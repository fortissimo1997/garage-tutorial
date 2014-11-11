require 'rails_helper'

RSpec.describe 'posts', type: :request do
  include RequestHelper

  let(:post_structure) do
    {
     'id' => a_kind_of(Integer),
     'title' => a_kind_of(String),
     'body' => a_kind_of(String).or(a_nil_value),
     'published_at' => a_kind_of(String).or(a_nil_value)
    }
  end

  describe 'GET /v1/posts/:post_id' do
    let!(:post) { create(:post, user: resource_owner) }

    it 'returns post resource' do
      get "/v1/posts/#{post.id}", params, env
      expect(response).to have_http_status(200)
      expect(JSON(response.body)).to match(post_structure)
    end
  end
end
