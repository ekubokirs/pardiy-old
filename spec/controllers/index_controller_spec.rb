require 'spec_helper'

describe IndexController do

  describe "GET 'session'" do
    it "returns http success" do
      get 'session'
      response.should be_success
    end
  end

  describe "GET 'site'" do
    it "returns http success" do
      get 'site'
      response.should be_success
    end
  end

end
