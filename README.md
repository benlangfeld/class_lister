class_lister
===========

Lists all classes under a given module.

Install
-------

    gem install class_lister

Examples
--------

```ruby
  require 'class_lister'

  module Foo
    VERSION = 2
    class Bar; end
    class Baz; end
  end

  ClassLister.list Foo
  # => [Foo::Bar, Foo::Baz]
```

Author
------

Original author: Ben Langfeld

Links
-----
* [Source](https://github.com/benlangfeld/class_lister)
* [Documentation](http://rdoc.info/github/benlangfeld/class_lister/master/frames)
* [Bug Tracker](https://github.com/benlangfeld/class_lister/issues)

Note on Patches/Pull Requests
-----------------------------

* Fork the project.
* Make your feature addition or bug fix.
* Add tests for it. This is important so I don't break it in a future version unintentionally.
* Commit, do not mess with rakefile, version, or history.
  * If you want to have your own version, that is fine but bump version in a commit by itself so I can ignore when I pull
* Send me a pull request. Bonus points for topic branches.

Copyright
---------

Copyright (c) 2012 Ben Langfeld. MIT licence (see LICENSE for details).
