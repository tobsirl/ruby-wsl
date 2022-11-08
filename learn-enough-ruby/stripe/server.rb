require 'stripe'
require 'sinatra'

# This is your test secret API key.
Stripe.api_key = ENV['STRIPE_API_KEY']

set :static, true
set :port, 4242

YOUR_DOMAIN = 'http://localhost:4242'

post '/create-checkout-session' do
  content_type 'application/json'

  session = Stripe::Checkout::Session.create({
    line_items: [{
      # Provide the exact Price ID (e.g. pr_1234) of the product you want to sell
      price: 'price_1M1dzYIlNg1CJV3j4pkaZkh3',
      quantity: 1,
    }],
    mode: 'payment',
    success_url: YOUR_DOMAIN + '/success.html',
    cancel_url: YOUR_DOMAIN + '/cancel.html',
  })
  redirect session.url, 303
end