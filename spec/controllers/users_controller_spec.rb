require 'spec_helper'

describe UsersController do

  describe "GET 'name:string'" do
    it "returns http success" do
      get 'name:string'
      response.should be_success
    end
  end

  describe "GET 'country:string'" do
    it "returns http success" do
      get 'country:string'
      response.should be_success
    end
  end

  describe "GET 'religion:string'" do
    it "returns http success" do
      get 'religion:string'
      response.should be_success
    end
  end

  describe "GET 'email:string'" do
    it "returns http success" do
      get 'email:string'
      response.should be_success
    end
  end

end
