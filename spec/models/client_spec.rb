# spec/models/client_spec.rb
require 'spec_helper'

describe Client do

  it "Has a valid factory" do
    FactoryGirl.create(:client).should be_valid
  end
  it "is invalid without a name" do
    FactoryGirl.build(:client, :name => nil).should_not be_valid
  end
  it "is invalid without an address" do
    FactoryGirl.build(:client, :address => nil).should_not be_valid
  end
  it "is invalid without a RFC" do
    FactoryGirl.build(:client, :rfc => nil).should_not be_valid
  end
  it "is invalid without a phone" do
    FactoryGirl.build(:client, :phone => nil).should_not be_valid
  end
  it "is invalid without a zip code" do
    FactoryGirl.build(:client, :zip_code => nil).should_not be_valid
  end


end
