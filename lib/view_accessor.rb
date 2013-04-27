require "view_accessor/version"
require "view_accessor/core"

ActiveSupport.on_load(:action_controller) do
  extend ViewAccessor::Core
end
