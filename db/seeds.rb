# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#

stores = Store.create([
    {
        name: "Costco",
        image_url: "https://logos-world.net/wp-content/uploads/2020/11/Costco-Wholesale-Emblem.png"
    },
    {
        name: "King Soopers",
        image_url: "https://cdn.freebiesupply.com/logos/large/2x/king-soopers-logo-png-transparent.png"
    }
])


items = Item.create([
    {
        name: "Breakfast Sammies",
        quantity: 2,
        store: stores.first
    },
    {
        name: "Eggs",
        quantity: 1,
        store: stores.first
    },
])