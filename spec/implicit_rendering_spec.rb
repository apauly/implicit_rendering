# frozen_string_literal: true

RSpec.describe ImplicitRendering do

  context 'VERSION' do
    it 'has a version number' do
      expect(ImplicitRendering::VERSION).to be_present
    end
  end

  context 'UsersController' do
    it 'has options defined' do
      expect(UsersController.implicit_render_formats).to eq [:html]
      expect(UsersController.implicit_render_mapping).to include(
        'new' => '_form',
        'edit' => '_form'
      )
    end
  end

  context 'ChildController' do
    it 'has options defined' do
      expect(ChildController.implicit_render_formats).to eq [:html]
      expect(ChildController.implicit_render_mapping).to include(
        'new' => '_form',
        'edit' => '_form'
      )
    end
  end

end
