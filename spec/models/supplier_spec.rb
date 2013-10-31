require 'spec_helper'

describe Supplier do
  it "Has a valid factory" do
    FactoryGirl.create(:supplier).should be_valid
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
