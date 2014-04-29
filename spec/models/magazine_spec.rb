require 'spec_helper'


describe Magazine do
  before { @magazine = Magazine.new(name: "Example Magazine", issue: 1) }

  subject { @magazine }

  it { should respond_to(:name) }
  it { should respond_to(:issue) }
  
  it { should be_valid }

  describe "when name is not present" do
    before { @magazine.name = " " }
    it { should_not be_valid }
  end
  
  describe "when issue is not present" do
    before { @magazine.issue = " " }
    it { should_not be_valid }
  end
end
