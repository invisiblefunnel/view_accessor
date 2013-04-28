require "spec_helper"

def base_names
  [:widgets, :category]
end

def setters
  base_names.map { |name| :"#{name}=" }
end

def controller_class
  Class.new(ActionController::Base)
end

describe ViewAccessor::Core do
  describe ".view_reader" do
    let(:controller) {
      klass = controller_class
      klass.view_reader *base_names
      klass.new
    }

    it_behaves_like "an attribute method", base_names
    it_behaves_like "a helper method", base_names
    it_behaves_like "a hidden action", base_names
  end

  describe ".view_writer" do
    let(:controller) {
      klass = controller_class
      klass.view_writer *base_names
      klass.new
    }

    it_behaves_like "an attribute method", setters
    it_behaves_like "a helper method", setters
    it_behaves_like "a hidden action", setters
  end

  describe ".view_accessor" do
    let(:controller) {
      klass = controller_class
      klass.view_accessor *base_names
      klass.new
    }

    it_behaves_like "an attribute method", base_names + setters
    it_behaves_like "a helper method", base_names + setters
    it_behaves_like "a hidden action", base_names + setters
  end
end
