class Order < ApplicationRecord
    has_many :line_items, dependent: :destroy
    validates :subtotal, :presence => false

    def add_product(product)
        current_item = line_items.find_by(product_id: product.id)
        if current_item
            current_item.increment(:quantity)
        else 
            current_item = line_items.build(product_id: product.id)
        end
        current_item
    end
end
