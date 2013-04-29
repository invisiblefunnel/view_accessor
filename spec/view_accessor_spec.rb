require "spec_helper"

describe ViewAccessor::Core do
  def controller_class
    Class.new(ActionController::Base)
  end

  let(:base_names) { [:widgets, :category] }
  let(:setters) { base_names.map { |name| :"#{name}=" } }

  describe ".view_reader" do
    let(:names) { base_names }
    let(:controller) {
      klass = controller_class
      klass.view_reader *base_names
      klass.new
    }

    it_behaves_like "an attribute method"
    it_behaves_like "a helper method"
    it_behaves_like "a hidden action"
  end

  describe ".view_writer" do
    let(:names) { setters }
    let(:controller) {
      klass = controller_class
      klass.view_writer *base_names
      klass.new
    }

    it_behaves_like "an attribute method"
    it_behaves_like "a helper method"
    it_behaves_like "a hidden action"
  end

  describe ".view_accessor" do
    let(:names) { base_names + setters }
    let(:controller) {
      klass = controller_class
      klass.view_accessor *base_names
      klass.new
    }

    it_behaves_like "an attribute method"
    it_behaves_like "a helper method"
    it_behaves_like "a hidden action"
  end
end
