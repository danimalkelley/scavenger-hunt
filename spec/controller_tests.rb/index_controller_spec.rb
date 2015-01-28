require 'spec_helper'

describe "index controller"  do
  describe "GET /" do
    it "renders a successful status" do
      get '/'
      expect(last_response.status).to eq(200)
    end

    it "response includes Hello World " do
      get '/'
      expect(last_response.body).to include("Hello World")
    end

  end

end
