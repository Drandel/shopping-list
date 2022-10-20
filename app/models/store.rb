class Store < ApplicationRecord
    has_many :items

    before_create :slugify

    def slugify
        self.slug = name.parameterize
    end

    def total_items
        items.count
    end

end
