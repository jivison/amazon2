class Product < ApplicationRecord

    has_many :reviews

    validates(:title, presence: true, uniqueness: true)
    validates(:price, numericality: { greater_than: 0 })
    validates(:description, presence: true, length: { minimum: 10 })

    before_validation :default_price, :capitalize_product_name

    private
    def default_price
        self.price ||= 1
    end

    def capitalize_product_name
        self.title.capitalize!
    end

end
