require 'rails_helper'

RSpec.describe GuidesController, type: :controller do
  let!(:user){ build(:user, email: "test@test.com")}

  login_user

  describe 'before actions' do
    describe 'find_guide' do
      it 'is expected to define before action' do
        is_expected.to use_before_action(:find_guide)
      end
    end
  end


    context 'GET #index' do
     it 'should success and render to index page' do
        get :index
        expect(response).to have_http_status(200)
        expect(response).to render_template :index
     end
    end

    context 'GET #show' do
   let!(:guide) { create :guide, user: user }

    it 'should success and render to edit page' do
       get :show, params: { id: guide.id }
       expect(response).to have_http_status(200)
       expect(response).to render_template :show
    end
  end

  context 'GET #edit' do
 let!(:guide) { create :guide, user: user }

  it 'should success and render to edit page' do
     get :edit, params: { id: guide.id }
     expect(response).to have_http_status(200)
     expect(response).to render_template :edit
  end
end
  context 'PUT #update' do
 let!(:guide) { create :guide, user: user }

 it 'should update guide info' do
   params = {
    title: 'a',
    hero: 'b',
    text: 'c'
   }

   put :update, params: { id: guide.id, guide: params }
   guide.reload
   params.keys.each do |key|
    expect(guide.attributes[key.to_s]).to eq params[key]
   end
  end
 end

 context 'DELETE #destroy' do
 let!(:guide) { create :guide, user: user }

it 'should delete guide' do
   expect { delete :destroy, params: { id: guide.id } }.to change(Guide, :count).by(-1)
  # expect(flash[:notice]).to eq 'Product was successfully deleted.'
  end
 end

end
