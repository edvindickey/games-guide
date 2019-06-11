require 'rails_helper'

RSpec.describe Comment, type: :model do
    context "association" do
      it { should belong_to(:user) }
      it { should belong_to(:object) }
  end
end
