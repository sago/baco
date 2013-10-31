require 'spec_helper'

describe Order do
  it "Has a valid factory" do
    FactoryGirl.create(:order).should be_valid
  end
  describe "#update_total" do
    context "An order has been created" do

      let(:order_item) { mock('OrderItem', :order_id => @order.id,
                                           :price => 10.00,
                                           :quantity =>3
      ) }

      it "Set the total with the new order_items" do
        @order = FactoryGirl.create(:order, :total => 0)
        @order.stub(:order_items).and_return([order_item])
        @order.total.to_i.should == 0
        @order.update_total
        @order.total.should == 30.00
      end

    end
  end
  #pending "add some examples to (or delete) #{__FILE__}"
end
