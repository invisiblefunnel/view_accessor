require "action_controller"

module ViewAccessor
  module Core
    def view_accessor(*names)
      view_reader *names
      view_writer *names
    end

    def view_reader(*names)
      attr_reader *names
      helper_method *names
      hide_action *names
    end

    def view_writer(*names)
      attr_writer *names
      helper_method *_setters(names)
      hide_action *_setters(names)
    end

    private

    def _setters(names)
      names.map { |n| :"#{n}=" }
    end
  end
end
