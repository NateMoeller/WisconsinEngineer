require 'spec_helper'

describe Article do

  let(:user) { FactoryGirl.create(:user) }
  before { @article = user.articles.build(content: "Lorem ipsum") }
  
  subject { @article }

  it { should respond_to(:author) }
  it { should respond_to(:user_id) }
  it { should respond_to(:email) }
  it { should respond_to(:content) }
  
  describe "when user_id is not present" do
    before { @article.user_id = nil }
    it { should_not be_valid }
  end
  
  describe "with blank content" do
    before { @article.content = " " }
    it { should_not be_valid }
  end

 
end
