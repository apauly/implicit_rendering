# frozen_string_literal: true

RSpec.describe PostsController do

  render_views

  context 'POST #create' do
    it 'prefers existing templates' do
      post :create
      expect(controller.action_before_implicit_render).to eq nil
      expect(response.body).to include 'Hello from posts/new!'
    end
  end

end
