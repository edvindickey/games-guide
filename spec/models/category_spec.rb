require 'rails_helper'

RSpec.describe Category, type: :model do
  context "association" do
    it { should have_and_belong_to_many(:guides) }
  end
end
