# ViewAccessor

An alternative method of sharing state between Rails controllers and views. This library is directly inspired [this example](https://gist.github.com/Odaeus/5238423) written by Andrew France.

## Install

```ruby
# Gemfile
gem 'view_accessor'
```

## Usage

```ruby
# app/controllers/widgets_controller.rb
class WidgetsController < ApplicationController
  view_accessor :widgets

  def index
    self.widgets = Widget.all
  end
end
```

```erb
<div class="widgets">
  <%= render widgets %>
</div>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
