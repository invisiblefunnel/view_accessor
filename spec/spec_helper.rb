ENV["RAILS_ENV"] ||= "test"
$:.push '../lib'

require "view_accessor"

RSpec.configure do |config|
  config.order = "random"
  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

shared_examples "an attribute method" do |names|
  it "defines a method with a given name" do
    names.each do |name|
      expect(controller).to respond_to(name)
    end
  end
end

shared_examples "a helper method" do |names|
  it "exposes the method to the view layer" do
    names.each do |name|
      expect(controller._helper_methods).to include(name)
    end
  end
end

shared_examples "a hidden action" do |names|
  it "prevents the method from being routed to" do
    names.each do |name|
      expect(controller.hidden_actions).to include(name.to_s)
    end
  end
end
