require 'rails_helper'

RSpec.describe 'Routes', type: :routing do
  it 'routes GET /cities to cities#index' do
    expect(get: '/cities').to route_to('cities#index')
  end
end
