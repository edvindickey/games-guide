
require 'rails_helper'

 describe 'routing' do

  it 'routes to #index' do
   expect(get: '/guides').to route_to('guides#index')
  end

  it 'routes to #show' do
   expect(get: '/guides/1').to route_to('guides#show', id: '1')
  end

  it 'routes to #new' do
   expect(get: '/guides/new').to route_to('guides#new')
  end

  it 'routes to #update via PUT' do
   expect(put: '/guides/1').to route_to('guides#update', id: '1')
  end

  it 'routes to #update via PATCH' do
   expect(patch: '/guides/1').to route_to('guides#update', id: '1')
  end
  it "routes /guides to guides#create" do
    expect(post: "/guides").to route_to(
      controller: "guides",
      action: "create"
    )
  end
end
