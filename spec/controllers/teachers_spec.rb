# frozen_string_literal: true

require 'rails_helper'

RSpec.describe TeachersController, type: :controller do
  describe 'GET #index' do
    before { get :index }

    context 'requiered output per page' do
      it 'render to index template teacher control' do
        is_expected.to render_template :index
      end
    end
  end
end
