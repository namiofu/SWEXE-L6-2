class Product < ApplicationRecord
    has_one :cartitem, dependent: :destroy
    has_one :cartitem_cart, source: :cart, through: :cartitem
end
