require 'rails_helper'

 describe 'routing' do
  it 'routes to #index' do
   expect(get: '/search/index').to route_to('search#index')
  end
end
