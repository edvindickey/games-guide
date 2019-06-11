require 'rails_helper'

RSpec.describe CommentsController, type: :controller do


  describe 'before actions' do
    describe 'find_comment' do
      it 'is expected to define before action' do
        is_expected.to use_before_action(:find_comment)
      end
    end
  end



#  let!(:user){ build(:user, email: "test@test.com")}


#  login_user


#  context 'POST #create' do
#   let!(:comment) {build(:comment)}

#  it 'create a new comment' do
#    params = {
#     text: 'An awesome comment',
#     object_id: 1,
#     user_id: subject.current_user.id,
#     object_type: 'Article'
#    }
#    expect { post(:create, params: { comment: params }) }.to change(Comment, :msg).by(1)
#   end
#  end

#context 'DELETE #destroy' do
#let!(:comment) { create :comment, user: user }

#it 'should delete comment' do
# expect { delete :destroy, params: { id: comment.id } }.to change(Comment, :count).by(-1)
#end
#end
end
