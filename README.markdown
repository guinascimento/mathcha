## Matcha

Mathcha is a horribly-named, arithmetic-based, text-driven captcha. Why you ask? For very few good reasons:

* I had never written a plugin.
* I wanted to play with a few bits of technology I hadn't touched: 
  * git
  * github
  * gemcutter, gem packaging, jeweler
* I really like Recaptcha it's just that I've seen a few folk using simple math problems; I prefer it.
* I need this functionality across a few applications I've been working on.

## Note

This thing is nascent, fledgling, and was produced in a matter of hours. I haven't thoroughly tested it yet
so don't put too much faith in it. Please feel free to fork and dress up. I plan on staying on top of this 
over the next few weeks and getting something put together that I'm happy to push on my peers.

## Installation

First, install the gem:

`sudo gem install mathcha`
  
Next, modify your config/environment.rb to reference the mathcha gem: 

`config.gem "mathcha", :source => "http://gemcutter.org"`

## Usage

In your view (this will dump the proper input and a hidden key field)

`<%= mathcha_tag %>`

In your controller

`def some_action
  if (verify_mathcha(params))
    do_something
  end
end`

Copyright (c) 2009 Cory Wilkerson, released under the MIT license
