require 'spec_helper'

describe OrderItem do
  it "Has a valid factory" do
    FactoryGirl.build(:order_item).should be_valid
  end
  it "Empty quantity is not valid" do
    FactoryGirl.build(:order_item, :quantity => nil).should_not be_valid
  end
  it "Empty price is not valid" do
    FactoryGirl.build(:order_item, :price => nil).should_not be_valid
  end
  describe "#update_order_total" do
    context "order_item is linked to an existing order" do
      it "calls order#update_total" do
        order_item = FactoryGirl.build(:order_item)
        order = order_item.order
        order.should_receive(:update_total)
        order_item.update_order_total
      end
    end
    context "order_item is not linked to an existing order" do
      it "does not error" do
        order_item = FactoryGirl.build(:order_item, :order => nil)
        lambda {order_item.update_order_total}.should_not raise_error
      end
    end
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
