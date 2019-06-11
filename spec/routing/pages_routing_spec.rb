require 'rails_helper'

 describe 'routing' do
  it 'routes to #index' do
   expect(get: '/pages').to route_to('pages#index')
  end
end
