module Matching
  class PriceLevel

    attr :price, :orders

    def initialize(price)
      @price  = price
      @orders = []
    end

    def top
      @orders.first
    end

    def empty?
      @orders.empty?
    end

    def add(order)
      @orders << order
    end

    def remove(order)
      @orders.delete_if {|o| o.id == order.id }
    end

  end
end
