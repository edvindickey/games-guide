require 'rails_helper'

RSpec.describe ArticlesController, type: :controller do
  let!(:user){ build(:user, email: "test@test.com")}

  login_user

  describe 'before actions' do
    describe 'find_article' do
      it 'is expected to define before action' do
        is_expected.to use_before_action(:find_article)
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
   let!(:article) { create :article, user: user }

    it 'should success and render to edit page' do
       get :show, params: { id: article.id }
       expect(response).to have_http_status(200)
       expect(response).to render_template :show
    end
  end

  context 'GET #edit' do
  let!(:article) { create :article, user: user }

  it 'should success and render to edit page' do
     get :edit, params: { id: article.id }
     expect(response).to have_http_status(200)
     expect(response).to render_template :edit
  end
  end

  context 'PUT #update' do
  let!(:article) { create :article, user: user }

  it 'should update article info' do
   params = {
    title: 'a',
    body: 'c'
   }

   put :update, params: { id: article.id, article: params }
   article.reload
   params.keys.each do |key|
    expect(article.attributes[key.to_s]).to eq params[key]
   end
  end
  end

  context 'DELETE #destroy' do
  let!(:article) { create :article, user: user }

  it 'should delete article' do
   expect { delete :destroy, params: { id: article.id } }.to change(Article, :count).by(-1)
  end
  end
end
