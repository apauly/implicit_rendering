# frozen_string_literal: true

RSpec.describe UsersController do

  render_views

  context 'GET #new' do
    it 'renders custom partial' do
      get :new
      expect(response.body).to include 'Hello from _form.html.erb'
    end
  end

  context 'GET #edit' do
    it 'renders custom partial' do
      get :edit, params: { id: 5 }
      expect(response.body).to include 'Hello from _form.html.erb'
    end
  end

  context 'GET #index' do
    it 'renders default' do
      get :index
      expect(response.body).not_to include 'Hello from _form.html.erb'
    end
  end

  context 'POST #create' do
    it 'handles explicit render calls' do
      post :create
      expect(controller.action_before_implicit_render).to eq :new
      expect(response.body).to include 'Hello from _form.html.erb'
    end
  end

end
