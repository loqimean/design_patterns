require_relative "subscription"
require_relative "subscription_decorator"

subscription = Subscription.new("Pro Plan")

subscription_decorator = SubscriptionDecorator.new(subscription)

puts subscription_decorator.active?
puts subscription_decorator.title
puts subscription_decorator.activated_at

sleep 2

subscription_decorator.renew!

puts "Renewed subscription time is:"
puts subscription_decorator.activated_at
