require 'rails_helper'

RSpec.describe Guide, type: :model do
  let!(:user){
    create(:user)
  }

  subject{
     build(:guide)
  }

  context "validation" do

    it { should validate_presence_of(:title) }

    it { should validate_presence_of(:hero) }

    it { should validate_presence_of(:text) }

    #it { should validate_presence_of(:pictures) }

  #  it "is valid with valid attributes" do
  #    expect(subject).to be_valid
  #  end

    it "should not be valid without title" do
       subject.title = nil
       expect(subject).to_not be_valid
    end

    it "should not be valid without hero" do
       subject.hero = nil
       expect(subject).to_not be_valid
    end

    it "should not be valid without text" do
      subject.text = nil
      expect(subject).to_not be_valid
    end
  end

  context "association" do
    it { should belong_to(:user) }

    #it { should have_many(:objects).dependent(:destroy)}
    #polymorphic
  end
end
