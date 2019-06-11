
require 'rails_helper'

 describe 'routing' do

  it 'routes to #index' do
   expect(get: '/comments').to route_to('comments#index')
  end

  it 'routes to #show' do
   expect(get: '/comments/1').to route_to('comments#show', id: '1')
  end

  it 'routes to #new' do
   expect(get: '/comments/new').to route_to('comments#new')
  end

  it 'routes to #update via PUT' do
   expect(put: '/comments/1').to route_to('comments#update', id: '1')
  end

  it 'routes to #update via PATCH' do
   expect(patch: '/comments/1').to route_to('comments#update', id: '1')
  end
  it "routes /comments to comments#create" do
    expect(post: "/comments").to route_to(
      controller: "comments",
      action: "create"
    )
  end
end
