require 'spec_helper'

describe Product do
  it "Has a valid factory" do
    FactoryGirl.create(:product).should be_valid
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
