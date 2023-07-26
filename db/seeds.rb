require 'faker'

20.times do
  user = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.email
  )

  2.times do
    Address.create!(
      line1: Faker::Address.street_address,
      city: Faker::Address.city,
      zipcode: Faker::Address.zip_code,
      addressable: user
    )
  end
end

30.times do
  Product.create!(
    label: Faker::Commerce.product_name,
    price: Faker::Commerce.price
  )
end

10.times do
  order = Order.create!(
    status: ["being process", "in transit", "delivered"].sample,
    reference: Faker::Invoice.reference,
    products: Product.order('RANDOM()').limit(rand(1..5)),
  )

  Address.create!(
    line1: Faker::Address.street_address,
    city: Faker::Address.city,
    zipcode: Faker::Address.zip_code,
    addressable: order
  )
end
