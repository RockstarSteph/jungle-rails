# Jungle

A mini e-commerce application built with Rails 4.2. Users can view all products, select single product, give reviews, rate products and delete their own reviews. Cart checkout and order confirmation also implemented.


## Setup to clone

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots
!(/screenshots/homepage.png "Homepage with all products") 
!(/screenshots/product_page.png) "Single product with all reviews + review form with rating"
!(/screenshots/cart.png) "Cart checkout"
!(/screenshots/order_confirmation) "Order confirmation"
