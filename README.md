auto_html 
=========

auto_html formats text, creates links and converts URLs to their HTML representation. For example, youtube URL will be 
transformed into embeded video played.

auto_html can be useful to you if you don't want to bother visitors with a rich HTML editor or markup code, but you 
still want to allow them to embed video, images, links or other rich media content on your site, by merely pasting URLs.

Check out the [live demo](http://rors.org/demos/auto_html).


Installation
------------

Add this line to your application's Gemfile:

```ruby
gem 'auto_html'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install auto_html
```


Usage
-----

```ruby
AutoHtml::Link.new.call('Hey! Checkout out my blog: http://rors.org')
=> "Hey! Checkout out my blog: <a href='http://rors.org' target='blank'>http://rors.org</a>"
```


Bundled filters
---------------

| Name              |
| ----------------- |
| Emoji             |
| Gist              |
| GoogleMap         |
| Image             |
| Instagram         |
| Link              |
| SimpleFormat      |
| Vimeo             |
| Youtube           |


MIT License
-----------

Copyright (c) 2015 Dejan Simic

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
