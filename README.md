# ViewAccessor

_This repo is an experiment and strays from the standard Rails way._

An alternative method of sharing state between Rails controllers and views. This library is directly inspired [this example](https://gist.github.com/Odaeus/5238423) written by Andrew France. The tests are inspired by [decent_exposure](https://github.com/voxdolo/decent_exposure).

## Install

```ruby
gem 'view_accessor', github: 'invisiblefunnel/view_accessor'
```

## Usage

```ruby
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
