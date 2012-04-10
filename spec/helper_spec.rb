require File.dirname(__FILE__) + '/spec_helper'
describe Helper do
  before(:each) do
    @view = mock(:ActionView)
    @request = mock(:ActionRequest)
    @view.extend(Helper)
    @view.stub!(:request).and_return(@request)
    @request.stub!(:user_agent)
  end

  def ua(str)
    @request.stub!(:user_agent).and_return(str)
  end
  
  it "will recognize Internet Explorer 9.0" do
    ua "Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 7.1; Trident/5.0)"
    @request.should_receive(:user_agent)
    @view.is_ie
  end
end
  