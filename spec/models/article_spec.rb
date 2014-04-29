require 'spec_helper'

describe Article do

  before { @article = Article.new(author: "Nathan Moeller", email: "ndmoeller@wisc.com", content: "Sample article content. More content to go here" ) }

  subject { @article }

  it { should respond_to(:author) }
  it { should respond_to(:email) }
  it { should respond_to(:content) }
  
  describe "when author is not present" do
    before { @article.author = " " }
    it { should_not be_valid }
  end
end
